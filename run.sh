#!/bin/bash
set -e

GRAY='\033[1;30m'
NC='\033[0m'

echo -e "${GRAY}Cleaning previous build${NC}"
rm -rf ./build/$1.c ./build/$1.out

echo -e "${GRAY}Generating C file${NC}"
lex -o ./build/$1.c ${1}

echo -e "${GRAY}Compiling C file${NC}"
gcc -o ./build/$1.out ./build/$1.c

echo -e "${GRAY}Running Executable${NC}"
./build/$1.out