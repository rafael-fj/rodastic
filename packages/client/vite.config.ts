import { defineConfig } from 'vite';

export default defineConfig({
  server: {
    port: Number(process.env.VITE_DEV_PORT) || 5173,
    proxy: {
      '/ws': {
        target: 'ws://localhost:3001',
        ws: true,
      },
      '/api': {
        target: 'http://localhost:3001',
        changeOrigin: true,
      },
    },
  },
});
