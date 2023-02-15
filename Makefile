services:
	docker-compose -f docker-compose-services.yml up -d
app:
	make services;
	docker-compose -f docker-compose.yml down; docker-compose -f docker-compose.yml run --name extension_api --service-ports extension_api
bash:
	docker-compose run extension_api sh