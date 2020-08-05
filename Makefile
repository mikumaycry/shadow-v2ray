
VERSION ?= latest

image: server client

server: 
	docker build -f ./Dockerfile -t docker.io/wbuntu/shadow-v2ray:$(VERSION) .
	@echo "build server image docker.io/wbuntu/shadow-v2ray:$(VERSION)"
client: 
	docker build -f ./Dockerfile-client -t docker.io/wbuntu/shadow-v2ray-client:$(VERSION) .
	@echo "build client image docker.io/wbuntu/shadow-v2ray-client:$(VERSION)"