#!/bin/bash

echo $* | tr ' ' '\n' | sort -n | tr '\n' '\n'; echo 
