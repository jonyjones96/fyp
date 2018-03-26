#!/bin/bash
#
# Script to shut everything down 
#
# Exit on first error, print all commands.
set -ev

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker network prune


#docker rmi dev-peer0.org1.example.com-fabcar-1.0-5c906e402ed29f20260ae42283216aa75549c571e2e380f3615826365d8269ba
docker rmi dev-peer0.org1.example.com-fyp-1.0-f95e644f5ffb9f3a0760b0c60681b57371dfbf083d0dca63c4c0fab457211173

rm -R hfc-key-store