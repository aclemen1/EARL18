.PHONY: build start exec stop restart init clean

build:
	docker build -t earl18-rstudio-image .

start:
	docker run -d -p 8787:8787 -v `pwd`:/home/rstudio -e PASSWORD=go4it --name earl18-rstudio earl18-rstudio-image

exec:
	docker exec -ti earl18-rstudio bash

stop:
	docker stop earl18-rstudio
	docker rm earl18-rstudio

restart: stop start

clean: stop
	docker rmi earl18-rstudio-image

