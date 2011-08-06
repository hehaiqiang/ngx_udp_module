
# Copyright (C) Ngwsx


NGINX_BIN=nginx
NGINX_DIR=../../nginx
ADDON_DIR=$(PWD)

include $(NGINX_DIR)/unix.args

CONF_ARGS= \
	$(CORE_CONF_ARGS) \
	--with-debug \
	--without-http \
	--without-http-cache \
	--add-module=$(ADDON_DIR)

include $(NGINX_DIR)/unix.mk
