# restic-arm64

## What is this?

This repository automatically publishes `linux/arm64` Docker images from the source code of latest [`restic`](https://github.com/restic/restic) releases.

## What does this do?

GitHub Actions workflow fetches new version from `restic/restic` Docker Hub repository, compares it with [`wooseopkim/restic`](https://hub.docker.com/repository/docker/wooseopkim/restic), and builds and publishes new releases if any. See [`.github/workflows`](./.github/workflows).

## Why?

Because there are no official `arm64` images, [which doesn't seem to bother the maintainers a lot](https://github.com/restic/restic/issues/2359). No blame here, but truth seems so.

## I know, but why not [`mazzolino/restic`](https://hub.docker.com/r/mazzolino/restic)?

Because that is another layer on the top of `restic` source. This project takes a different approach, and aims to provide "not official but works the same as the official one" images.

## Does it work?

The workflow tests if the image works after pushing it. If anything is wrong, please feel free to submit PRs or issues.

## Can I trust you?

Maybe. No changes are intended to the source code. You can see what's happening at the [`Actions` tab](../../actions). If you still can't trust me, you can fork this repository.
