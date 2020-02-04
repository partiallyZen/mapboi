#!/bin/bash

#needs input of website | tee recout.txt

echo "Hello! Who we snoopin' today?"

read ipname

ping -c 10 $ipname | tee -a recout.txt
traceroute -m 4 $ipname | tee -a recout.txt
nmap $ipname | tee -a recout.txt
