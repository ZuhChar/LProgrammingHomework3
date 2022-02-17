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
.PHONY= approxe tidy clean

approxe: approxe.c prompt.o compute.o display.o

prompt.o: 
	cc -c prompt.c

compute.o: 
	cc -c compute.c 

display.o: 
	cc -c display.c 

tidy:
	${RM} -f a.out core.* OBJS

clean: tidy
	${RM} prompt.o compute.o display.o