#!/bin/bash
####### Sponsored by Codejugglers ###################
######### http://codejugglers.nl ####################
## By Arjan van Lent, aka Socialdefect ##############
########### Licence: GPLv3+ #########################
## Get latest licence at http://gnu.org/licence #####
### Don't Forget To Share!!!!!! #####################

## Rasp-Get is a simple library that provides a single command that
## lets you control several package managers so you won't have
## to remember all PM commands for multiple Linux distributions.

    echo

if [ `whoami` != 'root' ] ; then
    echo 'This command needs to be run by root!'
    echo 'Run me using sudo or su -c'
    exit 1
fi

## Static Variables
PATH="`pwd`:$PATH"

## Determine the running distribution. Will be overwritten when
## it's value is set in the config file
WhereAmI(){
    PMs='0'
    if [ -f `which apt-get` ] ; then
        DISTRO='debian'
            for pkgman in aptitude gdebi ; do
            if [ -f `which $pkgman` ] ; then
                PMs="$PMs $pkgman"
            fi
            done
    elif [ -f `which pacman` ] ; then
        DISTRO='arch'
            if [ -f `which yaourt` ] ; then
                PMs="yaourt"
            fi
    elif [ -f `which yum` ] ; then
        DISTRO='rhel'
    fi
    echo "$DISTRO" > /var/rasp-get.dist
    echo "$PMs" > /var/rasp-get.dist
}

if [ -f /var/rasp-get.dist ] ; then
    echo "Found distribution info in: /var/rasp-get.dist"
else
    WhereAmI
fi

# Load Main Configuration
if [ -f /etc/rasp-get/rasp-get.conf ] ; then
    . /etc/rasp-get/rasp-get.conf
elif [ -f rasp-get.conf ] ; then
    . rasp-get.conf
fi

## Load User Config
if [ -f "~/.rasp-get.conf" ] ; then
    . "~/.rasp-get.conf"
fi

## Load distro specific functions
if [ -f /etc/rasp-get/"$DISTRO".functions ] ; then
    . /etc/rasp-get/"$DISTRO".functions
elif [ -f "$DISTRO".functions ] ; then
    . "$DISTRO".functions
else
    echo
    echo 'You are using an unsupported distribution'
    echo 'Please create a function file or set the DISTRO variable'
    exit 1
fi

help(){
    echo
cat <<-EOF
    Usage:
        rasp-get [Action] [FileName(s) or Path on which to execute the action]
    
        Action:     (Alias:)   Descryption:
            install               Install a package or a list of packages
            remove (uninstall)    Remove a package or a list of packages
            localinstall (installpkg)  Install a local package or port
            wwwinstall            Download package from url and perform
                                  a localinstall
            sync                  Refresh the configured repositories
            upgrade               Update all upgradable packages
            search                Search the repositories for a package
            clean                 Clean the download cache
            depclean              Remove and clean orphaned packages
            help (--help) (-h)    Show this help text
EOF
}

--help(){
    help
}

-h(){
    help
}

if [ -e "$1" ] ; then
    help
    exit 0
fi

## Run function with rest of the given arguments
"$1" ${@:2}

exit $?