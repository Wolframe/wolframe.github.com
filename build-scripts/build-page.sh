#!/bin/bash
#
# Build the page out of the snipets
#
# Invocation:
#	build-page -p page options...
# Options:
#	-f	snippet file
#	-s	with slider
#	-a	active menu
#	-n	no active menu
#	-h	help


SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SNIPDIR="$SCRIPT_DIR/../snippets"

# print the help
function printHelp	{
	echo "Usage:" >&2
	echo "    $0 -f <snippet file> -a <menu> [-s]	generate page with <menu> active [and slider]" >&2
	echo "    $0 -f <snippet file> -n [-s]		generate page with no active menu [and slider]" >&2
	echo "    $0 -h					print this help and exit" >&2
}

function buildPage	{
	if [ -f $1 ]; then
#		cat $SNIPDIR/header-slider.html.snip $SNIPDIR/$1 $SNIPDIR/footer-slider.html.snip | \
#			./set-active.awk -v active_menu="$2"
		cat $SNIPDIR/header-slider.html.snip $1 $SNIPDIR/footer-slider.html.snip | \
			$SCRIPT_DIR/set-active.awk -v active_menu="$2"
	else
		echo >&2
#		echo "ERROR: File $SNIPDIR/$1 does not exist." >&2
		echo "ERROR: File $1 does not exist." >&2
		echo >&2
		exit 1
	fi
}


NO_MENU=0
WITH_SLIDER=0

# Check the arguments
while getopts :f:a:nsh option
do
	case "${option}"
	in
		f)	SNIPPET=${OPTARG}
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
	echo >&2
	echo "ERROR: No snippet specified." >&2
	echo >&2
	printHelp
	exit 1
fi

if [ "$NO_MENU" == "0" ]; then
	if [ "x$ACTIVE_MENU" == "x" ]; then
		echo >&2
		echo "ERROR: No active menu or -n option specified." >&2
		echo >&2
		printHelp
		exit 1
	fi
else
	ACTIVE_MENU="none"
fi

if [ "$WITH_SLIDER" == "0" ]; then
	buildPage $SNIPPET $ACTIVE_MENU | $SCRIPT_DIR/no-slider.awk
else
	buildPage $SNIPPET $ACTIVE_MENU
fi
