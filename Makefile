IMAGE = spacetabio/keycloak
VERSION = 5.0.0-1.0.0

image:
	docker build -t $(IMAGE):$(VERSION) .

push:
	docker push $(IMAGE):$(VERSION)

# -v $(pwd):/tmp -e ROOT_LOGLEVEL=DEBUG \ -e KEYCLOAK_LOGLEVEL=DEBUG \

run:
	docker run --rm -it --init -p 8080:8080 -p 9990:9990 \
		-e KEYCLOAK_USER=admin \
		-e KEYCLOAK_PASSWORD=admin \
		$(IMAGE):$(VERSION)
