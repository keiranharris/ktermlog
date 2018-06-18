#!/bin/sh

########################################
# VERSION:  1.0
# UPDATED:  29/12/2015
# DESCRIP:  log terminal output to file
# NOTES:	note this spawns a new 'sub-shell', the environment for which is (interestingly)
#  			setup in ~/.bashrc, NOT /etc/bashrc (where the original terminal shell spawn inherits settings from)
#			any alias commands should therefore go into ~/.bashrc.
#			this is what allows me to have the green (non-record from /etc/bashrc) + RED (record from ~/.bashrc) prompt setup
########################################

KLOG=`date "+/_KEIRAN/_PROGDATA/TERMINAL/_LOGS/%Y%m%d-%H%M_OSXterm.txt"`  
/usr/bin/script -a $KLOG

#ENABLE -k SWITCH TO LOG KEYSTROKES (DOWNSIDE: IT DOESNT ECHO CANCEL, SO YOU GET DOUBLE KEYS)
#/usr/bin/script -ak $KLOG
