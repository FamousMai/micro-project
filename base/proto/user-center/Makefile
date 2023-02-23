# Jupiter Golang Application Standard Makefile
BASE_PATH:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
script_path=${BASE_PATH}/scripts

gen:
	@echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>gen proto<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
	cd ${script_path} && time ./gen.sh ${BASE_PATH}/pb ${BASE_PATH}/go
	@echo ""