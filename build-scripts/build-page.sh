#!/bin/bash
#
# Build the page out of the snipets
#
# Invocation:
#	build-page -p page options...
# Options:
#	-p	page name
#	-s	with slider
#	-a	active menu
#	-n	no active menu
#	-h	help

SNIPDIR="../snippets"

# print the help
function printHelp	{
	echo "Usage:"
	echo "    $0 -p <snippet> -a <menu> [-s]	generate page with <menu> active [and slider]"
	echo "    $0 -p <snippet> -n [-s]	generate page with no active menu [and slider]"
	echo "    $0 -h				print this help and exit"
}

function buildPage	{
	if [ -f $SNIPDIR/$1 ]; then
		cat $SNIPDIR/header_$2.html.snip $SNIPDIR/$1 $SNIPDIR/footer.html.snip
	else
		echo
		echo "ERROR: File $SNIPDIR/$1 does not exist."
		echo
		exit 1
	fi
}


NO_MENU=0
# Check the arguments
while getopts :p:a:nsh option
do
	case "${option}"
	in
		p)	SNIPPET=${OPTARG}
			;;
		a)	ACTIVE_MENU=${OPTARG}
			;;
		n)	NO_MENU=1
			;;
		s)	WITH_SLIDER=1
			;;
		h)	printHelp
			exit
			;;
		esac
done

if [ "x$SNIPPET" == "x" ]; then
	echo
	echo "ERROR: No snippet specified."
	echo
	printHelp
	exit 1
fi

if [ "$NO_MENU" == "0" ]; then
	if [ "x$ACTIVE_MENU" == "x" ]; then
		echo
		echo "ERROR: No active menu or -n option specified."
		echo
		printHelp
		exit 1
	else
		buildPage $SNIPPET.html.snip $ACTIVE_MENU > $SNIPPET.html
	fi
else
	buildPage $SNIPPET.html.snip > $SNIPPET.html
fi

