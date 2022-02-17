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
RM=/bin/rm -f

.PHONY= approxe clean tidy

approxe: approxe.c prompt.o compute.o display.o

prompt.o: 
	${CC} ${CFLAGS} prompt.c -o prompt.o

compute.o: 
	${CC} ${CFLAGS} compute.c -o compute.o

display.o: 
	${CC} ${CFLAGS} display.c -o display.o

tidy:
	${RM} a.out core.* OBJS

clean: tidy
	${RM} prompt.o compute.o display.o