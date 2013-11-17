#! /usr/bin/awk -f

BEGIN	{ inMenu = 0 }

/<!-- BEGIN MENU -->/	{ inMenu = 1; print; next }

/<!-- END MENU -->/	{ inMenu = 0 }

{
	if ( inMenu )	{
		if ( match( $0, /Documentation/ ))
			print "Gogomarla: " $0
		else
			print "GOGOMARLA: " $0
	}
	else	print
}
