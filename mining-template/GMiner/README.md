## Prerequisites:
Please install the NVIDIA driver (recommended: nvidia-driver-525) and [NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#) on all host machines where containerized mining is required.
## Usage
```bash
docker run -d -e WALLET="XXXXXX" -e ALGORITHM="XXXXXX" -e POOL="XXXXXX" -e OTHER_ARGS="" dharma18/gminer:3.43-ubuntu22.04-cuda11.8
```

Parameter Description: 

- WALLET: Wallet address 
- ALGORITHM: Algorithm 
- POOL: Mining pool address, example: de.karlsen.herominers.com:1195

- OTHER_ARGS: Other parameters required by the mining program
