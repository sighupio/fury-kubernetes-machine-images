.PHONY: templates
templates:
	terraform init
	terraform apply --var="kfi-version=v1.0.4" --var="kubernetes-minor-version=v1.18"
	terraform output packerjson > output/packer.json
	packer build output/packer.json