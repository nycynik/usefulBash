#!/usr/bin/env bash

# check for yes or no, with only capitol Y
function strongyncheck() {
  while true; do
    read -p "$1 (Y/n) " ready
    case $ready in
      [Y]* ) break;;
      [Nn]* ) break;;
      * ) echo "Please choose (Y)es or (N)o. (Y/n)";;
    esac
  done
}

function yncheck() {
    while true; do
        read -p "$1 (y/n) " yn
        case $yn in
            [Yy]* ) break;;
            [Nn]* ) break;;
            * ) echo "Please choose (Y)es or (N)o. (y/n)";;
        esac
    done
}

# ask a question
# Arguments: $1 -> The prompt
#            $2 -> The default answer (optional)
# Variables: response -> set to the user response
prompt_resp ()
{
    if [ $# -lt 1 ]
    then
	puse "promp_resp prompt [default answer]"
	return 1
    fi

    response=""
    def_arg="${2}"

    while :
    do
	printf "${1} ? "
	test -n "${def_arg}" -a "${def_arg}" != "-" && printf "[${def_arg}] "

	read response
	test -n "${response}" && break

	if [ -z "${response}" -a -n "${def_arg}" ]
	then
	    response="${def_arg}"
	    break
	fi
    done

    test "${response}" = "-" && response=""

    export response
    unset def_arg
 }
