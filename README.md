# http_server
A simple Ruby web server.
Serves on port 80.
/healthcheck path returns "OK"
All other paths return "Well, hello there!"
An HTTP status code of 200

`$ ruby webserver.rb`

## Requirement
### Setting up locally 
The following tools should be installed on the workstation
* Docker
* Ruby
* minikube
* git
* kubectl

### Running on your terminal

* Step 1: Clone the project ` git clone https://github.com/ogechivivian/http_server.git`
* Step 2: Open in a code editor  i.e vscode, notepad ++ ....
* Step 3: Launch the following command ` $ ruby http_server.rb `  to start the application on port 80
* Step 4: Launch the browser and access the application on  `http://localhost:80` or `http://localhost:80/checkhealth`

### Building a Docker image
There is a Dockerfile located at the base directory. Run the following command from the tterminal to build a docker image `docker build -t nameoftherepository:version .` the -t flag is to tag the image 
After a successful docker build view the image with `docker images`.
To start and test the image run `docker run -it -p 80:80 imagename` this will start a docker container and expose it on port 80 and can be accessible from the browser `http:\\localhost:80` or `http://localhost:80/checkhealth` this can be tested on the terminal using the curl command `curl -v http://localhost:80`
### Push the image to an Image Registry
The Image on the local machine can be pushed to an Image registry using the `docker push` command.
### Deploy the Application on Minikube
In the kube-manifest directory, we have the deploy.yml, service.yml and hpa.yml to deploy the application on kubernetes. Run the `kubectl apply -f nameoffile.yml`

### Run the Script to Build, Push and Deploy 
The install.sh located on the base directory has the compiled script to build, push and deploy.
Run the `./install.sh` to get started

### Architecture 



