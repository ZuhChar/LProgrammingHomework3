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

clean:
	${RM} prompt compute display

prompt: prompt.c prompt.h
	cc -c prompt.c prompt.h -o prompt

compute: compute.c compute.h
	cc -c compute.c compute.h -o compute

display: display.c display.h
	cc -c display.c display.h -o display

first_test: approxe.c
	g approxe.c -o first_test