FROM node:20-alpine AS builder
WORKDIR /app

RUN corepack enable && corepack prepare pnpm@9.15.0 --activate

COPY package.json pnpm-workspace.yaml tsconfig.base.json ./
COPY packages/physics/package.json packages/physics/tsconfig.json ./packages/physics/
COPY packages/protocol/package.json packages/protocol/tsconfig.json ./packages/protocol/
COPY packages/server/package.json packages/server/tsconfig.json ./packages/server/
COPY packages/client/package.json packages/client/tsconfig.json ./packages/client/

RUN pnpm install

COPY packages ./packages
COPY reference/decompiled/multiplayer-maps-spec.json ./reference/decompiled/multiplayer-maps-spec.json

RUN pnpm build

FROM node:20-alpine AS runner
WORKDIR /app

ENV NODE_ENV=production
ENV PORT=3001
ENV HOST=0.0.0.0

RUN corepack enable && corepack prepare pnpm@9.15.0 --activate

COPY --from=builder /app/package.json /app/pnpm-workspace.yaml ./
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/packages ./packages
COPY --from=builder /app/reference/decompiled/multiplayer-maps-spec.json ./reference/decompiled/multiplayer-maps-spec.json

EXPOSE 3001

CMD ["node", "packages/server/dist/index.js"]
