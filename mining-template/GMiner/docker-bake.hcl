group "default" {
    targets = [
	"gminer"

    ]
}

target "gminer" {
    dockerfile = "Dockerfile"
    tags = ["podwise/gminer:3.43-ubuntu22.04-cuda11.8"]
    contexts = {
        scripts = "../../container-template"
    }
    args = {
        BASE_IMAGE = "nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04"
    }
}
