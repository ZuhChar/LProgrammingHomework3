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
.PHONY= clean tidy

prompt.o: prompt.c prompt.h
	cc -c prompt.c 

compute.o: compute.c compute.h
	cc -c compute.c 

display.o: display.c display.h
	cc -c display.c 

approxe: approxe.c prompt.o compute.o display.o
	touch approxe

tidy:
	${RM} a.out core.*

clean:
	${RM} prompt compute display