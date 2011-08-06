
# Copyright (C) Ngwsx


NGINX_BIN=nginx
NGINX_DIR=../../nginx
ADDON_DIR=../addon/ngx_udp_module

include ../../nginx/win32.args

CONF_ARGS= \
	$(CORE_CONF_ARGS) \
	--with-debug \
	--without-http \
	--without-http-cache \
	--add-module=$(ADDON_DIR)

include ../../nginx/win32.mk
