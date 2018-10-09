magento:
	docker-compose up -d
	sleep 5
	docker exec -it magento install-sampledata
	docker exec -it magento install-magento

	./bootstrap.sh

stop:
	docker-compose stop

destroy:
	docker-compose down