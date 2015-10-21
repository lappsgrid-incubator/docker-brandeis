SERVER=http://www.anc.org/downloads/docker
ARCHIVE=brandeis-services.tgz
IMAGE=lappsgrid/brandeis

brandeis:
	if [ ! -e $(ARCHIVE) ] ; then wget $(SERVER)/$(ARCHIVE) ; fi
	/usr/local/bin/docker build -t $(IMAGE) .

push:
	/usr/local/bin/docker push $(IMAGE)
	
help:
	@echo
	@echo "GOALS"
	@echo "brandeis - builds the Brabdeis tomcat server"
	@echo "push     - uploads the image to hub.docker.com"
	@echo
