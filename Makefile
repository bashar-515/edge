.PHONY: up

up:
	docker run \
		--volume ./conf:/etc/caddy \
		--volume ./caddy_data:/data \
		--volume ./caddy_config:/config \
		--publish 80:80 \
		--publish 443:443 \
		--network pi-network \
		--detach \
		--restart unless-stopped \
		caddy
