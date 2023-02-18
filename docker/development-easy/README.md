# Setup OpenEMR in Local in 30 minutes

This guide will show you how to set up OpenEMR on your local machine in under 30 minutes. We will be using a Docker-based development environment.

## Prerequisites

- Unix-based system (Linux or macOS)
- Docker installed and running

For Windows-based systems, you can either install VirtualBox and run a Linux virtual machine, or you can use the Windows Subsystem for Linux.

## Clone the repo

Clone the OpenEMR repository using the following command:


git clone git@github.com:tarunchy/openemr.git


## Run the development environment

Change the directory to `./openemr/docker/development-easy` and run the `run-openemr.sh` script. This will start the development environment.

cd openemr/docker/development-easy
./run-openemr.sh


> **Note:** The `run-openemr.sh` script only works on Unix-based systems. If you are using Windows, you can either install VirtualBox and run a Linux virtual machine, or you can use the Windows Subsystem for Linux.

## Check the installation status

Use the `openemr-cmd dl` command to check if the installation is complete.


## Access OpenEMR

Once the installation is complete, you can access the OpenEMR login page at `https://localhost:9300`. The initial username is `admin` and the password is `pass`.

You can create new patients by navigating to the `Patients` menu.

## Access the database

You can access the OpenEMR MySQL/MariaDB database by accessing the URL `http://dlyog02:8310/`. The username is `root` and the password is `root`. This will give you a good perspective of the OpenEMR schema.

## Clean up

To free up space, you can uninstall the Docker container, volume, network, and images using the following command:

### Stop all running containers and remove them

docker stop $(docker ps -aq) 

docker rm $(docker ps -aq)

### o clean up all Docker volumes, networks, and stopped containers

docker system prune -af --volumes

#### This command will remove:

All stopped containers
All networks not used by at least one container
All volumes not used by at least one container
All images without at least one container associated to them
The -a flag removes all unused images in addition to the other resources, and the --volumes flag removes all unused volumes.

Keep in mind that this command will delete all unused resources, including those that may be important to your system. Make sure to review the list of resources to be deleted before confirming the command.

You can also use individual commands to remove volumes and networks separately:

To remove all unused volumes, use docker volume prune.
To remove all unused networks, use docker network prune.
Note that removing volumes and networks can potentially cause data loss, so make sure you don't need any of them before running these commands.

> **Caution:** Do not interrupt the running application when you are cleaning up.

## Conclusion

Congratulations! You have successfully set up OpenEMR on your local machine. If you encounter any issues or have any questions post in Class forum.
