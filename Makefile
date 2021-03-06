ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
# APP_NAME := $(shell echo $(ROOT_DIR) | sed 's/.*\///; s/prometheus-//')
APP_NAME := grafana-dashboards

.PHONY: deploy
deploy:
	helm upgrade -i -f values.yaml $(APP_NAME) chart/
