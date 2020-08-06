#!/bin/bash

PATH=$HOME/logs
TIME="+%H:%M min do dia %d de %B de %Y"

sudo apt-get update > ~/logs/uplog
echo "at $(date $TIME)" >> ~/logs/uplog
