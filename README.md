# swiftwasm-docker

> [!WARNING]
> We stopped distributing Docker images since Swift 6.0. Please use [our new Swift SDKs](https://book.swiftwasm.org/getting-started/setup.html) with the official Swift images instead.
> ```dockerfile
> FROM swift:6.0.3
> RUN swift sdk install "https://github.com/swiftwasm/swift/releases/download/swift-wasm-6.0.3-RELEASE/swift-wasm-6.0.3-RELEASE-wasm32-unknown-wasi.artifactbundle.zip" --checksum "31d3585b06dd92de390bacc18527801480163188cd7473f492956b5e213a8618"
> ```

### Docker images for [SwiftWasm](https://swiftwasm.org).

### Usage

##### Pull the Docker image from GitHub Container Registry:

```bash
docker pull ghcr.io/swiftwasm/swift:latest
```

## Supported tags and respective Dockerfile links

- [5.10, 5.10-jammy, jammy, latest](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.10/ubuntu/22.04/Dockerfile)
- [5.10-focal, focal](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.10/ubuntu/20.04/Dockerfile)
- [5.10-bionic, bionic](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.10/ubuntu/18.04/Dockerfile)
- [5.9, 5.9-jammy](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.9/ubuntu/22.04/Dockerfile)
- [5.9-focal](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.9/ubuntu/20.04/Dockerfile)
- [5.9-bionic](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.9/ubuntu/18.04/Dockerfile)
- [5.8, 5.8-jammy](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.8/ubuntu/22.04/Dockerfile)
- [5.8-focal](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.8/ubuntu/20.04/Dockerfile)
- [5.8-bionic](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.8/ubuntu/18.04/Dockerfile)
- [5.7, 5.7-jammy](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.7/ubuntu/22.04/Dockerfile)
- [5.7-bionic](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.7/ubuntu/18.04/Dockerfile)
- [5.7-focal](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.7/ubuntu/20.04/Dockerfile)
- [5.6, 5.6-bionic](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.6/ubuntu/18.04/Dockerfile)
- [5.6-focal](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.6/ubuntu/20.04/Dockerfile)
- [5.5, 5.5-bionic](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.5/ubuntu/18.04/Dockerfile)
- [5.5-focal](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.5/ubuntu/20.04/Dockerfile)
- [5.4, 5.4-bionic](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.4/ubuntu/18.04/Dockerfile)
- [5.4-focal](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.4/ubuntu/20.04/Dockerfile)
- [5.3, 5.3-bionic](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.3/ubuntu/18.04/Dockerfile)
- [5.3-focal](https://github.com/swiftwasm/swiftwasm-docker/blob/main/5.3/ubuntu/20.04/Dockerfile)
