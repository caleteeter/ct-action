#!/bin/bash

echo "test"
cat secret > testfile
cat testfile
echo "message=testmeout2" >> $GITHUB_OUTPUT