## Prerequisites:
Please install the NVIDIA driver (recommended: nvidia-driver-525) and [NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#) on all host machines where containerized mining is required.
## Usage
```bash
docker run -d -e WALLET=$wallet -e ALGORITHM=$lgorithm -e POOL=$pool dharma18/lolminer:1.8.1-ubuntu22.04-cuda11.8
```

Parameter Description: 

- WALLET: Wallet address 
- ALGORITHM: Algorithm 
- POOL: Mining pool address, example: de.karlsen.herominers.com:1195

