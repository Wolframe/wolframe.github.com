#! /usr/bin/awk -f
#
# Usage example:
#	./set-active.awk -v active_menu=contact ../snippets/header-slider.html.snip
#	cat ../snippets/header-slider.html.snip | ./set-active.awk -v active_menu=contact
#

BEGIN	{
	inMenu = 0
	replacements = 0
	if ( active_menu == "" )	{
		print "USAGE: ./set-active.awk -v active_menu=<menu> [header snipet]"
		exit 1
	}
}

/<!-- BEGIN MENU/	{ inMenu = 1; print; next }
/<!-- END MENU/		{ inMenu = 0 }

{
	if ( inMenu )	{
		if ( match( $0, active_menu ))	{
#			print "The line for " active_menu ":" $0
			replacements += gsub( "<li>", "<li class=\"active\">" )
			replacements += gsub( "<li class=\"last-child\">", "<li class=\"last-child active\">" )
			if ( replacemnts > 1 )	{
				print "ERROR: Replaced " replacements " elements. Last line: " $0
				exit 2
			}
#			print "Replaced " replacements " element on line: " $0
		}
		else	{
			gsub( "<li class=\"active\">", "<li>" )
			gsub( "<li class=\"active last-child\">", "<li class=\"last-child\">" )
			gsub( "<li class=\"last-child active\">", "<li class=\"last-child\">" )
		}
		print
	}
	else
		print
}
