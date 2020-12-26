// Generated by L3P v1.4 BETA 20131202 (Win32)  (C) 1998-2013 Lars C. Hassing SP.lars@AM.hassings.dk
// L3P website:  http://www.hassings.dk/l3/l3p.html
// LDraw.org:    http://www.ldraw.org
// Date:         Fri Aug 22 22:42:10 2014
// Input file:   D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_038_gladius.ldr
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
// Commandline:  "E:\Programs Windows\l3p14beta\l3p.exe" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_038_gladius.ldr" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_038_gladius.pov" -o -ic -il -ibitems.inc -ieweapons_camera.inc

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
#include "items.inc"



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


//// Primitive 1-4disc.dat
#ifndef (_1_dash_4disc_dot_dat)
#declare _1_dash_4disc_dot_dat = disc { <0,0,0>, <0,1,0>, 1 clipped_by { plane { -x, 0 } plane { -z, 0 } } }
#end // ifndef (_1_dash_4disc_dot_dat)


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


//// Primitive 1-4cyli.dat
#ifndef (_1_dash_4cyli_dot_dat)
#declare _1_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open clipped_by { plane { <-1,0,-1>, -sqrt(1/2) } } }
#end // ifndef (_1_dash_4cyli_dot_dat)


//// Primitive 1-8sphe.dat
#ifndef (_1_dash_8sphe_dot_dat)
#declare _1_dash_8sphe_dot_dat = sphere { <0,0,0>, 1 clipped_by { box { <0,0,0>, <2,2,2> } } }
#end // ifndef (_1_dash_8sphe_dot_dat)


//// Primitive 2-4ndis.dat
#ifndef (_2_dash_4ndis_dot_dat)
#declare _2_dash_4ndis_dot_dat = disc { <0,0,0>, <0,1,0>, 2, 1 clipped_by { box { <-1,-1,0>, <1,1,1> } } }
#end // ifndef (_2_dash_4ndis_dot_dat)


//// Part s\95673s01.dat
#ifndef (s_slash_95673s01_dot_dat)
#declare s_slash_95673s01_dot_dat = #if (L3Quality = 0) box { <-5.75,-58,0>, <5.75,0,7> } #else union {
// ~Minifig Sword Roman Gladius - Half
// Name: s\95673s01.dat
// Author: Christian Neumann [Wesley]
// !LDRAW_ORG Subpart UPDATE 2013-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2013-07-21 [PTadmin] Official Update 2013-01
	mesh {
		triangle { <5.75,-6,0>, <5.75,-6,4>, <4,-6,4> }
		triangle { <4,-6,4>, <2,-6,0>, <5.75,-6,0> }
	}
	object { _1_dash_4disc_dot_dat matrix <1.75,0,0,0,2,0,0,0,3,4,-6,4> }
	mesh {
		triangle { <4,-6,7>, <0.4,-6,5>, <2,-6,0> }
		triangle { <2,-6,0>, <4,-6,4>, <4,-6,7> }
		triangle { <-0.4,-6,5>, <0.4,-6,5>, <4,-6,7> }
		triangle { <4,-6,7>, <-4,-6,7>, <-0.4,-6,5> }
		triangle { <-4,-6,4>, <-2,-6,0>, <-0.4,-6,5> }
		triangle { <-0.4,-6,5>, <-4,-6,7>, <-4,-6,4> }
	}
	object { _1_dash_4disc_dot_dat matrix <-1.75,0,0,0,2,0,0,0,3,-4,-6,4> }
	mesh {
		triangle { <-2,-6,0>, <-4,-6,4>, <-5.75,-6,4> }
		triangle { <-5.75,-6,4>, <-5.75,-6,0>, <-2,-6,0> }
	}
	object { rect1_dot_dat matrix <0,-1,0,-1,0,0,0,0,2,5.75,-5,2> }
	object { _1_dash_4cyli_dot_dat matrix <1.75,0,0,0,2,0,0,0,3,4,-6,4> }
	object { rect1_dot_dat matrix <0,-1,0,0,0,-1,-4,0,0,0,-5,7> }
	object { _1_dash_4cyli_dot_dat matrix <-1.75,0,0,0,2,0,0,0,3,-4,-6,4> }
	object { rect1_dot_dat matrix <0,-1,0,1,0,0,0,0,2,-5.75,-5,2> }
	object { _1_dash_4cyli_dot_dat matrix <0,4,0,0,0,4,1.75,0,0,4,-4,0> }
	object { _1_dash_8sphe_dot_dat matrix <1.75,0,0,0,4,0,0,0,3,4,-4,4> }
	object { _1_dash_4cyli_dot_dat matrix <0,4,0,-8,0,0,0,0,3,4,-4,4> }
	object { _1_dash_8sphe_dot_dat matrix <-1.75,0,0,0,4,0,0,0,3,-4,-4,4> }
	object { _1_dash_4cyli_dot_dat matrix <0,4,0,0,0,4,-1.75,0,0,-4,-4,0> }
	object { _2_dash_4ndis_dot_dat matrix <4,0,0,0,-1,0,0,0,4,0,0,0> }
// blade
	mesh {
		triangle { <2,-6,0>, <0.4,-6,5>, <0.4,-42,5> }
		triangle { <0.4,-42,5>, <2,-42,0>, <2,-6,0> }
		triangle { <-0.4,-6,5>, <-0.4,-42,5>, <0.4,-42,5> }
		triangle { <0.4,-42,5>, <0.4,-6,5>, <-0.4,-6,5> }
		triangle { <-2,-42,0>, <-0.4,-42,5>, <-0.4,-6,5> }
		triangle { <-0.4,-6,5>, <-2,-6,0>, <-2,-42,0> }
		triangle { <2,-42,0>, <0.4,-42,5>, <0.4,-56,2> }
		triangle { <2,-42,0>, <0.4,-57.82,0.75>, <0.4,-58,0> }
		triangle { <2,-42,0>, <0.4,-57.5,1.2>, <0.4,-57.82,0.75> }
		triangle { <2,-42,0>, <0.4,-56.75,1.7>, <0.4,-57.5,1.2> }
		triangle { <2,-42,0>, <0.4,-56,2>, <0.4,-56.75,1.7> }
		triangle { <-0.4,-56,2>, <-0.4,-42,5>, <-2,-42,0> }
		triangle { <-0.4,-58,0>, <-0.4,-57.82,0.75>, <-2,-42,0> }
		triangle { <-0.4,-57.82,0.75>, <-0.4,-57.5,1.2>, <-2,-42,0> }
		triangle { <-0.4,-57.5,1.2>, <-0.4,-56.75,1.7>, <-2,-42,0> }
		triangle { <-0.4,-56.75,1.7>, <-0.4,-56,2>, <-2,-42,0> }
		triangle { <-0.4,-42,5>, <-0.4,-56,2>, <0.4,-56,2> }
		triangle { <0.4,-56,2>, <0.4,-42,5>, <-0.4,-42,5> }
		triangle { <-0.4,-56,2>, <-0.4,-56.75,1.7>, <0.4,-56.75,1.7> }
		triangle { <0.4,-56.75,1.7>, <0.4,-56,2>, <-0.4,-56,2> }
		triangle { <-0.4,-56.75,1.7>, <-0.4,-57.5,1.2>, <0.4,-57.5,1.2> }
		triangle { <0.4,-57.5,1.2>, <0.4,-56.75,1.7>, <-0.4,-56.75,1.7> }
		triangle { <-0.4,-57.5,1.2>, <-0.4,-57.82,0.75>, <0.4,-57.82,0.75> }
		triangle { <0.4,-57.82,0.75>, <0.4,-57.5,1.2>, <-0.4,-57.5,1.2> }
		triangle { <-0.4,-57.82,0.75>, <-0.4,-58,0>, <0.4,-58,0> }
		triangle { <0.4,-58,0>, <0.4,-57.82,0.75>, <-0.4,-57.82,0.75> }
// conditional lines
	}
}
#end
#end // ifndef (s_slash_95673s01_dot_dat)


//// Primitive 4-4cyli.dat
#ifndef (_4_dash_4cyli_dot_dat)
#declare _4_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open }
#end // ifndef (_4_dash_4cyli_dot_dat)


//// Primitive 4-4cylo.dat
#ifndef (_4_dash_4cylo_dot_dat)
#declare _4_dash_4cylo_dot_dat = object {
// Cylinder Open 1.0
// Name: 4-4cylo.dat
// Author: Mark Kennedy [mkennedy]
// !LDRAW_ORG Primitive UPDATE 2010-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2010-04-05 [PTadmin] Official Update 2010-01
	object { _4_dash_4cyli_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,0,0> }
}
#end // ifndef (_4_dash_4cylo_dot_dat)


//// Primitive 4-4con15.dat
#ifndef (_4_dash_4con15_dot_dat)
#declare _4_dash_4con15_dot_dat = cone { <0,0,0>, 16, <0,1,0>, 15 open }
#end // ifndef (_4_dash_4con15_dot_dat)


//// Primitive 4-4ring2.dat
#ifndef (_4_dash_4ring2_dot_dat)
#declare _4_dash_4ring2_dot_dat = disc { <0,0,0>, <0,1,0>, 3, 2 }
#end // ifndef (_4_dash_4ring2_dot_dat)


//// Primitive 4-8sphe.dat
#ifndef (_4_dash_8sphe_dot_dat)
#declare _4_dash_8sphe_dot_dat = sphere { <0,0,0>, 1 clipped_by { box { <-1,0,-1>, <2,2,2> } } }
#end // ifndef (_4_dash_8sphe_dot_dat)


//// Part 95673.dat
#ifndef (_95673_dot_dat)
#declare _95673_dot_dat = #if (L3Quality = 0) box { <-6,-58,-7>, <6,19.75,7> } #else union {
// Minifig Sword Roman Gladius
// Name: 95673.dat
// Author: Christian Neumann [Wesley]
// !LDRAW_ORG Part UPDATE 2013-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !CATEGORY Minifig Accessory
// !KEYWORDS Weapon
// !HISTORY 2013-07-21 [PTadmin] Official Update 2013-01
	object { s_slash_95673s01_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,0,0> }
	object { s_slash_95673s01_dot_dat matrix <1,0,0,0,1,0,0,0,-1,0,0,0> }
	object { _4_dash_4cylo_dot_dat matrix <4,0,0,0,0.5,0,0,0,4,0,0,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,0.25,0,0,0,0.25,0,0.5,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,-0.25,0,0,0,0.25,0,1,0> }
	object { _4_dash_4cylo_dot_dat matrix <4,0,0,0,1.25,0,0,0,4,0,1,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,0.25,0,0,0,0.25,0,2.25,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,-0.25,0,0,0,0.25,0,2.75,0> }
	object { _4_dash_4cylo_dot_dat matrix <4,0,0,0,1.25,0,0,0,4,0,2.75,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,0.25,0,0,0,0.25,0,4,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,-0.25,0,0,0,0.25,0,4.5,0> }
	object { _4_dash_4cylo_dot_dat matrix <4,0,0,0,1.25,0,0,0,4,0,4.5,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,0.25,0,0,0,0.25,0,5.75,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,-0.25,0,0,0,0.25,0,6.25,0> }
	object { _4_dash_4cylo_dot_dat matrix <4,0,0,0,1.25,0,0,0,4,0,6.25,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,0.25,0,0,0,0.25,0,7.5,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,-0.25,0,0,0,0.25,0,8,0> }
	object { _4_dash_4cylo_dot_dat matrix <4,0,0,0,1.25,0,0,0,4,0,8,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,0.25,0,0,0,0.25,0,9.25,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,-0.25,0,0,0,0.25,0,9.75,0> }
	object { _4_dash_4cylo_dot_dat matrix <4,0,0,0,1.25,0,0,0,4,0,9.75,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,0.25,0,0,0,0.25,0,11,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,-0.25,0,0,0,0.25,0,11.5,0> }
	object { _4_dash_4cylo_dot_dat matrix <4,0,0,0,1.25,0,0,0,4,0,11.5,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,0.25,0,0,0,0.25,0,12.75,0> }
	object { _4_dash_4con15_dot_dat matrix <0.25,0,0,0,-0.25,0,0,0,0.25,0,13.25,0> }
	object { _4_dash_4cylo_dot_dat matrix <4,0,0,0,0.5,0,0,0,4,0,13.25,0> }
	object { _4_dash_4ring2_dot_dat matrix <2,0,0,0,1,0,0,0,2,0,13.75,0> }
	object { _4_dash_8sphe_dot_dat matrix <6,0,0,0,6,0,0,0,6,0,13.75,0> }
}
#end
#end // ifndef (_95673_dot_dat)


//// Model weapon_038_gladius.ldr
#ifndef (weapon__038__gladius_dot_ldr)
#declare weapon__038__gladius_dot_ldr = object {
// Untitled
// Name: weapon_038_gladius.ldr
// Author: MLCad
// Unofficial Model
// ROTATION CENTER 0 0 0 1 "Custom"
// ROTATION CONFIG 0 0
	// 1 7  0 19 0  0 0 -1  0 1 0  1 0 0 95673.dat
	object {
		_95673_dot_dat
		matrix <1-L3SW/12,0,0,0,1-L3SW/77.75,0,0,0,1-L3SW/14,0,L3SW/-4.06536,0>
		matrix <0,0,1,0,1,0,-1,0,0,0,19,0>
		material { L3Color7 }
	}
}
#end // ifndef (weapon__038__gladius_dot_ldr)


//// ModelData
#declare L3ModelBBoxMin = <-7,-39,-6>;
#declare L3ModelBBoxMax = <7,38.75,6>;
#declare L3ModelBBoxCenter = (L3ModelBBoxMin+L3ModelBBoxMax)/2; // <0,-0.125,0>
#declare L3ModelBBoxSize = L3ModelBBoxMax-L3ModelBBoxMin; // <14,77.75,12>
#declare L3FloorY = L3ModelBBoxMax.y;

//// ModelObject weapon_038_gladius.ldr
object { weapon__038__gladius_dot_ldr }



//// Statistics
//               PARTS             P         Total
// DAT files:        3            12            16
// POV Equivs:       -             8 (67%)
// Model has 2 parts (0 studs)

//// IncludeFile AtEnd
#include "weapons_camera.inc"

//// End
