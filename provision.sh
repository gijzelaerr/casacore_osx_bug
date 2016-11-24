#!/bin/bash -ve

export DEBIAN_FRONTEND=noninteractive

# enable universe, multiverse, restricted with world wide mirrors
apt-get update
apt-get upgrade -y 
apt-get install -y software-properties-common python-software-properties  python-pip
apt-add-repository multiverse
add-apt-repository -y ppa:kernsuite/kern-dev 
apt-get update
apt-get install -y python-casacore casacore-data
