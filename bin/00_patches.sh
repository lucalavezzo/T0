#!/bin/bash

# Keeping this as a separate script intentionally to avoid complexity in the deployment script.
# PLEASE CHECK T0 TWIKI COOKBOOK TO SEE MORE INFORMATION ABOUT PATCHING THE T0 WMAGENT

BASE_DIR=/data/tier0
DEPLOY_DIR=$BASE_DIR/srv/wmagent

wget -nv https://github.com/dmwm/T0/pull/4566.patch -O - | patch -f -d $DEPLOY_DIR/current/apps/t0/lib/python2*/site-packages/ -p 3
wget -nv https://github.com/dmwm/WMCore/pull/10344.patch -O - | patch -f -d $DEPLOY_DIR/current/apps/t0/lib/python2*/site-packages/ -p 3
