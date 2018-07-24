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
.. list-table:: Commands
    :widths: 25 50
    :header-rows: 1

    * - Docker Command
      - Function
    * - docker ps -a
      - Displays a list of docker containers. Default shows running containers, the -a flag will show a history of all containers that ran/start/stopped. This is useful if you want to get a docker container ID

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`