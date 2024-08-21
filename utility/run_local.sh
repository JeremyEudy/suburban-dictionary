#!/usr/bin/env bash

docker-compose -f docker-compose-local.yml up -d && docker-compose -f docker-compose-local.yml logs -f
