# To the extent possible under law, the author(s) have dedicated all
# copyright and related and neighboring rights to this software to the
# public domain worldwide. This software is distributed without any warranty.
# You should have received a copy of the CC0 Public Domain Dedication along
# with this software.
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

# base-files version 4.2-3

# /etc/profile: executed by the command interpreter for login shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/profile

# Modifying /etc/profile directly will prevent
# setup from updating it.

# System-wide profile file

# Some resources...
# Customizing Your Shell: http://www.dsl.org/cookbook/cookbook_5.html#SEC69
# Consistent BackSpace and Delete Configuration:
# http://www.ibb.net/~anne/keyboard.html
# The Linux Documentation Project: http://www.tldp.org/
# The Linux Cookbook: http://www.tldp.org/LDP/linuxcookbook/html/
# Greg's Wiki http://mywiki.wooledge.org/

#------------------------------------------------------------------#
# # KI7MT <ki7mt@yahoo.com> Edits:
#------------------------------------------------------------------#
# Foreground colors
C_R='\033[01;31m'		# red
C_G='\033[01;32m'		# green
C_Y='\033[01;33m'		# yellow
C_C='\033[01;36m'		# cyan
C_NC='\033[01;37m'		# no color

#--------------------------------------------------------------------#
# KI7MT <ki7mt@yahoo.com> Edits:
# * Add /scritps to profile path
#--------------------------------------------------------------------#

if [ -z "${PROFILEREAD+true}" ] ; then
  # Setup some default paths. Note that this order will allow user installed
  # software to override 'system' software.
  # Modifying these default path settings can be done in different ways.
  # To learn more about startup files, refer to your shell's man page.

  : ${ORIGINAL_PATH=${PATH}}
  if [ ${CYGWIN_NOWINPATH-addwinpath} = "addwinpath" ] ; then
    PATH="/usr/local/bin:/usr/bin:/scripts"
  else
    PATH="/usr/local/bin:/usr/bin:/scripts"
  fi

# see https://cygwin.com/ml/cygwin/2014-05/msg00352.html
  MANPATH="/usr/local/man:/usr/share/man:/usr/man${MANPATH:+:${MANPATH}}"
  INFOPATH="/usr/local/info:/usr/share/info:/usr/info${INFOPATH:+:${INFOPATH}}"

  # Set the user id
  USER="$(/usr/bin/id -un)"

  # TMP and TEMP as defined in the Windows environment
  # can have unexpected consequences for cygwin apps, so we define
  # our own to match GNU/Linux behaviour.
  unset TMP TEMP
  TMP="/tmp"
  TEMP="/tmp"

  #------------------------------------------------------------------#
  # KI7MT <ki7mt@yahoo.com> Edits:
  # * commented out, as not needed for JTSDK
  #------------------------------------------------------------------#
    # Define default printer
  # p='/proc/registry/HKEY_CURRENT_USER/Software/Microsoft/Windows NT/CurrentVersion/Windows/Device'
  # if [ -e "${p}" ] ; then
  #   read -r PRINTER < "${p}"
  #   PRINTER=${PRINTER%%,*}
  # fi
  # unset p

  # Default to removing the write permission for group and other
  #  (files normally created with mode 777 become 755; files created with
  #  mode 666 become 644)
  umask 022

  # Here is how HOME is set, in order of priority, when starting from Windows
  #  1) From existing HOME in the Windows environment, translated to a Posix path
  #  2) from /etc/passwd, if there is an entry with a non empty directory field
  #  3) from HOMEDRIVE/HOMEPATH
  #  4) / (root)
  # If the home directory doesn't exist, create it.
  if [ ! -d "${HOME}" ]; then
    if mkdir -p "${HOME}"; then
      echo "New User Setup: Copying skeleton files."
      echo
      if ! cd /etc/skel; then
        echo "WARNING: Failed attempt to cd into /etc/skel!"
      else
        /usr/bin/find . -type f |
	  while read f; do
            fDest=${f#.}
            if [ ! -e "${HOME}${fDest}" -a ! -L "${HOME}${fDest}" ]; then
              /usr/bin/install -D -p -v "${f}" "${HOME}/${fDest}"
            fi
          done
        unset fDest
      fi
    else
      echo "${HOME} could not be created."
      { [ -d "${TEMP}" ] && HOME="${TEMP}"; } ||
      { [ -d "${TMP}" ] && HOME="${TMP}"; } ||
      { [ -d /tmp ] && HOME=/tmp; } ||
      HOME=/
      echo "Setting HOME to ${HOME}."
    fi
  fi
  readonly PROFILEREAD=true
fi

# Make sure we start in home unless invoked by CHERE
if [ ! -z "${CHERE_INVOKING}" ]; then
  unset CHERE_INVOKING
else
  cd "${HOME}" || echo "WARNING: Failed attempt to cd into ${HOME}!"
fi

# Shell dependent settings
profile_d ()
{
  _LC_ALL_SET_="${LC_ALL+set}"
  _LC_SAVE_="${LC_ALL-null}"
  LC_ALL=C
  if [ "${_LC_SAVE_}" = "null" ]; then
    for file in /etc/profile.d/*.$1; do
      [ -e "${file}" ] && . "${file}"
    done
    unset LC_ALL
  else
    for file in /etc/profile.d/*.$1; do
      [ -e "${file}" ] && LC_ALL="${_LC_SAVE_}" . "${file}"
    done
    LC_ALL="${_LC_SAVE_}"
  fi
  unset file
  unset _LC_ALL_SET_
  unset _LC_SAVE_
}

HOSTNAME="$(/usr/bin/hostname)"
profile_d sh
if [ ! "x${BASH_VERSION}" = "x"  ]; then
  [ -f "/etc/bash.bashrc" ] && . "/etc/bash.bashrc"
elif [ ! "x${KSH_VERSION}" = "x" ]; then
  typeset -l HOSTNAME="$(/usr/bin/hostname)"
  [ "${PS1-null}" = "null" ] || PS1=$(print '\033]0;${PWD}\n\033[32m${USER}@${HOSTNAME} \033[33m${PWD/${HOME}/~}\033[0m\n$ ')
elif [ ! "x${ZSH_VERSION}" = "x" ]; then
  # zsh is in shell compatibility mode here, so we probably shouldn't do this
  profile_d zsh
elif [ ! "x${POSH_VERSION}" = "x" ]; then
  : # [ "${PS1-null}" = "null" ] || PS1="$ "
else
  : # [ "${PS1-null}" = "null" ] || PS1="$ "
fi

# export PROFILEREAD PATH ORIGINAL_PATH MANPATH INFOPATH USER TMP TEMP PRINTER HOSTNAME PS1 SHELL tmp temp
export PROFILEREAD PATH ORIGINAL_PATH INFOPATH USER TMP TEMP PRINTER HOSTNAME PS1 SHELL tmp temp

# Check to see if mkpasswd/mkgroup needs to be run try and cut down the emails
#   about this on the lists!
#
# The following are the conditions under which the group name special cases
#   will appear (where uid and gid are the effective user and group ids
#   for the current user, and pgsid is the primary group associated with the
#   SID for the current user):
#       mkpasswd:
#         gid is not in /etc/group
#         uid is not in /etc/passwd
#       passwd/group_GID_clash(<gid>/<pgsid>):
#         gid is not in /etc/group
#         uid is in /etc/passwd
#         pgsid is in /etc/group (and does not match gid)
#       mkgroup:
#         gid is not in /etc/group
#         uid is in /etc/passwd
#         pgsid is not in /etc/group
#
# If this message keeps appearing and you are sure it's a mistake (ie, don't
#   email about it!), comment out the test below.

#--------------------------------------------------------------------#
# KI7MT <ki7mt@yahoo.com> Edits:
# * Remove original passwd and group files from /etc/
# * Generate new passwd and group files for JTSDK-DOC based
#   on the current Windows %USERNAME% or $USER
#--------------------------------------------------------------------#

case "$(/usr/bin/id -ng)" in
mkpasswd )
  #echo "Your group is currently \"mkpasswd\".  This indicates that your"
  #echo "gid is not in /etc/group and your uid is not in /etc/passwd."
  #echo
  #echo "The /etc/passwd (and possibly /etc/group) files should be rebuilt."
  #echo "See the man pages for mkpasswd and mkgroup then, for example, run"
  #echo
  #echo "mkpasswd -l [-d] > /etc/passwd"
  #echo "mkgroup  -l [-d] > /etc/group"
  #echo
  #echo "Note that the -d switch is necessary for domain users."
  mkpasswd -l > /etc/passwd
  mkgroup -l > /etc/group
  touch "$HOME/.initial-setup" 
  echo ''
  echo -en ${C_G}'New User Setup Complete:' && echo -en ${C_R}" -->> RESTART REQUIRED <<--\n"${C_NC}
  echo ''
  echo "In order for your new [ $USER ] account to be completed,"
  echo 'you need to Re-Start C:\JTSDK\docenv'
  echo ''
  echo 'At the prompt, type: exit, then re-launch C:\JTSDK\docenv'
  echo ''
 ;;
passwd/group_GID_clash* )
  echo "Your group is currently \"passwd/group_GID_clash(gid/pgsid)\".  This"
  echo "indicates that your gid is not in /etc/group, but the pgsid (primary "
  echo "group associated with your SID) is in /etc/group."
  echo
  echo "The /etc/passwd (and possibly /etc/group) files should be rebuilt."
  echo "See the man pages for mkpasswd and mkgroup then, for example, run"
  echo
  echo "mkpasswd -l [-d] > /etc/passwd"
  echo "mkgroup  -l [-d] > /etc/group"
  echo
  echo "Note that the -d switch is necessary for domain users."
  ;;
mkgroup )
  #echo "Your group is currently \"mkgroup\".  This indicates that neither"
  #echo "your gid nor your pgsid (primary group associated with your SID)"
  #echo "is in /etc/group."
  #echo
  #echo "The /etc/group (and possibly /etc/passwd) files should be rebuilt."
  #echo "See the man pages for mkpasswd and mkgroup then, for example, run"
  #echo
  #echo "mkpasswd -l [-d] > /etc/passwd"
  #echo "mkgroup  -l [-d] > /etc/group"
  #echo
  #echo "Note that the -d switch is necessary for domain users."
  ;;
esac
