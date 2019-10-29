#!/usr/bin/env bash
port=$1
location=$2
name=$3

if [ -z ${port} ]; then
  echo "Require for port!"
  exit -1
fi
if [ -z ${location} ]; then
  echo "Require for resource location!"
  exit -1
fi
if [ -z ${name} ]; then
  echo "No given name, use location to named this container."
  name=${location}
fi

echo "Running at port ${port}."
echo "Using resource ${location}."

docker run --detach -p ${port}:80 -v "${location}":/docroot --name "${name}" markdown_viewer

exit 0
