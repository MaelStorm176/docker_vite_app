init:
	docker-compose up --detach
	docker exec -it node_vue npm create vite@latest my-vue-project --quiet --template vue
	docker exec -it node_vue ./config/install.sh
shell:
	docker exec -it node_vue sh
start:
	docker-compose up --detach
	docker exec -it node_vue ./config/start.sh
down:
	docker-compose down
stop:
	docker-compose stop