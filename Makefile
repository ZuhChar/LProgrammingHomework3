##################################
# Makefile
# Zachary Crimmel
# COSC 3750 Spring
# Homework 3
# February 16, 2022
#
# This file will be able to take an input of variable amounts of different files and compile them if a change has been made to them
# Collaborated with Ian Moon on this Assignment
##################################

CC=cc
CFLAGS=-Wall -ggdb
OBJS := $(wildcard *.o)
RM=rm -f

.PHONY= approxe clean tidy

approxe: approxe.c prompt.o compute.o display.o

prompt.o: prompt.c prompt.h
	cc -c prompt.c

compute.o: compute.c compute.h
	cc -c compute.c 

display.o: display.c display.h
	cc -c display.c 

tidy:
	${RM} a.out core.* ${OBJS}

clean:
	${RM} ${OBJS} approxe