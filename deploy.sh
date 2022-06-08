#!/usr/bin/env bash

helm repo add bitnami https://charts.bitnami.com/bitnami
helm upgrade redis bitnami/redis --install --namespace=atividade --values redis/values.yaml
helm upgrade helm-guestbook ./helm-guestbook --install --namespace=atividade --values=helm-guestbook/values.yaml
