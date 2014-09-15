#! /usr/bin/env bash
# SVN			: $Id$ 
# 
# Name			: setup.sh
# Execution		: ./setup.fh
# Author		: Greg, Beam, ki7mt -at- yahoo.com
# Copyright		: Copyright (C) 2014 Joseph H Taylor, Jr, K1JT
# License       : GPL-3+
# Contributors	: KI7MT
#
# JTSDK-NIX is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation either version 3 of the License, or
# (at your option) any later version. 
#
# JTSDK-NIX is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#------------------------------------------------------------------------------#

# error on exit
set -e

# set a reasonable initial window size
printf '\e[8;40;120t'

# set script path's
BASED=$(exec pwd)

# Using cmake and qmake directories allows for build comparison.
# Need to add support for multiple compilers {g++, intel, clang}
mkdir -p "$BASED"/{tmp,src}
mkdir -p "$BASED"/{wsjt,wspr}
mkdir -p "$BASED"/{wsjtx,wsprx,map65}/cmake/{build,install}/{Debug,Release}

# Do we need Qmake builds for {wsjtx,wsprx,map65} ??
# mkdir -p "$BASED"/{wsjtx,wsprx,map65}/qmake/install

# main vars
_CFG="$BASED/config"
_DOCS="$BASED/docs"
_FUNC="$BASED/functions"
_LANG="$BASED/language"
_LOGS="$BASED/logs"
_SRCD="$BASED/src"
_TMP="$BASED/tmp"
_MKRD="$HOME"/.local/share/applications/jtsdk-nix
_VER=$(awk 'FNR==2 {print $6}' setup.sh)

# process vars
_HAMLIBD="$HOME/.local/share/applications/hamlib"
_jj=$(grep -c ^processor /proc/cpuinfo)

# source general functions and language
. "$_LANG"/language_en
. "$_FUNC"/sig_catch_cleanup
. "$_FUNC"/clean_exit
. "$_FUNC"/root_chk
. "$_FUNC"/dialog_chk
. "$_FUNC"/set_options
. "$_FUNC"/unset_options
. "$_FUNC"/under_development

# Set a few traps to catch signals / interupts
trap sig_catch_cleanup SIGHUP SIGINT SIGQUIT SIGTERM SIGTSTP

# set shell options
set_options

# check if user is root, if yes, warn & exit
root_chk

# checking for package dialog
dialog_chk

# setup main menu help doc var
_HELP="$_DOCS/setup_menu_help.txt"

# start setup menu
while [ 0 ]; do

dialog --ok-label SELECT --nocancel --backtitle "$BACKTITLE" --title \
"$SMTITLE" --menu "$MENUMSG" 16 60 22 --file "$_TMP/SMenu.tmp" 2> "$_TMP/setup_selection"

# get user selection
SMSELECT="`cat $_TMP/setup_selection |head -c 1`"

# start setup menu options

#-------------------------------Arch Linux ------------------------------------#
if [[ $SMSELECT = "A" ]]; then
	# Arch Current Build
	under_development
	continue

#---------------------------------Fedora---------------------------------------#
   elif [[ $SMSELECT = "F" ]]; then
	# Fedora-20+
	under_development
	continue

#---------------------------------Gentoo---------------------------------------#
   elif [[ $SMSELECT = "G" ]]; then
	# Gentoo - Current Build
	under_development	
	continue

#---------------------------------Slackware------------------------------------#
   elif [[ $SMSELECT = "S" ]]; then
	# Slaskware 14.1+
	under_development	
	continue

#---------------------------------Ubuntu---------------------------------------#
   elif [[ $SMSELECT = "U" ]]; then

# Start setup logging sub-process
# this logs everything to ./logs/setup.log
# other sections also have individual logs 
	rm -r $_LOGS/setup.log && touch $_LOGS/setup.log
	source "$_FUNC"/functions_ubuntu
	clear

# pre-installation check
	clear
	(
	echo "------------------------------------------------"
	echo "JTSD-NIX Setup - v$_VER"
	echo "------------------------------------------------"
	echo
	ubuntu_setup_marker
	) 2>&1 | tee -a $_LOGS/setup.log

	# pre-installation check
	(
	echo "------------------------------------------------"
	echo " Checking Existing Packages"
	echo "------------------------------------------------"
	ubuntu_pkg_chk
	echo 'Done'
	echo	
	) 2>&1 | tee -a $_LOGS/setup.log

	# Ubuntu 1404, includes Lubuntu, Xubuntu
	# Need to add provision for Mint v17 and friends
	echo "------------------------------------------------"
	echo " JTSDK-NIX SETUP"
	echo "------------------------------------------------"
	ubuntu_distro_info
	echo
	echo " Distribution .... $_DISTRIBUTOR"
	echo " Release ......... $_RELEASE"
	echo " Arch ............ $_ARCH"
	echo
	echo "Answering [ YES ] Will Perform The Following Actions"
	echo "  [1] Update Repository List(s)"
	echo "  [2] Check or Install Listed Packages + Dependencies"
	echo "  [3] *NO* System Upgrades will be performed"
	echo
	echo "From APT Manual: If an undesirable situation, such as"
	echo "changing a held package, trying to install a unauthenticated"
	echo "package or removing an essential package occurs then apt-get"
	echo "will abort, thus exiting from JTSDK-NIX setup."
	echo
	echo "PACKAGES TO BE INSTALLED"
	echo "------------------------"
	
	if [[ $(wc -l < $_TMP/install_list.txt) -eq "0" ]]; then
		echo
		echo ".. No Packages Needed"
		echo
	else
		echo
		pr -l 1 -t -5 < $_TMP/install_list.txt
		echo
	fi

	# start installation loop
	while [ 1 ]
	do
		echo
		read -p "Is it OK to Start To Continue Installation? [ Y/N ]: " yn
		case $yn in
		[Yy]* )

			# package installation
			clear
			(
			echo "------------------------------------------------"
			echo " Package List Installation"
			echo "------------------------------------------------"
			ubuntu_pkg_list
			echo
			read -p "Press [Enter] to continue.."
			) 2>&1 | tee -a $_LOGS/setup.log
			
			# G4WJS hamlib3 special install
			clear
			(
			echo
			echo '------------------------------------------------'	
			echo " Checking Hamlib 3.0 Installation"
			echo '------------------------------------------------'
			source "$_FUNC"/build_hamlib
			build_hamlib
			echo
			) 2>&1 | tee -a $_LOGS/setup.log

			# If we got this far, we should be able to build apps
			clear
			echo
			echo '------------------------------------------------'	
			echo " JTSDK-NIX $_DISTRIBUTOR Setup is Finished"
			echo '------------------------------------------------'
			echo
			echo "If everything went without error, you should be"
			echo "be able to build applications"
			echo
			echo "All Logs saved to:"
			echo "$_LOGS"
			echo
			echo "To Build Applicaitnos, at Command Prompt: type,"
			echo
			echo "./jtsdk-nix.sh"
			echo
			echo "Then select the application you'd like to build"
			echo
			echo "NOTE: During JTSDK-NIX development, not all"
			echo "applicaitons will be available. If an app is"
			echo "unavailble, a message will be display at selection"
			echo
			read -p "Press [Enter] to exit setup"
			break ;;
		[Nn]* )
			echo
			break ;;
		* )
			clear
			echo "Please use "Y" yes or "N" No."
		;;
		esac
	done
	continue

#-----------------------------------Help---------------------------------------#
   elif [[ $SMSELECT = "H" ]]; then
dialog --exit-label DONE --backtitle "$BACKTITLE" --title "$HTITLE" --textbox "$_HELP" 20 80
	continue

  elif [[ $SMSELECT = "E" ]]; then
	clean_exit
   fi
done

