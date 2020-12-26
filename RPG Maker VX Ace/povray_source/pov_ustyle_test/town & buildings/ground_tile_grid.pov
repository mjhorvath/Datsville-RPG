#include "axes_macro.inc"

// the coordinate grid and axes
Axes_Macro
(
	20480,		// Axes_axesSize,	The distance from the origin to one of the grid's edges.	(float)
	640,		// Axes_majUnit,	The size of each large-unit square.	(float)
	8,		// Axes_minUnit,	The number of small-unit squares that make up a large-unit square.	(integer)
	4/20480,	// Axes_thickRatio,	The thickness of the grid lines (as a factor of axesSize).	(float)
	on,		// Axes_aBool,		Turns the axes on/off. (boolian)
	on,		// Axes_mBool,		Turns the minor units on/off. (boolian)
	off,		// Axes_xBool,		Turns the plane perpendicular to the x-axis on/off.	(boolian)
	on,		// Axes_yBool,		Turns the plane perpendicular to the y-axis on/off.	(boolian)
	off		// Axes_zBool,		Turns the plane perpendicular to the z-axis on/off.	(boolian)
)

object
{
	Axes_Object
	translate y * -0.05
//	no_shadow
//	no_reflection
}

#include "building_mapsize_noshadow.inc"
