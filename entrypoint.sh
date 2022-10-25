#!/bin/bash

echo "test"
echo secret > testfile
cat testfile
echo "message=testmeout2" >> $GITHUB_OUTPUT