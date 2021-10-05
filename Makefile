# Run Application
install:
	helm install deploy charts/httpchart/
uninstall:
	helm uninstall deploy

# Build Application Image
build:
	docker-compose up -d 
# Push Image to a registry
push:
	docker-compose push 