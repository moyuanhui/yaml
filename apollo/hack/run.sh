#!/usr/bin/env bash

helm install --name apollo --namespace apollo ./ \
             --set uatconfigservice.extraEnv."eureka\.instance\.hostname"="apollo-uatconfigservice" \
             --set uatconfigservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\" \
             --set uatadminservice.extraEnv."eureka\.instance\.hostname"="apollo-uatadminservice" \
             --set uatadminservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\" \
             \
             --set proconfigservice.extraEnv."eureka\.instance\.hostname"="apollo-proconfigservice" \
             --set proconfigservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\" \
             --set proadminservice.extraEnv."eureka\.instance\.hostname"="apollo-proadminservice" \
             --set proadminservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\"
