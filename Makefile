.PHONY: run-edge-container

run-edge-container:
	docker run \
  		--name edge-container \
  		--volume ./edge/nginx.conf:/etc/nginx/nginx.conf:ro \
		--publish 80:80 \
  		--detach nginx

.PHONY: stop-edge-container

stop-edge-container:
	docker stop edge-container

.PHONY: remove-edge-container

remove-edge-container:
	docker rm edge-container

.PHONY: clean-edge-container

clean-edge-container:
	docker rm --force edge-container
