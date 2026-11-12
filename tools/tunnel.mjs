#!/usr/bin/env node
import net from 'node:net';
import { Tunnel } from 'cloudflared';

function checkPortOpen(port, host = '127.0.0.1', timeout = 800) {
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

async function detectTargetPort() {
  const custom = Number(process.env.TUNNEL_PORT || process.argv[2]);
  if (custom && Number.isInteger(custom) && custom > 0) {
    return { port: custom, reason: 'especificada por parâmetro' };
  }

  // 1. Prioridade para o pnpm start (porta 3001)
  if (await checkPortOpen(3001)) {
    return { port: 3001, reason: "detectada ativa (pnpm start / servidor do jogo)" };
  }

  // 2. Se não, verifica pnpm dev (porta 5173)
  if (await checkPortOpen(5173)) {
    return { port: 5173, reason: "detectada ativa (pnpm dev / Vite)" };
  }

  // 3. Padrão se o servidor ainda estiver iniciando
  return { port: 3001, reason: "padrão para 'pnpm start'" };
}

async function main() {
  const { port: targetPort, reason } = await detectTargetPort();
  const targetUrl = `http://localhost:${targetPort}`;

  console.log(`[tunnel] Conectando Cloudflare Quick Tunnel para ${targetUrl} [${reason}]...`);

  const isOpen = await checkPortOpen(targetPort);
  if (!isOpen) {
    console.warn(`[tunnel] AVISO: A porta ${targetPort} ainda não parece estar aberta.`);
    console.warn(`[tunnel] Certifique-se de que o jogo está rodando ('pnpm start' na porta 3001).`);
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
    console.log(` 📡 Encaminhando para: ${targetUrl} (${reason})`);
    console.log(` 🎮 Qualquer pessoa com o link acima pode entrar e jogar.`);
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
