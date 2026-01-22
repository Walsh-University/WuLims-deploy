.PHONY: render-lab
render-lab:
	kustomize build --enable-alpha-plugins --enable-exec k8s/overlays/lab
