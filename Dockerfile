# ビルドステージ
FROM node:18.19.0-alpine3.18 as build-stage
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn build

# 実行ステージ
FROM node:18.19.0-alpine3.18
WORKDIR /app

# ビルドステージから必要なファイルのみをコピー
COPY --from=build-stage /app/.output ./src/.output
COPY --from=build-stage /app/node_modules ./node_modules
COPY --from=build-stage /app/package.json ./package.json

EXPOSE 3000
CMD ["node", "src/.output/server/index.mjs"]