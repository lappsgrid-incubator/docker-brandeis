#SERVER=http://www.anc.org/downloads/docker
SERVER=http://www.cs.brandeis.edu/~marc/lapps/services
OPENNLP=opennlp-web-service%232.0.1.war
#STANFORD=stanfordnlp-web-service%232.0.1-SNAPSHOT.war
STANFORD=stanfordnlp-web-service%232.0.1.war
DOCKER=/usr/bin/docker

IMAGE=lappsgrid/brandeis

brandeis: update
	$(DOCKER) build -t $(IMAGE) .

update:
	./update.sh $(SERVER) $(OPENNLP) $(STANFORD)

push:
	$(DOCKER) push $(IMAGE)

tag:
	if [ -n "$(TAG)" ] ; then $(DOCKER) tag $(IMAGE) $(IMAGE):$(TAG) ; $(DOCKER) push $(IMAGE):$(TAG) fi
	
help:
	@echo
	@echo "GOALS"
	@echo "brandeis - builds the Brandeis tomcat server"
	@echo "push     - uploads the image to hub.docker.com"
	@echo "tag      - tags the lastest image on hub.docker.com"
	@echo "           The tag to use must be specified as a"
	@echo "           parameter. I.E. make tag TAG=demo"
	@echo
