.. Test Documentation documentation master file, created by
   sphinx-quickstart on Fri Jul  6 15:28:47 2018.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Docker
==============================================
This page serves a documentation for my personal docker documentation. I mainly put reference info here. Use it at your own will.

Installing Sphinx
*****************
.. code-block:: bash

   pip install sphinx
    pip install sphinx_rtd_theme
    ~/.local/bin/sphinx-quickstart .


Cheatsheet for navigating through docker cli
********************************************
.. list-table::
    :widths: 25 50
    :header-rows: 1

    * - Docker Command
      - Function
    * - docker ps -a
      - Displays a list of docker containers. Default shows running containers, the -a flag will show a history of all containers that ran/start/stopped. This is useful if you want to get a docker container ID
    * - docker kill 9b7a9d0e7737
      - Kills the specified container
    * - docker rm 9b7a9d0e7737
      - Removes the specified container
    * - docker inspect 9b7a9d0e7737
      - Describes and displays system information(network and OS level attributes)
    * - docker exec --tty 9b7a9d0e7737 env TERM=xterm yum -y install openssh-server
      - Open a tty session with xterm to run commands on the docker instance. This is good if you're just running some basic commands on the instance itself.
    * - docker image ls
      - List available local docker images to run
    * - docker exec --tty 9b7a9d0e7737 env TERM=xterm sh -c "echo 'something in this world' > /etc/givemepowers"
      - Open a shell with TTY. Useful if you're piping or quoting commands
    * - docker login
      - Logs into dockerhub
    * - docker stop 9b7a9d0e7737
      - Stops the docker container
    * - docker --commit -m 'Added workstation pubkey' -a 'Anthony V' 9b7a9d0e7737
      - Builds a docker image from a stopped container
    * - docker tag my_image $DOCKER_ID_USER/my_image
      - Tags a local latest image to dockerhub image
    * - docker push $DOCKER_ID_USER_my_image
      - Pushes the updated image into dockerhub
    * - docker build -t centos7-local .
      - Builds a local image file from reading a Dockerfile in cwd
    * - docker run --name jenkinslocal --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --volume=/home/avuong/scratch:/data:rw avuong/centos7-systemd:latest /sbin/init
      - Runs a privileged docker container with shared mounted volumes and works with systemd on linux based systems
    * - docker start jenkinslocal
      - Start a stopped or killed container
    * - docker rmi someimage
      - Remove a local docker image
    * - docker pull avuong/centos7-systemd:latest
      - Pull latest docker image from source(dockerhub in this case)

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`