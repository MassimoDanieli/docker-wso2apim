docker-wso2apim
===================

Docker image to install and run WSO2 API Manager. It uses the [dockerfile/java](https://index.docker.io/u/dockerfile/java/) as its base image.


The dockerfile will:

* Use `wget` to pull the APIM 2.0.0 ZIP from WS02 web server into the container `/opt` folder.
* Install `zip`.
* Unzip the APIM 2.0.0 ZIP.
* Remove the APIM 2.0.0 ZIP.
* Expose the container port `9443 9763 8280 8243 10397`.
* Set the API Manager `wso2server.sh` start-up script as the container start-up command.

### Usage
* To pull: `docker pull massimodanieli/wso2apim`
* To build: `docker build --rm -t your_image_name github.com/massimodanieli/docker-wso2apim`
* To run: `docker run --rm --name your_container_name -p 9443:9443 your_image_name`
* To access API Manager web admin console, navigate to `https://localhost:9443`

