#!/bin/bash

go build -o run-cu .
docker build -t current-user:latest .