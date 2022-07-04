VERSION=$(jq .version version.json)
docker buildx build --platform linux/arm64 -t coollabsio/prisma-engine:$VERSION --push .