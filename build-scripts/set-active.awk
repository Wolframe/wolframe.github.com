##! /usr/bin/awk -f

BEGIN	{ inMenu = 0 }

/<!-- BEGIN MENU -->/	{ inMenu = 1; print; next }

/<!-- END MENU -->/	{ inMenu = 0 }

{
	if ( inMenu )	{
		if ( match( $0, $ggg ))
			print "Gogomarla: " $ggg $0
		else
			print "GOGOMARLA: " $ggg $0
	}
	else	print
}
