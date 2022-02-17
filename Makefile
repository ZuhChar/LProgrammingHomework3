##################################
# Makefile
# Zachary Crimmel
# COSC 3750 Spring
# Homework 3
# 15 February 2022
#
# This file will be able to take an input of variable amounts of different files and compile them if a change has been made to them
# 
##################################

CC=cc
CFLAGS=-Wall -ggdb
OBJS := $(wildcard *.o)
.PHONY= prompt.o compute.o display.o approxe tidy clean

prompt.o: 
	gcc -c -o prompt.c 

compute.o: 
	gcc -c compute.c 

display.o: 
	gcc -c display.c 

approxe: approxe.c prompt.o compute.o display.o
	gcc approxe.c

tidy:
	/bin/rm -f a.out core.* OBJS

clean: tidy