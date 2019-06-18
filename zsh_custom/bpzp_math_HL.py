#!/usr/local/bin/python3
from math import *
from code import *

d=pi/180

def s(degrees):
	return zero_out(sin(degrees*d))
def c(degrees):
	return zero_out(cos(degrees*d))

def zero_out(num):
	if(abs(num) < 0.0001):
		return 0
	return num

interact(local=locals())
