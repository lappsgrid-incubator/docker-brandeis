brandeis:
	/usr/local/bin/docker build -t lappsgrid/brandeis .

push:
	/usr/local/bin/docker push lappsgrid/brandeis
	
help:
	@echo
	@echo "GOALS"
	@echo "brandeis - builds the Brabdeis tomcat server"
	@echo "push     - uploads the image to hub.docker.com"
	@echo
