// Generated by L3P v1.4 BETA 20131202 (Win32)  (C) 1998-2013 Lars C. Hassing SP.lars@AM.hassings.dk
// L3P website:  http://www.hassings.dk/l3/l3p.html
// LDraw.org:    http://www.ldraw.org
// Date:         Fri Aug 22 22:42:08 2014
// Input file:   D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_015_shortblaster.ldr
// Title:        Untitled
// Author:       MLCad
// ModelDir:     D:\Datsville RPG\trunk\povray_source\pov_main_project\items
// WorkDir:      D:\Datsville RPG\trunk\povray_source\pov_main_project\items
// LDRAWDIR:     E:\Programs Windows\LDraw (LDRAWDIR environment variable)
// SearchDirs:   (Default)
// SearchDir1:   D:\Datsville RPG\trunk\povray_source\pov_main_project\items\ (0x10)
// SearchDir2:   E:\Programs Windows\LDraw\P\ (0x9)
// SearchDir3:   E:\Programs Windows\LDraw\PARTS\ (0x4)
// SearchDir4:   E:\Programs Windows\LDraw\MODELS\ (0x0)
// ldconfig.ldr: E:\Programs Windows\LDraw\ldconfig.ldr
// Commandline:  "E:\Programs Windows\l3p14beta\l3p.exe" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_015_shortblaster.ldr" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_015_shortblaster.pov" -o -ic -il -ibitems.inc -ieweapons_camera.inc

#if (version < 3.1)
	#error "This POV code requires at least version 3.1\n"
#end

//// Defines

#declare L3Version = 1.4;

#declare L3Quality = 2;  // Quality level, 0=BBox, 1=no refr, 2=normal, 3=studlogo, 4=stud2logo

#declare L3SW = 0.5;  // Width of seam between two bricks

#declare L3Studs = 1;  // 1=on 0=off

#declare L3Bumps = 0;  // 1=on 0=off


#declare L3Ambient = 0.4;
#declare L3Diffuse = 0.4;
#declare L3Ior     = 1.25;
#declare L3NormalBumps = normal { bumps 0.01 scale 20 }
#declare L3NormalSlope = normal { bumps 0.3 scale 0.5 }


#declare L3SWT = (L3SW ? L3SW : 0.001);  // At least a small seam when transparent

#declare L3Logo = union {
	sphere {<-59,0,-96>,6}
	cylinder {<-59,0,-96>,<59,0,-122>,6 open}
	sphere {<59,0,-122>,6}
	cylinder {<59,0,-122>,<59,0,-84>,6 open}
	sphere {<59,0,-84>,6}

	sphere {<-59,0,-36>,6}
	cylinder {<-59,0,-36>,<-59,0,1>,6 open}
	sphere {<-59,0,1>,6}
	cylinder {<0,0,-49>,<0,0,-25>,6 open}
	sphere {<0,0,-25>,6}
	sphere {<59,0,-62>,6}
	cylinder {<59,0,-62>,<59,0,-24>,6 open}
	sphere {<59,0,-24>,6}
	cylinder {<-59,0,-36>,<59,0,-62>,6 open}

	sphere {<-35.95,0,57>,6}
	torus {18.45,6 clipped_by{plane{<40,0,-9>,0}} translate<-40,0,39>}
	cylinder {<-44.05,0,21>,<35.95,0,3>,6 open}
	torus {18.45,6 clipped_by{plane{<-40,0,9>,0}} translate<40,0,21>}
	cylinder {<44.05,0,39>,<0,0,49>,6 open}
	sphere {<0,0,49>,6}
	cylinder {<0,0,49>,<0,0,34>,6 open}
	sphere {<0,0,34>,6}

	torus {18.45,6 clipped_by{plane{<40,0,-9>,0}} translate<-40,0,99>}
	cylinder {<-44.05,0,81>,<35.95,0,63>,6 open}
	torus {18.45,6 clipped_by{plane{<-40,0,9>,0}} translate<40,0,81>}
	cylinder {<44.05,0,99>,<-35.95,0,117>,6 open}

	scale 4.5/128
}


//// IncludeFile AtBeginning
#include "items_settings.inc"



//// Finishes
#ifndef (L3FinishOpaque)
#declare L3FinishOpaque = finish {
	ambient L3Ambient
	diffuse L3Diffuse
	#if (L3Quality >= 2)
		phong 0.5
		phong_size 40
		reflection 0.08
	#end
}
#end

#ifndef (L3FinishChrome)
#declare L3FinishChrome = finish {
	ambient 0.25
	diffuse 0.6
	#if (L3Quality >= 2)
		brilliance 5
		metallic
		specular 0.80
		roughness 1/100
		reflection 0.65
	#end
}
#end

#ifndef (L3FinishPearlescent)
//Not supported yet, using Opaque
#declare L3FinishPearlescent = finish { L3FinishOpaque }
#end

#ifndef (L3FinishRubber)
#declare L3FinishRubber = finish {
	ambient L3Ambient
	diffuse L3Diffuse
	#if (L3Quality >= 2)
		phong 0.1
		phong_size 10
		reflection 0
	#end
}
#end

#ifndef (L3FinishMatte_metallic)
//Not supported yet, using Opaque
#declare L3FinishMatte_metallic = finish { L3FinishOpaque }
#end

#ifndef (L3FinishMetal)
//Not supported yet, using Opaque
#declare L3FinishMetal = finish { L3FinishOpaque }
#end

#ifndef (L3FinishTransparent)
#declare L3FinishTransparent = finish {
	ambient L3Ambient
	diffuse L3Diffuse
	#if (L3Quality >= 2)
		phong 0.5
		phong_size 40
		reflection 0.2
	#end
}
#end



//// Macros
#ifndef (L3TextureOpaqueRGB)
#macro L3TextureOpaqueRGB(r,g,b)
texture {
	pigment { rgb <r/255,g/255,b/255> }
	finish { L3FinishOpaque }
	#if (L3Bumps & (L3Quality > 1)) normal { L3NormalBumps } #end
}
#end
#end

#ifndef (L3TextureChromeRGB)
#macro L3TextureChromeRGB(r,g,b)
texture {
	pigment { rgb <r/255,g/255,b/255> }
	finish { L3FinishChrome }
	#if (L3Bumps & (L3Quality > 1)) normal { L3NormalBumps } #end
}
#end
#end

#ifndef (L3TexturePearlescentRGB)
#macro L3TexturePearlescentRGB(r,g,b)
texture {
	pigment { rgb <r/255,g/255,b/255> }
	finish { L3FinishPearlescent }
	#if (L3Bumps & (L3Quality > 1)) normal { L3NormalBumps } #end
}
#end
#end

#ifndef (L3TextureRubberRGB)
#macro L3TextureRubberRGB(r,g,b)
texture {
	pigment { rgb <r/255,g/255,b/255> }
	finish { L3FinishRubber }
	#if (L3Bumps & (L3Quality > 1)) normal { L3NormalBumps } #end
}
#end
#end

#ifndef (L3TextureMatte_metallicRGB)
#macro L3TextureMatte_metallicRGB(r,g,b)
texture {
	pigment { rgb <r/255,g/255,b/255> }
	finish { L3FinishMatte_metallic }
	#if (L3Bumps & (L3Quality > 1)) normal { L3NormalBumps } #end
}
#end
#end

#ifndef (L3TextureMetalRGB)
#macro L3TextureMetalRGB(r,g,b)
texture {
	pigment { rgb <r/255,g/255,b/255> }
	finish { L3FinishMetal }
	#if (L3Bumps & (L3Quality > 1)) normal { L3NormalBumps } #end
}
#end
#end

#ifndef (L3TextureTransparentRGBA)
#macro L3TextureTransparentRGBA(r,g,b,a)
// Alpha -> Filter: 255 -> 1.00, 128 -> 0.85, 0 -> 0
#local f = (a >= 128 ? 0.85 + (a-128) * 0.15 / (255-128) : a * 0.85 / 255);
texture {
	pigment { rgb <r/255,g/255,b/255> #if (L3Quality > 1) filter f #end }
	finish { L3FinishTransparent }
	#if (L3Bumps & (L3Quality > 1)) normal { L3NormalBumps } #end
}
#end
#end

#ifndef (L3TextureSlope)
#macro L3TextureSlope(tex)
texture {
	tex
	#if (L3Quality > 1) normal { L3NormalSlope } #end
}
#end
#end

#ifndef (L3Material)
#macro L3Material(tex)
material {
	texture { tex }
}
#end
#end

#ifndef (L3MaterialT)
#macro L3MaterialT(tex)
material {
	texture { tex }
	#if (L3Quality > 1)
		interior { ior L3Ior }
	#end
}
#end
#end



//// Color 7 Light_Gray (from ldconfig.ldr)
#ifndef (L3Texture7)
#declare L3Texture7 = L3TextureOpaqueRGB(155,161,157)
#end
#ifndef (L3Texture7_slope)
#declare L3Texture7_slope = L3TextureSlope(L3Texture7)
#end
#ifndef (L3Color7)
#declare L3Color7 = L3Material(L3Texture7)
#end
#ifndef (L3Color7_slope)
#declare L3Color7_slope = L3Material(L3Texture7_slope)
#end


//// Color 0 Black (from ldconfig.ldr)
#ifndef (L3Texture0)
#declare L3Texture0 = L3TextureOpaqueRGB(5,19,29)
#end
#ifndef (L3Texture0_slope)
#declare L3Texture0_slope = L3TextureSlope(L3Texture0)
#end
#ifndef (L3Color0)
#declare L3Color0 = L3Material(L3Texture0)
#end
#ifndef (L3Color0_slope)
#declare L3Color0_slope = L3Material(L3Texture0_slope)
#end


//// Primitive rect1.dat
#ifndef (rect1_dot_dat)
#declare rect1_dot_dat = object {
// Rectangle with 1 Edge
// Name: rect1.dat
// Author: Chris Dee [cwdee]
// !LDRAW_ORG Primitive UPDATE 2010-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2003-12-19 [PTadmin] Official Update 2003-03
// !HISTORY 2007-06-24 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
// !HISTORY 2010-01-17 [mikeheide] changed winding to CCW
// !HISTORY 2010-04-05 [PTadmin] Official Update 2010-01
	mesh {
		triangle { <-1,0,1>, <-1,0,-1>, <1,0,-1> }
		triangle { <1,0,-1>, <1,0,1>, <-1,0,1> }
	}
}
#end // ifndef (rect1_dot_dat)


//// Primitive 4-4cyli.dat
#ifndef (_4_dash_4cyli_dot_dat)
#declare _4_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open }
#end // ifndef (_4_dash_4cyli_dot_dat)


//// Primitive 4-4ndis.dat
#ifndef (_4_dash_4ndis_dot_dat)
#declare _4_dash_4ndis_dot_dat = disc { <0,0,0>, <0,1,0>, 2, 1 clipped_by { box { <-1,-1,-1>, <1,1,1> } } }
#end // ifndef (_4_dash_4ndis_dot_dat)


//// Primitive 4-4con1.dat
#ifndef (_4_dash_4con1_dot_dat)
#declare _4_dash_4con1_dot_dat = cone { <0,0,0>, 2, <0,1,0>, 1 open }
#end // ifndef (_4_dash_4con1_dot_dat)


//// Primitive 4-4disc.dat
#ifndef (_4_dash_4disc_dot_dat)
#declare _4_dash_4disc_dot_dat = disc { <0,0,0>, <0,1,0>, 1 }
#end // ifndef (_4_dash_4disc_dot_dat)


//// Primitive 2-4ndis.dat
#ifndef (_2_dash_4ndis_dot_dat)
#declare _2_dash_4ndis_dot_dat = disc { <0,0,0>, <0,1,0>, 2, 1 clipped_by { box { <-1,-1,0>, <1,1,1> } } }
#end // ifndef (_2_dash_4ndis_dot_dat)


//// Primitive 2-4cyli.dat
#ifndef (_2_dash_4cyli_dot_dat)
#declare _2_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open clipped_by { plane { -z, 0 } } }
#end // ifndef (_2_dash_4cyli_dot_dat)


//// Primitive 2-8sphe.dat
#ifndef (_2_dash_8sphe_dot_dat)
#declare _2_dash_8sphe_dot_dat = sphere { <0,0,0>, 1 clipped_by { box { <-1,0,0>, <2,2,2> } } }
#end // ifndef (_2_dash_8sphe_dot_dat)


//// Primitive rect.dat
#ifndef (rect_dot_dat)
#declare rect_dot_dat = object {
// Rectangle
// Name: rect.dat
// Author: James Jessiman
// !LDRAW_ORG Primitive UPDATE 2010-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2002-04-05 [hafhead] Added BFC statement
// !HISTORY 2002-04-25 [PTadmin] Official Update 2002-02
// !HISTORY 2007-06-24 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
// !HISTORY 2010-01-17 [mikeheide] changed winding to CCW
// !HISTORY 2010-04-05 [PTadmin] Official Update 2010-01
	mesh {
		triangle { <-1,0,1>, <-1,0,-1>, <1,0,-1> }
		triangle { <1,0,-1>, <1,0,1>, <-1,0,1> }
	}
}
#end // ifndef (rect_dot_dat)


//// Primitive rect2p.dat
#ifndef (rect2p_dot_dat)
#declare rect2p_dot_dat = object {
// Rectangle with 2 Parallel Edges
// Name: rect2p.dat
// Author: Donald Sutter [technog]
// !LDRAW_ORG Primitive UPDATE 2010-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2003-08-01 [PTadmin] Official Update 2003-02
// !HISTORY 2007-06-24 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
// !HISTORY 2010-01-17 [mikeheide] changed winding to CCW
// !HISTORY 2010-04-05 [PTadmin] Official Update 2010-01
	mesh {
		triangle { <-1,0,1>, <-1,0,-1>, <1,0,-1> }
		triangle { <1,0,-1>, <1,0,1>, <-1,0,1> }
	}
}
#end // ifndef (rect2p_dot_dat)


//// Primitive rect2a.dat
#ifndef (rect2a_dot_dat)
#declare rect2a_dot_dat = object {
// Rectangle with 2 Adjacent Edges
// Name: rect2a.dat
// Author: Chris Dee [cwdee]
// !LDRAW_ORG Primitive UPDATE 2010-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2003-12-19 [PTadmin] Official Update 2003-03
// !HISTORY 2007-06-24 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
// !HISTORY 2010-01-17 [mikeheide] changed winding to CCW
// !HISTORY 2010-04-05 [PTadmin] Official Update 2010-01
	mesh {
		triangle { <-1,0,1>, <-1,0,-1>, <1,0,-1> }
		triangle { <1,0,-1>, <1,0,1>, <-1,0,1> }
	}
}
#end // ifndef (rect2a_dot_dat)


//// Primitive box5.dat
#ifndef (box5_dot_dat)
#declare box5_dot_dat = object {
// Box with 5 Faces and All Edges
// Name: box5.dat
// Author: James Jessiman
// !LDRAW_ORG Primitive UPDATE 2012-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2002-04-03 [sbliss] Modified for BFC compliance
// !HISTORY 2002-04-25 [PTadmin] Official Update 2002-02
// !HISTORY 2007-06-24 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
// !HISTORY 2012-02-16 [Philo] Changed to CCW
// !HISTORY 2012-03-30 [PTadmin] Official Update 2012-01
	mesh {
		triangle { <-1,1,1>, <1,1,1>, <1,1,-1> }
		triangle { <1,1,-1>, <-1,1,-1>, <-1,1,1> }
		triangle { <-1,1,1>, <-1,0,1>, <1,0,1> }
		triangle { <1,0,1>, <1,1,1>, <-1,1,1> }
		triangle { <-1,1,-1>, <-1,0,-1>, <-1,0,1> }
		triangle { <-1,0,1>, <-1,1,1>, <-1,1,-1> }
		triangle { <1,1,-1>, <1,0,-1>, <-1,0,-1> }
		triangle { <-1,0,-1>, <-1,1,-1>, <1,1,-1> }
		triangle { <1,1,1>, <1,0,1>, <1,0,-1> }
		triangle { <1,0,-1>, <1,1,-1>, <1,1,1> }
	}
}
#end // ifndef (box5_dot_dat)


//// Part 58247.dat
#ifndef (_58247_dot_dat)
#declare _58247_dot_dat = #if (L3Quality = 0) box { <-4,-28.1573,-36.7776>, <4,6.0001,23.5741> } #else union {
// Minifig Gun Short Blaster
// Name: 58247.dat
// Author: Christopher Bulliner [CMB27]
// !LDRAW_ORG Part UPDATE 2011-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// !HELP Barrel angle: 12 degrees
// BFC CERTIFY CW
// !CATEGORY Minifig Accessory
// !KEYWORDS weapon, firearm, star wars, clone trooper, storm trooper
// !HISTORY 2010-08-08 [Philo] Changed origin/orientation
// !HISTORY 2010-08-08 [MagFors] Removed T-junctions, new edgeline around handle
// !HISTORY 2011-07-25 [PTadmin] Official Update 2011-01
	mesh {
		triangle { <4,-15.966,13.793>, <4,-8.14,12.129>, <4,-12.592,0.807> }
		triangle { <4,-12.592,0.807>, <4,-16.504,1.639>, <4,-15.966,13.793> }
		triangle { <-1.5,-19.5,-2.836>, <1.5,-19.5,-2.836>, <4,-20.54,-7.727> }
		triangle { <4,-20.54,-7.727>, <1,-21.579,-12.617>, <-1.5,-19.5,-2.836> }
		triangle { <1,-21.579,-12.617>, <-1,-21.579,-12.617>, <-4,-20.54,-7.727> }
		triangle { <-4,-20.54,-7.727>, <-1.5,-19.5,-2.836>, <1,-21.579,-12.617> }
		triangle { <-1,-22.411,-16.53>, <1,-22.411,-16.53>, <4,-23.035,-19.464> }
		triangle { <4,-23.035,-19.464>, <-4,-23.035,-19.464>, <-1,-22.411,-16.53> }
		triangle { <1,-21.579,-12.617>, <4,-20.54,-7.727>, <4,-23.035,-19.464> }
		triangle { <4,-23.035,-19.464>, <1,-22.411,-16.53>, <1,-21.579,-12.617> }
	}
	object { rect1_dot_dat matrix <0,0.489,-0.1035,-1.99908,0,0,0,-0.208,-0.978,1,-22.484,-14.4697> }
	object { rect1_dot_dat matrix <0,0.489,-0.104,1.9995,0,0,0,0.208,0.978,-1,-22.484,-14.4697> }
	mesh {
		triangle { <-4,-20.54,-7.727>, <-1,-21.579,-12.617>, <-1,-22.411,-16.53> }
		triangle { <-1,-22.411,-16.53>, <-4,-23.035,-19.464>, <-4,-20.54,-7.727> }
		triangle { <-4,-15.966,13.793>, <4,-15.966,13.793>, <1.5,-17.421,6.946> }
		triangle { <1.5,-17.421,6.946>, <-1.5,-17.421,6.946>, <-4,-15.966,13.793> }
		triangle { <1.5,-17.421,6.946>, <4,-15.966,13.793>, <4,-20.54,-7.727> }
		triangle { <4,-20.54,-7.727>, <1.5,-19.5,-2.836>, <1.5,-17.421,6.946> }
		triangle { <-1.5,-19.5,-2.836>, <-4,-20.54,-7.727>, <-4,-15.966,13.793> }
		triangle { <-4,-15.966,13.793>, <-1.5,-17.421,6.946>, <-1.5,-19.5,-2.836> }
		triangle { <-4,-8.14,12.129>, <-4,-15.966,13.793>, <-4,-16.504,1.639> }
		triangle { <-4,-16.504,1.639>, <-4,-12.592,0.807>, <-4,-8.14,12.129> }
		triangle { <-4,-16.504,1.639>, <-4,-15.966,13.793>, <-4,-23.035,-19.464> }
		triangle { <-4,-23.035,-19.464>, <-4,-19.415,-12.055>, <-4,-16.504,1.639> }
		triangle { <4,-19.415,-12.055>, <4,-23.035,-19.464>, <4,-15.966,13.793> }
		triangle { <4,-15.966,13.793>, <4,-16.504,1.639>, <4,-19.415,-12.055> }
		triangle { <4,-15.209,-21.128>, <4,-15.502,-12.887>, <4,-12.592,0.807> }
		triangle { <4,-12.592,0.807>, <4,-8.14,12.129>, <4,-15.209,-21.128> }
		triangle { <-4,-8.14,12.129>, <-4,-12.592,0.807>, <-4,-15.502,-12.887> }
		triangle { <-4,-15.502,-12.887>, <-4,-15.209,-21.128>, <-4,-8.14,12.129> }
		triangle { <4,-19.415,-12.055>, <4,-15.502,-12.887>, <4,-15.209,-21.128> }
		triangle { <4,-15.209,-21.128>, <4,-23.035,-19.464>, <4,-19.415,-12.055> }
		triangle { <-4,-15.502,-12.887>, <-4,-19.415,-12.055>, <-4,-23.035,-19.464> }
		triangle { <-4,-23.035,-19.464>, <-4,-15.209,-21.128>, <-4,-15.502,-12.887> }
	}
	object { _4_dash_4cyli_dot_dat matrix <4,0,0,0,2.07912,9.78148,0,-3.91259,0.83165,0,-12.053,12.961> }
	object { _4_dash_4cyli_dot_dat matrix <4,0,0,0,3.32659,15.6504,0,-3.91259,0.83165,0,-22.449,-35.946> }
	object { _4_dash_4ndis_dot_dat matrix <4,0,0,0,3.32659,15.6504,0,-3.91259,0.83165,0,-19.122,-20.296> }
	object { _4_dash_4cyli_dot_dat matrix <2,0,0,0,2.49494,11.7378,0,-1.9563,0.41582,0,-26.201,-5.501> }
	object { _4_dash_4con1_dot_dat matrix <-2,0,0,0,-2.07912,-9.78148,0,-1.9563,0.41582,0,-21.627,16.018> }
	object { _4_dash_4disc_dot_dat matrix <4,0,0,0,3.32659,15.6504,0,-3.91259,0.83165,0,-22.449,-35.946> }
	object { _4_dash_4disc_dot_dat matrix <-4,0,0,0,-3.32659,-15.6504,0,-3.91259,0.83165,0,-9.974,22.742> }
	object { _4_dash_4ndis_dot_dat matrix <-4,0,0,0,-0.20791,-0.97815,0,-3.91259,0.83165,0,-12.053,12.961> }
	object { _2_dash_4ndis_dot_dat matrix <1,0,0,0,0.97815,-0.20791,0,0.20791,0.97815,0,-21.787,-13.595> }
	object { _2_dash_4ndis_dot_dat matrix <-1,0,0,0,0.97815,-0.20791,0,-0.20791,-0.97815,0,-22.203,-15.552> }
	object { _2_dash_4cyli_dot_dat matrix <-1,0,0,0,0.97815,-0.20791,0,-0.20791,-0.97815,0,-23.181,-15.344> }
	object { _2_dash_4cyli_dot_dat matrix <1,0,0,0,0.97815,-0.20791,0,0.20791,0.97815,0,-22.765,-13.388> }
	object { _2_dash_4cyli_dot_dat matrix <1,0,0,0,0.41582,1.9563,0,-0.97815,0.20791,0,-23.181,-15.344> }
	object { _2_dash_8sphe_dot_dat matrix <1,0,0,0,0.20791,0.97815,0,-0.97815,0.20791,0,-22.765,-13.388> }
	object { _2_dash_8sphe_dot_dat matrix <-1,0,0,0,-0.20791,-0.97815,0,-0.97815,0.20791,0,-23.181,-15.344> }
	mesh {
		triangle { <1.5,-8.948,-6.101>, <1.5,-12.275,-21.751>, <1.5,-15.209,-21.128> }
		triangle { <1.5,-15.209,-21.128>, <1.5,-11.506,-3.705>, <1.5,-8.948,-6.101> }
		triangle { <1.5,-4.058,-7.141>, <1.5,-8.948,-6.101>, <1.5,-11.506,-3.705> }
		triangle { <1.5,-11.506,-3.705>, <1.5,-3.327,-3.705>, <1.5,-4.058,-7.141> }
		triangle { <-1.5,-15.209,-21.128>, <-1.5,-12.275,-21.751>, <-1.5,-8.948,-6.101> }
		triangle { <-1.5,-8.948,-6.101>, <-1.5,-11.506,-3.705>, <-1.5,-15.209,-21.128> }
		triangle { <-1.5,-8.948,-6.101>, <-1.5,-4.058,-7.141>, <-1.5,-3.327,-3.705> }
		triangle { <-1.5,-3.327,-3.705>, <-1.5,-11.506,-3.705>, <-1.5,-8.948,-6.101> }
		triangle { <-1.5,-3.327,-3.705>, <-1.5,-4.058,-7.141>, <1.5,-4.058,-7.141> }
		triangle { <1.5,-4.058,-7.141>, <-1.035,-3.361,-3.863>, <-1.5,-3.327,-3.705> }
		triangle { <1.5,-4.058,-7.141>, <1.5,-3.327,-3.705>, <1.035,-3.361,-3.863> }
		triangle { <1.5,-4.058,-7.141>, <1.035,-3.361,-3.863>, <0.522,-3.383,-3.964> }
		triangle { <1.5,-4.058,-7.141>, <0.522,-3.383,-3.964>, <0,-3.39,-3.999> }
		triangle { <1.5,-4.058,-7.141>, <0,-3.39,-3.999>, <-0.522,-3.383,-3.964> }
		triangle { <1.5,-4.058,-7.141>, <-0.522,-3.383,-3.964>, <-1.035,-3.361,-3.863> }
	}
	object { rect_dot_dat matrix <1.5,0,0,0,-0.978153,1,0,1.5945,7.5025,0,-12.3435,-22.0745> }
	mesh {
		triangle { <-1.5,-4.929,-9.601>, <-1.5,-4.413,-8.399>, <-1.5,-4.058,-7.141> }
		triangle { <-1.5,-4.058,-7.141>, <-1.5,-8.948,-6.101>, <-1.5,-4.929,-9.601> }
		triangle { <-1.5,-6.408,-11.753>, <-1.5,-5.598,-10.726>, <-1.5,-4.929,-9.601> }
		triangle { <-1.5,-4.929,-9.601>, <-1.5,-8.948,-6.101>, <-1.5,-6.408,-11.753> }
		triangle { <-1.5,-8.393,-13.448>, <-1.5,-7.344,-12.666>, <-1.5,-6.408,-11.753> }
		triangle { <-1.5,-6.408,-11.753>, <-1.5,-8.948,-6.101>, <-1.5,-8.393,-13.448> }
		triangle { <-1.5,-10.749,-14.572>, <-1.5,-9.534,-14.088>, <-1.5,-8.393,-13.448> }
		triangle { <-1.5,-8.393,-13.448>, <-1.5,-8.948,-6.101>, <-1.5,-10.749,-14.572> }
	}
	object { rect2p_dot_dat matrix <0,-0.1775,-0.629,0,-0.962414,0.999959,1.5,0,0,0,-4.2355,-7.77> }
	object { rect2p_dot_dat matrix <0,-0.258,-0.601,0,-0.918908,0.999982,1.5,0,0,0,-4.671,-9> }
	object { rect2p_dot_dat matrix <0,-0.3345,-0.5625,0,-0.859509,0.999991,1.5,0,0,0,-5.2635,-10.1635> }
	object { rect2p_dot_dat matrix <0,-0.405,-0.5135,0,-0.785176,0.999995,1.5,0,0,0,-6.003,-11.2395> }
	object { rect2p_dot_dat matrix <0,-0.468,-0.4565,0,-0.698257,0.999997,1.5,0,0,0,-6.876,-12.2095> }
	object { rect2p_dot_dat matrix <0,-0.5245,-0.391,0,-0.597674,0.999998,1.5,0,0,0,-7.8685,-13.057> }
	object { rect2p_dot_dat matrix <0,-0.5705,-0.32,0,-0.489208,0.999999,1.5,0,0,0,-8.9635,-13.768> }
	object { rect2p_dot_dat matrix <0,-0.6075,-0.242,0,-0.370072,1,1.5,0,0,0,-10.1415,-14.33> }
	mesh {
		triangle { <1.5,-8.948,-6.101>, <1.5,-4.058,-7.141>, <1.5,-4.413,-8.399> }
		triangle { <1.5,-4.413,-8.399>, <1.5,-4.929,-9.601>, <1.5,-8.948,-6.101> }
		triangle { <1.5,-8.948,-6.101>, <1.5,-4.929,-9.601>, <1.5,-5.598,-10.726> }
		triangle { <1.5,-5.598,-10.726>, <1.5,-6.408,-11.753>, <1.5,-8.948,-6.101> }
		triangle { <1.5,-8.948,-6.101>, <1.5,-6.408,-11.753>, <1.5,-7.344,-12.666> }
		triangle { <1.5,-7.344,-12.666>, <1.5,-8.393,-13.448>, <1.5,-8.948,-6.101> }
		triangle { <1.5,-8.948,-6.101>, <1.5,-8.393,-13.448>, <1.5,-9.534,-14.088> }
		triangle { <1.5,-9.534,-14.088>, <1.5,-10.749,-14.572>, <1.5,-8.948,-6.101> }
	}
	object { rect2a_dot_dat matrix <0,-0.8315,-3.913,-1,0,0,0,-1.611,0.342,1.5,-14.7175,-25.3218> }
	object { rect2a_dot_dat matrix <0,-1.611,0.342,1.01357,0,0,0,-0.8315,-3.913,-1.5,-14.7175,-25.3218> }
	mesh {
		triangle { <1.5,-13.938,-29.577>, <-1.5,-13.938,-29.577>, <-1.5,-17.16,-28.892> }
		triangle { <-1.5,-17.16,-28.892>, <-1.035,-17.006,-28.924>, <1.5,-13.938,-29.577> }
		triangle { <1.5,-13.938,-29.577>, <-1.035,-17.006,-28.924>, <-0.522,-16.906,-28.946> }
		triangle { <1.5,-13.938,-29.577>, <-0.522,-16.906,-28.946>, <0,-16.873,-28.953> }
		triangle { <1.5,-13.938,-29.577>, <0,-16.873,-28.953>, <0.522,-16.906,-28.946> }
		triangle { <1.5,-13.938,-29.577>, <0.522,-16.906,-28.946>, <1.035,-17.006,-28.924> }
		triangle { <1.035,-17.006,-28.924>, <1.5,-17.16,-28.892>, <1.5,-13.938,-29.577> }
// new line
// stop
		triangle { <-1.5,-15.209,-21.128>, <-1.5,-11.506,-3.705>, <-1.531,-11.504,-3.694> }
		triangle { <-1.531,-11.504,-3.694>, <-4,-15.209,-21.128>, <-1.5,-15.209,-21.128> }
		triangle { <-4,-15.209,-21.128>, <-1.531,-11.504,-3.694>, <-2,-11.455,-3.463> }
		triangle { <-4,-15.209,-21.128>, <-2,-11.455,-3.463>, <-2.435,-11.393,-3.172> }
		triangle { <-4,-15.209,-21.128>, <-2.435,-11.393,-3.172>, <-2.828,-11.319,-2.827> }
		triangle { <-4,-15.209,-21.128>, <-2.828,-11.319,-2.827>, <-3.174,-11.236,-2.434> }
		triangle { <-4,-15.209,-21.128>, <-3.174,-11.236,-2.434>, <-3.464,-11.143,-1.999> }
		triangle { <-4,-15.209,-21.128>, <-3.464,-11.143,-1.999>, <-3.696,-11.044,-1.53> }
		triangle { <-4,-15.209,-21.128>, <-3.696,-11.044,-1.53>, <-3.864,-10.938,-1.034> }
		triangle { <-4,-15.209,-21.128>, <-3.864,-10.938,-1.034>, <-3.966,-10.829,-0.521> }
		triangle { <-3.966,-10.829,-0.521>, <-4,-10.718,0.001>, <-4,-15.209,-21.128> }
		triangle { <-4,-8.14,12.129>, <-4,-10.718,0.001>, <-3.966,-10.607,0.523> }
		triangle { <-4,-8.14,12.129>, <-3.966,-10.607,0.523>, <-3.864,-10.498,1.036> }
		triangle { <-4,-8.14,12.129>, <-3.864,-10.498,1.036>, <-3.696,-10.393,1.532> }
		triangle { <-4,-8.14,12.129>, <-3.696,-10.393,1.532>, <-3.464,-10.293,2.001> }
		triangle { <-4,-8.14,12.129>, <-3.464,-10.293,2.001>, <-3.174,-10.201,2.436> }
		triangle { <4,-8.14,12.129>, <-4,-8.14,12.129>, <-3.174,-10.201,2.436> }
		triangle { <-3.174,-10.201,2.436>, <-2.828,-10.117,2.83>, <4,-8.14,12.129> }
		triangle { <4,-8.14,12.129>, <-2.828,-10.117,2.83>, <-2.435,-10.044,3.175> }
		triangle { <4,-8.14,12.129>, <-2.435,-10.044,3.175>, <-2,-9.982,3.465> }
		triangle { <4,-8.14,12.129>, <-2,-9.982,3.465>, <-1.531,-9.933,3.697> }
		triangle { <4,-8.14,12.129>, <-1.531,-9.933,3.697>, <-1.035,-9.897,3.865> }
		triangle { <4,-8.14,12.129>, <-1.035,-9.897,3.865>, <-0.522,-9.875,3.967> }
		triangle { <4,-8.14,12.129>, <-0.522,-9.875,3.967>, <0,-9.868,4.001> }
		triangle { <4,-8.14,12.129>, <0,-9.868,4.001>, <0.522,-9.875,3.967> }
		triangle { <4,-8.14,12.129>, <0.522,-9.875,3.967>, <1.035,-9.897,3.865> }
		triangle { <4,-8.14,12.129>, <1.035,-9.897,3.865>, <1.531,-9.933,3.697> }
		triangle { <4,-8.14,12.129>, <1.531,-9.933,3.697>, <2,-9.982,3.465> }
		triangle { <4,-8.14,12.129>, <2,-9.982,3.465>, <2.435,-10.044,3.175> }
		triangle { <4,-8.14,12.129>, <2.435,-10.044,3.175>, <2.828,-10.117,2.83> }
		triangle { <4,-8.14,12.129>, <2.828,-10.117,2.83>, <3.174,-10.201,2.436> }
		triangle { <4,-8.14,12.129>, <3.174,-10.201,2.436>, <3.464,-10.293,2.001> }
		triangle { <4,-8.14,12.129>, <3.464,-10.293,2.001>, <3.696,-10.393,1.532> }
		triangle { <4,-8.14,12.129>, <3.696,-10.393,1.532>, <3.864,-10.498,1.036> }
		triangle { <4,-8.14,12.129>, <3.864,-10.498,1.036>, <3.966,-10.607,0.523> }
		triangle { <3.966,-10.607,0.523>, <4,-10.718,0.001>, <4,-8.14,12.129> }
		triangle { <1.5,-11.506,-3.705>, <1.5,-15.209,-21.128>, <4,-15.209,-21.128> }
		triangle { <4,-15.209,-21.128>, <1.531,-11.504,-3.694>, <1.5,-11.506,-3.705> }
		triangle { <4,-15.209,-21.128>, <3.966,-10.829,-0.521>, <3.864,-10.938,-1.034> }
		triangle { <4,-15.209,-21.128>, <3.864,-10.938,-1.034>, <3.696,-11.044,-1.53> }
		triangle { <4,-15.209,-21.128>, <3.696,-11.044,-1.53>, <3.464,-11.143,-1.999> }
		triangle { <4,-15.209,-21.128>, <3.464,-11.143,-1.999>, <3.174,-11.236,-2.434> }
		triangle { <4,-15.209,-21.128>, <3.174,-11.236,-2.434>, <2.828,-11.319,-2.827> }
		triangle { <4,-15.209,-21.128>, <2.828,-11.319,-2.827>, <2.435,-11.393,-3.172> }
		triangle { <4,-15.209,-21.128>, <2.435,-11.393,-3.172>, <2,-11.455,-3.463> }
		triangle { <2,-11.455,-3.463>, <1.531,-11.504,-3.694>, <4,-15.209,-21.128> }
		triangle { <4,-10.718,0.001>, <3.968,-10.822,-0.487>, <4,-15.209,-21.128> }
		triangle { <-1.5,-17.421,6.946>, <-1.5,-21.461,7.804>, <-1.5,-22.112,6.518> }
		triangle { <-1.5,-22.112,6.518>, <-1.5,-22.418,5.963>, <-1.5,-17.421,6.946> }
		triangle { <-1.5,-22.418,5.963>, <-1.5,-24.081,-1.862>, <-1.5,-19.5,-2.836> }
		triangle { <-1.5,-19.5,-2.836>, <-1.5,-17.421,6.946>, <-1.5,-22.418,5.963> }
		triangle { <-1.5,-17.421,6.946>, <1.5,-17.421,6.946>, <1.5,-21.461,7.804> }
		triangle { <1.5,-21.461,7.804>, <1.461,-21.427,7.797>, <-1.5,-17.421,6.946> }
		triangle { <-1.5,-17.421,6.946>, <1.461,-21.427,7.797>, <1.2,-21.257,7.761> }
		triangle { <-1.5,-17.421,6.946>, <1.2,-21.257,7.761>, <0.918,-21.121,7.732> }
		triangle { <-1.5,-17.421,6.946>, <0.918,-21.121,7.732>, <0.621,-21.022,7.711> }
		triangle { <-1.5,-17.421,6.946>, <0.621,-21.022,7.711>, <0.31,-20.962,7.698> }
		triangle { <-1.5,-17.421,6.946>, <0.31,-20.962,7.698>, <0,-20.942,7.694> }
		triangle { <-1.5,-17.421,6.946>, <0,-20.942,7.694>, <-0.313,-20.962,7.698> }
		triangle { <-1.5,-17.421,6.946>, <-0.313,-20.962,7.698>, <-0.621,-21.022,7.711> }
		triangle { <-1.5,-17.421,6.946>, <-0.621,-21.022,7.711>, <-0.918,-21.121,7.732> }
		triangle { <-1.5,-17.421,6.946>, <-0.918,-21.121,7.732>, <-1.2,-21.257,7.761> }
		triangle { <-1.5,-17.421,6.946>, <-1.2,-21.257,7.761>, <-1.461,-21.427,7.797> }
		triangle { <-1.461,-21.427,7.797>, <-1.5,-21.461,7.804>, <-1.5,-17.421,6.946> }
		triangle { <1.5,-19.5,-2.836>, <-1.5,-19.5,-2.836>, <-1.5,-24.081,-1.862> }
		triangle { <-1.5,-24.081,-1.862>, <-1.414,-23.986,-1.882>, <1.5,-19.5,-2.836> }
		triangle { <1.5,-19.5,-2.836>, <-1.414,-23.986,-1.882>, <-1.218,-23.817,-1.918> }
		triangle { <1.5,-19.5,-2.836>, <-1.218,-23.817,-1.918>, <-1,-23.675,-1.948> }
		triangle { <1.5,-19.5,-2.836>, <-1,-23.675,-1.948>, <-0.765,-23.562,-1.973> }
		triangle { <1.5,-19.5,-2.836>, <-0.765,-23.562,-1.973>, <-0.518,-23.479,-1.99> }
		triangle { <1.5,-19.5,-2.836>, <-0.518,-23.479,-1.99>, <-0.261,-23.43,-2.001> }
		triangle { <1.5,-19.5,-2.836>, <-0.261,-23.43,-2.001>, <0,-23.413,-2.004> }
		triangle { <1.5,-19.5,-2.836>, <0,-23.413,-2.004>, <0.261,-23.43,-2.001> }
		triangle { <1.5,-19.5,-2.836>, <0.261,-23.43,-2.001>, <0.518,-23.479,-1.99> }
		triangle { <1.5,-19.5,-2.836>, <0.518,-23.479,-1.99>, <0.765,-23.562,-1.973> }
		triangle { <1.5,-19.5,-2.836>, <0.765,-23.562,-1.973>, <1,-23.675,-1.948> }
		triangle { <1.5,-19.5,-2.836>, <1,-23.675,-1.948>, <1.218,-23.817,-1.918> }
		triangle { <1.5,-19.5,-2.836>, <1.218,-23.817,-1.918>, <1.414,-23.986,-1.882> }
		triangle { <1.414,-23.986,-1.882>, <1.5,-24.081,-1.862>, <1.5,-19.5,-2.836> }
		triangle { <1.5,-17.421,6.946>, <1.5,-19.5,-2.836>, <1.5,-24.081,-1.862> }
		triangle { <1.5,-24.081,-1.862>, <1.5,-22.418,5.963>, <1.5,-17.421,6.946> }
		triangle { <1.5,-17.421,6.946>, <1.5,-22.418,5.963>, <1.5,-22.112,6.518> }
		triangle { <1.5,-22.112,6.518>, <1.5,-21.461,7.804>, <1.5,-17.421,6.946> }
	}
	object { _4_dash_4disc_dot_dat matrix <2,0,0,0,2.49494,11.7378,0,-1.9563,0.41582,0,-26.201,-5.501> }
	object { _4_dash_4disc_dot_dat matrix <4,0,0,0,-0.20791,-0.97815,0,3.91259,-0.83165,0,-21.627,16.018> }
	object { _4_dash_4cyli_dot_dat matrix <4,0,0,0,18.0001,0,0,0,4,0,-12,0> }
	object { _4_dash_4disc_dot_dat matrix <4,0,0,0,-18.0001,0,0,0,-4,0,6,0> }
// BFC INVERTNEXT
	object { box5_dot_dat matrix <0,-1.45538,-6.84704,-2,0,0,0,-1.9563,0.41582,4,-16.003,-5.624> }
// BFC INVERTNEXT
	object { box5_dot_dat matrix <0,-1.45538,-6.84704,2,0,0,0,-1.9563,0.41582,-4,-16.003,-5.624> }
}
#end
#end // ifndef (_58247_dot_dat)


//// Model weapon_015_shortblaster.ldr
#ifndef (weapon__015__shortblaster_dot_ldr)
#declare weapon__015__shortblaster_dot_ldr = object {
// Untitled
// Name: weapon_015_shortblaster.ldr
// Author: MLCad
// Unofficial Model
// ROTATION CENTER 0 0 0 1 "Custom"
// ROTATION CONFIG 0 0
	// 1 0  -10 9 0  0 -0.258819 -0.965926  0 0.965926 -0.258819  1 0 0 58247.dat
	object {
		_58247_dot_dat
		matrix <1-L3SW/8,0,0,0,1-L3SW/34.1574,0,0,0,1-L3SW/60.3518,0,L3SW/-3.08319,L3SW/-9.14177>
		matrix <0,0,1,-0.258819,0.965926,0,-0.965926,-0.258819,0,-10,9,0>
		material { L3Color0 }
	}
}
#end // ifndef (weapon__015__shortblaster_dot_ldr)


//// ModelData
#declare L3ModelBBoxMin = <-34.3238,-24.2993,-4>;
#declare L3ModelBBoxMax = <32.8121,24.3144,4>;
#declare L3ModelBBoxCenter = (L3ModelBBoxMin+L3ModelBBoxMax)/2; // <-0.755838,0.00755215,0>
#declare L3ModelBBoxSize = L3ModelBBoxMax-L3ModelBBoxMin; // <67.1359,48.6137,8>
#declare L3FloorY = L3ModelBBoxMax.y;

//// ModelObject weapon_015_shortblaster.ldr
object { weapon__015__shortblaster_dot_ldr }



//// Statistics
//               PARTS             P         Total
// DAT files:        2            15            18
// POV Equivs:       -             7 (47%)
// Model has 2 parts (0 studs)

//// IncludeFile AtEnd
#include "weapons_camera.inc"

//// End
