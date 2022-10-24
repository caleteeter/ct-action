#!/bin/bash

echo $1 > testfile
cat testfile

echo "message=testmeout2" >> $GITHUB_OUTPUT