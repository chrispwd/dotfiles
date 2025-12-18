#!/usr/bin/env bash

function arch_install() {
    echo "You made it! (and you use arch btw)"
}

function linux_install() {

    # try various methods, in order of preference, to detect distro
    if type lsb_release >/dev/null 2>&1 ; then
        
        distro=$(lsb_release -i -s)
        
    elif [ -e /etc/os-release ] ; then
        
        distro=$(awk -F= '$1 == "ID" {print $2}' /etc/os-release)
        
    else
        
        echo "Could not find a distro release name." ; exit 1
    fi

    # convert to lowercase
    distro=$(printf '%s\n' "$distro" | LC_ALL=C tr '[:upper:]' '[:lower:]')

    # now do different things depending on distro
    case "$distro" in
        debian*)
            # commands-for-debian
            echo "commands-for-debian"
            ;;
        arch*)
            # commands-for-arch
            echo "commands-for-arch"
            arch_install
            ;;
        artix*)
            # commands-for-artix
            echo "commands-for-artix"
            ;;
        ubuntu*)
            # commands-for-ubuntu
            echo "commands-for-ubuntu"
            ;;
        mint*)
            # commands-for-mint
            echo "commands-for-mint"
            ;;
        *)
            echo "unknown distro: '$distro'" ; exit 1
            ;;
    esac

}

function run() {
    case $(uname -s) in
        "Linux")
            echo "You're likely chopped... and possibly unc."
            linux_install
            ;;
        "FreeBSD")
            echo "You're on a little devil."
            # freebsd_install
            ;;
        "OpenBSD")
            echo "You're on a puffer fish."
            # openbsd_install
            ;;
        "Darwin")
            echo "You're on a Mac."
            # macos_install
            ;;
        *)
            echo "OS not recognized. You may need to install packages manually, then add an
entry to this script once you're familiar with the OS/package manager."
            exit 1
    esac
}

run
