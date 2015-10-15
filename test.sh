#!/bin/bash

ALL_CONTAINERS="vassar brandeis oaqa gigaword manager galaxy"


OPEN_CONTAINERS=$(echo $ALL_CONTAINERS | sed 's/gigaword //')
echo $ALL_CONTAINERS
echo $OPEN_CONTAINERS



