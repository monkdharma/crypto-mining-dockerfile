group "default" {
    targets = [
	"SRBMiner"

    ]
}

target "SRBMiner" {
    dockerfile = "Dockerfile"
    tags = ["podwise/srbminer:2.4.4-ubuntu22.04-cuda11.8"]
    contexts = {
        scripts = "../../container-template"
    }
    args = {
        BASE_IMAGE = "nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04"
    }
}
