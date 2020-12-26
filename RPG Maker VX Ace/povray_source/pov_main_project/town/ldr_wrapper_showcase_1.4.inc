//+kfi0 +kff3 +ki0 +kf1 +kc

#version 3.7

#declare NoRadiosity		= 1;	// not used currently
#declare L3Quality		= 3;	// Quality level, 0=BBox, 1=no refr, 2=normal, 3=studlogo, 4=stud2logo
#declare L3SW			= 0.5;	// Width of seam between two bricks
#declare L3Studs		= 1;	// 1=on 0=off
#declare L3Bumps		= 1;	// 1=on 0=off
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

//gamma_color_adjust(light_color)

//#include "fastrad.inc"		// slooowwwwwww!!!
#include "ldr_materials_1.4.inc"
#include "stdinc.inc"
#include "CIE.inc"			// http://www.ignorancia.org/en/index.php?page=Lightsys
#include "lightsys.inc"			// http://www.ignorancia.org/en/index.php?page=Lightsys
#include "lightsys_constants.inc"	// http://www.ignorancia.org/en/index.php?page=Lightsys

#declare light_lumens		= 2;					// float
#declare light_temp		= Daylight(6100);			// float
#declare light_color		= gamma_color_adjust(Light_Color(light_temp,light_lumens));

background {color rgb 0.8}

global_settings
{
	assumed_gamma	1.8
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
//		brightness	1.4
		brightness	pow(1.4,2.2)
		always_sample	no
		gray_threshold	0.8
		media		on
	}
}


// Floor:
object
{
	plane { y, 0 hollow }
	texture
	{
		pigment { color rgb <0.8,0.8,0.8> }
		finish { ambient 0.4 diffuse 0.4 }
	}
}
