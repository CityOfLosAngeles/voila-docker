# Voila Docker 

Any example docker image running a voila demo notebook in standalone mode. 

Building the image. 

1. `make build`

Running the image locally. 
1. `docker run --it --port 8866:8866 voila-docker:latest` 

Publishing the image.
1. `make publish`

Deploying the image to civis as a service. 
1. `civis services put --environment-variables env.yml --docker-image-name hunterowens/voila-docker --docker-image-tag 7b7b6ab2ce21  --name voila-docker --memory  3000 --cpu 800 {service number}`