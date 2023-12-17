group "default" {
    targets = [
	"lolminer"

    ]
}

target "lolminer" {
    dockerfile = "Dockerfile"
    tags = ["podwise/lolminer:1.8.1-ubuntu22.04-cuda11.8"]
    contexts = {
        scripts = "../../container-template"
    }
    args = {
        BASE_IMAGE = "nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04"
    }
}
