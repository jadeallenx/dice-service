dice-service
============

Dice rolling as a service. This is a simple web service to roll 
dice and return a result set.

It's mostly intended to be a demonstration of building a 
deployable application for [Docker](http://www.docker.io)

Usage
-----
From a deployed container:

    curl -X POST -d'roll=4d6^3' localhost:<assigned-port>
    
This will roll a 4d6 and keep the 3 best rolls.  The 
[diceroll library](https://github.com/borntyping/diceroll) has
a bunch more options available.

Building the container
----------------------

1. [Install Docker](http://www.docker.io/gettingstarted/#h_installation)
2. `sudo docker build -t dice-service .`
3. `sudo docker run -t dice-service`

The service should now be available. You can find the assigned port using

`sudo docker ps | grep dice-service`

Requirements
------------

    bottle==0.11.6
    diceroll==2.4
    gunicorn==17.5
    pyparsing==2.0.1


