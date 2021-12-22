# ci-cd-exercise
Write 1 Dockerfile config + 1 CI/CD Pipeline YAML file. <br />
* Preferably, the YAML file is for Gitlab CI/CD. But if you are more familiar with other repo eg. Bitbucket/Github, feel free to use the syntax for that repo. <br />
The tasks are:<br />
- The YAML file will deploy from a created docker image
by a Dockerfile. <br />
- The Dockerfile needs to simply install Nginx and include the file from the repo named
"hello.txt" into "/var/www/" folder. Let's assume that folder is the main folder
which Nginx will read as a web server <br />
- The Docker image then needs to be installed on an EC2 server on AWS and
run
