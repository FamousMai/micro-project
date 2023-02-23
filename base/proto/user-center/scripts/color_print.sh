#! /usr/bin/env bash

RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
BLUE='\033[1;4;34m'
PURPLE='\033[35m'
NC='\033[0m'

print_red()
{
    echo -e ${RED}"${1}"${NC}
}

print_green()
{
    echo -e ${GREEN}"${1}"${NC}
}

print_yellow()
{
    echo -e ${YELLOW}"${1}"${NC}
}

print_blue()
{
    echo -e ${BLUE}"${1}"${NC}
}

print_purple()
{
    echo -e ${PURPLE}"${1}"${NC}
}
