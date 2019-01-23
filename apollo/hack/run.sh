#!/usr/bin/env bash

helm install --name apollo --namespace wrd-infra ./ \
             --set uatconfigservice.extraEnv."eureka\.instance\.hostname"="apollo-uatconfigservice" \
             --set uatconfigservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\" \
             --set uatadminservice.extraEnv."eureka\.instance\.hostname"="apollo-uatadminservice" \
             --set uatadminservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\" \
             \
             --set proconfigservice.extraEnv."eureka\.instance\.hostname"="apollo-proconfigservice" \
             --set proconfigservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\" \
             --set proadminservice.extraEnv."eureka\.instance\.hostname"="apollo-proadminservice" \
             --set proadminservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\"
             \
             --set portalmysql.persistence.storageClass="local-storage" \
             --set proconfigservicemysql.persistence.storageClass="local-storage" \
             --set uatconfigservicemysql.persistence.storageClass="local-storage"
