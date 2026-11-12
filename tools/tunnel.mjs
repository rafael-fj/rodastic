#!/usr/bin/env node
import net from 'node:net';
import { Tunnel } from 'cloudflared';

const targetPort = Number(process.env.TUNNEL_PORT || process.argv[2]) || 5173;
const targetUrl = `http://localhost:${targetPort}`;

function checkPortOpen(port, host = '127.0.0.1', timeout = 1200) {
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

async function main() {
  console.log(`[tunnel] Conectando Cloudflare Quick Tunnel para ${targetUrl}...`);

  const isOpen = await checkPortOpen(targetPort);
  if (!isOpen) {
    console.warn(`[tunnel] AVISO: A porta ${targetPort} ainda não parece estar aberta.`);
    console.warn(`[tunnel] Dica: Certifique-se de iniciar o jogo ('pnpm dev' ou 'pnpm start') para que as pessoas possam acessar.`);
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
    console.log(` 📡 Encaminhando para o servidor local: ${targetUrl}`);
    console.log(` 🎮 O jogo online (WebSocket + Frontend) sincronizará automaticamente.`);
    console.log(' Pressione Ctrl+C para encerrar o túnel.');
    console.log('='.repeat(74));
    console.log('');
  });

  tunnel.on('error', (err) => {
    console.error('[tunnel] Erro no Cloudflare Tunnel:', err);
  });

  tunnel.on('exit', (code) => {
    console.log(`[tunnel] Cloudflare Tunnel finalizado (código: ${code}).`);
    process.exit(code ?? 0);
  });

  const stopTunnel = () => {
    console.log('\n[tunnel] Encerrando túnel...');
    tunnel.stop();
  };

  process.on('SIGINT', stopTunnel);
  process.on('SIGTERM', stopTunnel);
}

main().catch((err) => {
  console.error('[tunnel] Erro ao iniciar:', err);
  process.exit(1);
});
