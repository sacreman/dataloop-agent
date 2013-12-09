#!/bin/bash

for i in {1..10}; do
    $GOPATH/bin/docker run dataloop/apache2 &
done
wait
