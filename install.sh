#!/bin/bash

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# battery_lite                                                          #
#  Copyright (C) 2012 eu-slack <eu-slack [at] mail [dot] com>           #
#                                                                       #
#  This program is free software: you can redistribute it and/or modify #
#  it under the terms of the GNU General Public License as published by #
#  the Free Software Foundation, either version 3 of the License, or    #
#  (at your option) any later version.                                  #
#                                                                       #
#  This program is distributed in the hope that it will be useful,      #
#  but WITHOUT ANY WARRANTY; without even the implied warranty of	    #
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the	        #
#  GNU General Public License for more details.                         #
#                                                                       #
#  You should have received a copy of the GNU General Public License    #
#  along with this program. If not, see http://www.gnu.org/licenses/    #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #	#

if [ ! -d "/opt/bin/" ]
then
  mkdir /opt/bin/
fi

if [ -e "/opt/bin/battery_lite" ]
then
  rm /opt/bin/battery_lite
fi

if [ -z `echo $PATH | grep /opt/bin` ]
then
  if [ -e /etc/*bashrc* ]
  then 
    addpath=`ls -a /etc/*bashrc*`
  elif [ -e "/etc/profile" ]
  then
    addpath="/etc/profile"
  else
    addpath="~/.bashrc"
  fi
  echo "export PATH=$PATH:/opt/bin" >> $addpath
fi

cp ./battery_lite /opt/bin/battery_lite
chmod +x /opt/bin/battery_lite
exit
