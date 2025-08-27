.PHONY: up

up:
	docker run \
		--volume conf:/etc/caddy
		--volume caddy_data:/data \
		--publish 80:80 \
		--network pi-network \
		--detach \
		--restart unless-stopped \
		caddy
