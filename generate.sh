#!/usr/bin/env bash
#• -n num_of_pass • -m min_pass_len • -x max_pass_len

password_dict="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

#the length of a string =${#string}
dict_len=${#password_dict}

num_of_pass=10
min_pass_len=10
max_pass_len=12

checknumber(){
	if [[ $2 =~ ^-?[0-9]+$ ]] ; then
		return
	else
		>&2 echo "please put integer after $1"
		exit 2
	fi
}

while [[ $# -gt 0 ]]; do
	case $1 in
		-n )
			checknumber $1 $2
			num_of_pass=$2
			shift	
		;;
		-m )
			checknumber $1 $2
			min_pass_len=$2
			shift
		;;
		-x )
			checknumber $1 $2
			max_pass_len=$2
			shift
		;;
		*)
			>&2 echo "Usage: ./generate [-n num_of_pass] [-m min_pass_len] [-x max_pass_len]"
			exit 2
	esac
	shift
done

if [[ $min_pass_len -gt $max_pass_len ]] ; then
	min_pass_len=$max_pass_len
fi

count=$num_of_pass

while [[ $count -gt 0 ]] ; do
	range=$(( $max_pass_len - $min_pass_len +1 ))
	password_len=$(( RANDOM % range + $min_pass_len))
	password=""
	while [[ $password_len -gt 0 ]] ; do
		index=$(( RANDOM % $dict_len ))
		char=${password_dict:$index:1}
		password="$password$char"
		password_len=$(( password_len - 1 ))
	done
	echo $password
	count=$(( count - 1 ))
done
