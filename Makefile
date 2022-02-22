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

CC=gcc
CFLAGS=-Wall -ggdb
OBJS := $(wildcard *.o)
RM=rm -f

#When I declared the .PHONY as a target it doesn't create the executable but when I declare it as a variable it works, not sure why.
.PHONY= approxe clean tidy

#Creates the executable
approxe: approxe.c prompt.o compute.o display.o
	$(CC) $(CFLAGS) approxe.c $(OBJS) -o approxe

#Compiles prompt.c
prompt.o: prompt.c prompt.h
	cc -c prompt.c

#Compiles compute.c
compute.o: compute.c compute.h
	cc -c compute.c 

#Compiles display.c
display.o: display.c display.h
	cc -c display.c 

#Removes targets and object files
tidy:
	${RM} a.out core.* ${OBJS}

#Removes object files and the executable
clean:
	${RM} ${OBJS} approxe