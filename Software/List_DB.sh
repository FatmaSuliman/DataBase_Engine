#!/usr/bin/bash
echo "already existing database ....."

cd ../Database

ls -F | grep / | tr / " "

cd - &>~/../../dev/null
