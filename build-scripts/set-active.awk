#! /usr/bin/awk -f
#
# Usage example:
#	./set-active.awk -v active_menu=contact ../snippets/header-slider.html.snip
#

BEGIN	{
	inMenu = 0
}

/<!-- BEGIN MENU/	{ inMenu = 1; print; next }
/<!-- END MENU/		{ inMenu = 0 }

{
	if ( inMenu )	{
		if ( match( $0, active_menu ))	{
			print "The line for " active_menu ":" $0
			replacements = gsub( "<li>", "<li class=\"active\">" )
			replacements += gsub( "<li class=\"last-child\">", "<li class=\"active last-child\">" )
			print "Replaced " replacements " by: " $0
		}
		else
			print
	}
	else	print
}
