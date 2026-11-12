#!/usr/bin/env node
import { spawn } from 'node:child_process';
import net from 'node:net';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import { Tunnel } from 'cloudflared';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const targetPort = 5173;
const targetUrl = `http://localhost:${targetPort}`;

function checkPortOpen(port, host = '127.0.0.1', timeout = 1000) {
  return new Promise((resolve) => {
    const socket = new net.Socket();
    socket.setTimeout(timeout);
    socket.once('connect', () => {
      socket.destroy();
      resolve(true);
    });
    socket.once('timeout', () => {
      socket.destroy();
      resolve(false);
    });
    socket.once('error', () => {
      socket.destroy();
      resolve(false);
    });
    socket.connect(port, host);
  });
}

async function waitForPort(port, maxAttempts = 30, intervalMs = 500) {
  for (let i = 0; i < maxAttempts; i++) {
    if (await checkPortOpen(port)) return true;
    await new Promise((r) => setTimeout(r, intervalMs));
  }
  return false;
}

async function main() {
  console.log('[dev:tunnel] Iniciando servidor e cliente de desenvolvimento (pnpm dev)...');

  const isWindows = process.platform === 'win32';
  const devProcess = spawn(
    isWindows ? 'pnpm.cmd' : 'pnpm',
    ['dev'],
    {
      stdio: 'inherit',
      shell: false,
    }
  );

  devProcess.on('error', (err) => {
    console.error('[dev:tunnel] Erro ao iniciar pnpm dev:', err);
  });

  const ready = await waitForPort(targetPort);
  if (ready) {
    console.log(`\n[dev:tunnel] Servidor detectado na porta ${targetPort}! Abrindo Cloudflare Tunnel...`);
  } else {
    console.warn(`\n[dev:tunnel] Servidor ainda iniciando... Abrindo Cloudflare Tunnel mesmo assim.`);
  }

  const tunnel = Tunnel.quick(targetUrl);
  let urlLogged = false;

  tunnel.on('url', (publicUrl) => {
    if (urlLogged) return;
    urlLogged = true;

    console.log('');
    console.log('='.repeat(74));
    console.log(' 🚀 CLOUDFLARE QUICK TUNNEL ATIVO (try.cloudflare.com)');
    console.log('='.repeat(74));
    console.log(' Compartilhe o link abaixo com seus amigos para jogarem juntos:');
    console.log('');
    console.log(` 👉 \x1b[32m\x1b[1m${publicUrl}\x1b[0m 👈`);
    console.log('');
    console.log(` 📡 Encaminhando para: ${targetUrl}`);
    console.log(` 👥 Qualquer pessoa com o link acima pode entrar e jogar no seu lobby.`);
    console.log(' Pressione Ctrl+C para encerrar tudo.');
    console.log('='.repeat(74));
    console.log('');
  });

  tunnel.on('error', (err) => {
    console.error('[dev:tunnel] Erro no Cloudflare Tunnel:', err);
  });

  const cleanup = () => {
    console.log('\n[dev:tunnel] Encerrando túnel e processos...');
    tunnel.stop();
    if (devProcess && !devProcess.killed) {
      devProcess.kill('SIGINT');
    }
  };

  process.on('SIGINT', cleanup);
  process.on('SIGTERM', cleanup);

  devProcess.on('close', (code) => {
    console.log(`[dev:tunnel] Processo dev finalizado com código ${code}.`);
    tunnel.stop();
    process.exit(code ?? 0);
  });
}

main().catch((err) => {
  console.error('[dev:tunnel] Falha fatal:', err);
  process.exit(1);
});
