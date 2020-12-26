#version 3.7

// -------------------------------------------------------------
// Standard includes

#include "stdinc.inc"
#include "textures.inc"
#include "woods.inc"
#include "stones.inc"
#include "glass.inc"
#include "metals.inc"

// -------------------------------------------------------------
// Default values. These can be pre-declared in your scene.

#ifndef (Use_Radiosity)		#declare Use_Radiosity		= 0;			#end	// turns radiosity on/off. (Recommend leaving this off. have to decrease diffuse if it is on.)
#ifndef (Use_Shadows)		#declare Use_Shadows		= 0;			#end	// turns shadows on/off. (Recommend turning this off for walls that are always covered by rooves.) Not used often.
#ifndef (Show_GridMarker)	#declare Show_GridMarker	= 0;			#end	// use this to orient the sprite within a template
#ifndef (Show_BasicFloor)	#declare Show_BasicFloor	= 0;			#end	// renders a plain, 1-tile floor beneath the scene.
#ifndef (Show_AxisMarker)	#declare Show_AxisMarker	= 0;			#end	// renders crosshairs in the center of the scene
#ifndef (Seed)			#declare Seed			= seed(8829464);	#end	// the default seed value for random functions.
#ifndef (Rand_Colors)		#declare Rand_Colors		= true;		#end	//

#declare TileWidth		= 640;
#declare TilesNum		= 4;
#declare L3Version		= 1.4;
#declare L3Quality		= 1;		// Quality level, 0=BBox, 1=no refr, 2=normal, 3=studlogo, 4=stud2logo
#declare L3SW			= 0;		// Width of seam between two bricks
#declare L3Studs		= 0;		// 1=on 0=off
#declare L3Bumps		= 0;		// 1=on 0=off
#declare L3Ambient		= 0.1;
#declare L3Diffuse		= 0.9;
#declare L3Ior			= 1.25;
#declare L3NormalBumps		= normal { bumps 0.01 scale 20 }
#declare L3NormalSlope		= normal { bumps 0.3 scale 0.5 }
#declare QUAL			= L3Quality;	// Quality level, 0=BBox, 1=no refr, 2=normal, 3=studlogo
#declare SW			= L3SW;		// Width of seam between two bricks
#declare STUDS			= L3Studs;	// 1=on 0=off
#declare BUMPS			= L3Bumps;	// 1=on 0=off
#declare BUMPNORMAL		= L3NormalBumps;
#declare AMB			= L3Ambient;
#declare DIF			= L3Diffuse;
#declare L3Phong		= 0.5;
#declare L3PhongSize		= 40;
#declare L3Reflection		= 0.08;	// was 0.08

//#include "fastrad.inc"		// slooowwwwwww!!!
#include "stdinc.inc"
#include "CIE.inc"			// http://www.ignorancia.org/en/index.php?page=Lightsys
#include "lightsys.inc"			// http://www.ignorancia.org/en/index.php?page=Lightsys
#include "lightsys_constants.inc"	// http://www.ignorancia.org/en/index.php?page=Lightsys

#declare light_lumens		= 2;					// float
#declare light_temp		= Daylight(6100);			// float
#declare light_color		= Light_Color(light_temp,light_lumens);

// -------------------------------------------------------------
// Set direction based on the clock value.

#declare Count = clock * 16;
#declare No1 = mod(Count,4);
#declare No2 = floor(Count/4);
#if ((No1 = 1) | (No1 = 3))
	#ifndef (North) #declare North = true; #end		// Is the object connected on this side?
#else
	#ifndef (North) #declare North = false; #end
#end
#if ((No1 = 2) | (No1 = 3))
	#ifndef (East) #declare East  = true; #end		// ...
#else
	#ifndef (East) #declare East  = false; #end
#end
#if ((No2 = 1) | (No2 = 3))
	#ifndef (South) #declare South = true; #end		// ...
#else
	#ifndef (South) #declare South = false; #end
#end
#if ((No2 = 2) | (No2 = 3))
	#ifndef (West) #declare West  = true; #end		// ...
#else
	#ifndef (West) #declare West  = false; #end
#end


// -------------------------------------------------------------
// Misc. scene settings

#if (Use_Radiosity = 1)
	global_settings
	{
		assumed_gamma	1
		adc_bailout	0.005
		max_trace_level	50
		ambient_light	0
		radiosity
		{
			pretrace_start	0.08
			pretrace_end	0.02	// Try 0.01 if you see random black spots.
			count		20
			error_bound	1
			recursion_limit	1
			normal		on
//			brightness	1.4
			brightness	pow(1.4,2.2)
			always_sample	no
			gray_threshold	0.8
			media		on
		}
	}
#else
	global_settings
	{
		assumed_gamma	1
	}
#end

#include "ldr_materials_shadow_1.4.inc"

//background {color rgb 1}	// doesn't work with Alpha

/*
// heavy fog
fog
{
	fog_type 2
	color rgb <.7, .8, .9>
	distance 300
	fog_alt 50
}
*/


// -------------------------------------------------------------
// Camera

#declare cam_mode = 1;
#switch (cam_mode)
	// orthographic
	#case (0)
		#declare Diagonal_horz		= cos(pi/4);
		#declare Diagonal_vert		= sin(pi/4);
		camera
		{
			orthographic
			up		-y * Diagonal_horz * TileWidth * 2 * TilesNum * image_height/image_width
			right		+x * Diagonal_horz * TileWidth * 2 * TilesNum
			location	-z * 4096 * TilesNum
			direction	+z * 4096 * TilesNum
			rotate		-x * 30
			rotate		+y * 45
		}
	#break
	// oblique
	#case (1)
		#local cam_aspc =     image_width/image_height;
		#local cam_dist =     100000;
		#local cam_area =     TileWidth * TilesNum;
		#local cam_loca =     -z * cam_dist;
		#local cam_dirc =     +z * cam_dist;
		#local cam_upvc =     -y * cam_area * sind(045);
		#local cam_rgvc =     +x * cam_area * cam_aspc;
		#local cam_tran = transform
		{
			rotate		-x * 045
//			translate	-z * 160
//			translate	+x * 160
		}
		camera
		{
			orthographic
			location	cam_loca
			direction	cam_dirc
			up		cam_upvc
			right		cam_rgvc
			transform {cam_tran}
		}
	#break
#end
// -------------------------------------------------------------
// Lights. There are several methods inconsistantly used within GearHead. I try and mimic them here.

plane
{
	y, 0
	pigment {color srgb 1}
	finish
	{
		ambient 0
		diffuse 1
	}
}

light_source
{
	-z * 40960
	color srgb 1
	rotate		-x * 60
	rotate		+y * 45
	parallel
}


// -------------------------------------------------------------
// Orientation markers

#declare Axis_Markers = union
{
	sphere
	{
		0,2
		pigment{color rgb <0,0,0,>}
	}
	cylinder
	{
		0,+x*1024,2
		pigment{color rgb <1,0,0,>}
	}
	cylinder
	{
		0,-y*1024,2
		pigment{color rgb <0,1,0,>}
	}
	cylinder
	{
		0,+z*1024,2
		pigment{color rgb <0,0,1,>}
	}
}

#declare Grid_Marker = polygon
{
	#local Wid = TileWidth/4;
	#local NW = <0000,+000,-Wid,>;
	#local NE = <-Wid,+000,-Wid,>;
	#local SE = <-Wid,+000,0000,>;
	#local SW = <-Wid/2,+000,-Wid/2,>;
	4, NW, NE, SE, SW
	translate x * TileWidth
	translate z * TileWidth
}

#declare Basic_Floor = polygon
{
	#local Wid = TileWidth/4;
	#local NW = <+Wid,+000,-Wid,>;
	#local NE = <-Wid,+000,-Wid,>;
	#local SE = <-Wid,+000,+Wid,>;
	#local SW = <+Wid,+000,+Wid,>;
	4, NW, NE, SE, SW
}

#declare Clip_Cylinder = cylinder
{
	#local Hgh = 24 / sin(pi/3);
	#local Rad = cos(pi/4) * TileWidth;
	0, y * Hgh, Rad
	scale y * 2
}

#if (Show_AxisMarker = 1)
	object
	{
		Axis_Markers
	}
#end

#if (Show_GridMarker = 1)
	object
	{
		Grid_Marker
		uv_mapping
		pigment {color rgbt <1,0,1,1/2>}
	}
#end

#if (Show_BasicFloor = 1)
	object
	{
		Basic_Floor
		uv_mapping
		pigment {color rgbt <1,0,1,1/2>}
	}
#end

#if (Use_Shadows = 1)
	object
	{
		Basic_Floor
		pigment
		{
			cylindrical
			color_map
			{
				[0 rgbt <0,0,0,1>]
				[1 rgbt <0,0,0,1/2>]
			}
			scale TileWidth/2
		}
	}
#end
