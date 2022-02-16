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

CC=gcc
CFLAGS=-Wall -ggdb
OBJS := $(wildcard *.o)
# .PHONY=all clean tidy

tidy:
	${RM} a.out core.*

# clean:
#	${RM} #Fill in later

prompt.o: prompt.c prompt.h
	echo "Testing output"
	cc -c prompt.c prompt.h -o prompt.o

compute.o: compute.c compute.h
	cc -c compute.c compute.h -o compute.o

display.o: display.c display.h
	cc -c display.c display.h -o display.o

first_test: approxe.c
	g approxe.c -o first_test