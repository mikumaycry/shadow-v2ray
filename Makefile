
VERSION ?= latest

image: server client

server: 
	docker build -f ./Dockerfile -t docker.io/wbuntu/shadowray:$(VERSION) .
	@echo "build server image docker.io/wbuntu/shadowray:$(VERSION)"
client: 
	docker build -f ./Dockerfile-client -t docker.io/wbuntu/shadowray-client:$(VERSION) .
	@echo "build client image docker.io/wbuntu/shadowray-client:$(VERSION)"