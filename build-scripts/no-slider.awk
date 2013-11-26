#! /usr/bin/awk -f
#
# Usage example:
#	./no-slider.awk <header or footer snippet>
#

BEGIN	{ inSlider = 0 }

/<!-- BEGIN SLIDER/		{ inSlider = 1; next }
/<!-- END SLIDER/		{ inSlider = 0; next}
/<!-- Slider/			{ next }
/scripts\/responsiveslides/	{ next }
/scripts\/custom-slider.js/	{ next }

{
	if ( inSlider )
		next
	else
		print
}
