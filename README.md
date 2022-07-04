# Build Prisma Engine from source (for [Coolify](https://coolify.io))
This repo builds Prisma Engine from source for ARM/AMD arch.

## Build
1. Change version in [version.json](./version.json) to the preferred one.
2. Change source branch in [Dockerfile](./Dockerfile) at line `git clone --depth=1 --branch=3.15.x https://github.com/prisma/prisma-engines.git /prisma`
3. Build ARM version locally on your computer. It needs more than 8GB RAM (16GB+) and an eternity.
4. If finished, make a new release on GitHub. That will initiate the AMD version and merge these two images together.
5. Take a break and enjoy life.