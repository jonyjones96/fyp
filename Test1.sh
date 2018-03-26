#!/bin/bash
#
#Script to run the enrollAdmin.js, register.js and query.js
#
# Exit on first error
set -e

node enrollAdmin.js
node registerUser.js
node query.js