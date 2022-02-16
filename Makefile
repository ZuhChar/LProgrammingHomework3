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

tidy:
	${RM} a.out core.*

approxe: approxe.c prompt.o compute.o display.o


clean:
	${RM} prompt compute display

prompt.o: prompt.c prompt.h
	cc -c prompt.c prompt.h -o prompt.o

compute.o: compute.c compute.h
	cc -c compute.c compute.h -o compute.o

display.o: display.c display.h
	cc -c display.c display.h -o display.o

first_test: approxe.c
	g approxe.c -o first_test