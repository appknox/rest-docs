#! /bin/bash
#
# kill.sh
# Copyright (C) 2015 dhilipsiva <dhilipsiva@gmail.com>
#
# Distributed under terms of the MIT license.
#


kill -9 $(ps aux | grep middlema[n] | awk -v N=$2 '{print $2}')
