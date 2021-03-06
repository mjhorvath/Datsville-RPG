// Generated by L3P v1.4 BETA 20131202 (Win32)  (C) 1998-2013 Lars C. Hassing SP.lars@AM.hassings.dk
// L3P website:  http://www.hassings.dk/l3/l3p.html
// LDraw.org:    http://www.ldraw.org
// Date:         Fri Aug 22 22:42:09 2014
// Input file:   D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_030_spearwithblades.ldr
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
// Commandline:  "E:\Programs Windows\l3p14beta\l3p.exe" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_030_spearwithblades.ldr" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_030_spearwithblades.pov" -o -ic -il -ibitems.inc -ieweapons_camera.inc

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


//// Primitive 4-4disc.dat
#ifndef (_4_dash_4disc_dot_dat)
#declare _4_dash_4disc_dot_dat = disc { <0,0,0>, <0,1,0>, 1 }
#end // ifndef (_4_dash_4disc_dot_dat)


//// Primitive 4-4cyli.dat
#ifndef (_4_dash_4cyli_dot_dat)
#declare _4_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open }
#end // ifndef (_4_dash_4cyli_dot_dat)


//// Primitive 8-8sphe.dat
#ifndef (_8_dash_8sphe_dot_dat)
#declare _8_dash_8sphe_dot_dat = sphere { <0,0,0>, 1 }
#end // ifndef (_8_dash_8sphe_dot_dat)


//// Primitive 3-4cyli.dat
#ifndef (_3_dash_4cyli_dot_dat)
#declare _3_dash_4cyli_dot_dat = cylinder {
	<0,0,0>, <0,1,0>, 1 open
	clipped_by { plane { <1,0,-1>, sqrt(1/2) } }
}
#end // ifndef (_3_dash_4cyli_dot_dat)


//// Primitive 3-4ndis.dat
#ifndef (_3_dash_4ndis_dot_dat)
#declare _3_dash_4ndis_dot_dat = disc {
	<0,0,0>, <0,1,0>, 2, 1
	clipped_by {
		box { <-1,-1,-1>, <1,1,1> }
		union { plane { x, 0 } plane { -z, 0 } }
	}
}
#end // ifndef (_3_dash_4ndis_dot_dat)


//// Primitive rect3.dat
#ifndef (rect3_dot_dat)
#declare rect3_dot_dat = object {
// Rectangle with 3 Edges
// Name: rect3.dat
// Author: Mark Kennedy [mkennedy]
// !LDRAW_ORG Primitive UPDATE 2010-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2003-08-01 [PTadmin] Official Update 2003-02
// !HISTORY 2007-06-24 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
// !HISTORY 2010-01-17 [mikeheide] Change winding to CCW
// !HISTORY 2010-04-05 [PTadmin] Official Update 2010-01
	mesh {
		triangle { <-1,0,1>, <-1,0,-1>, <1,0,-1> }
		triangle { <1,0,-1>, <1,0,1>, <-1,0,1> }
	}
}
#end // ifndef (rect3_dot_dat)


//// Part s\43899s01.dat
#ifndef (s_slash_43899s01_dot_dat)
#declare s_slash_43899s01_dot_dat = #if (L3Quality = 0) box { <5,0,-2>, <19.954,17.5,2> } #else union {
// ~Spear Side Points for Minifig Long Spear
// Name: s\43899s01.dat
// Author: Andy Westrate [westrate]
// !LDRAW_ORG Subpart UPDATE 2010-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2010-04-05 [PTadmin] Official Update 2010-01
// BFC INVERTNEXT
	object { _3_dash_4cyli_dot_dat matrix <2.5,0,0,0,0,4,0,-2.5,0,7.5,7.5,-2> }
	object { _3_dash_4ndis_dot_dat matrix <2.5,0,0,0,0,1,0,-2.5,0,7.5,7.5,-2> }
	object { _3_dash_4ndis_dot_dat matrix <2.5,0,0,0,0,-1,0,-2.5,0,7.5,7.5,2> }
	object { rect3_dot_dat matrix <0,0,2,1,0,0,0,1,0,10,8.5,0> }
	mesh {
		triangle { <8.718,0,-1.5>, <13.079,2.87,-1.5>, <13.079,2.87,1.5> }
		triangle { <13.079,2.87,1.5>, <8.718,0,1.5>, <8.718,0,-1.5> }
		triangle { <13.079,2.87,-1.5>, <16.55,6.771,-1.5>, <16.55,6.771,1.5> }
		triangle { <16.55,6.771,1.5>, <13.079,2.87,1.5>, <13.079,2.87,-1.5> }
		triangle { <16.55,6.771,-1.5>, <18.892,11.437,-1.5>, <18.892,11.437,1.5> }
		triangle { <18.892,11.437,1.5>, <16.55,6.771,1.5>, <16.55,6.771,-1.5> }
		triangle { <18.892,11.437,-1.5>, <19.947,16.55,-1.5>, <19.947,16.55,1.5> }
		triangle { <19.947,16.55,1.5>, <18.892,11.437,1.5>, <18.892,11.437,-1.5> }
// 12/13 cone
		triangle { <13.085,2.867,-1.5>, <8.723,0,-1.5>, <8.052,1.38,-2> }
		triangle { <8.052,1.38,-2>, <12.079,4.031,-2>, <13.085,2.867,-1.5> }
		triangle { <16.557,6.769,-1.5>, <13.085,2.867,-1.5>, <12.079,4.031,-2> }
		triangle { <12.079,4.031,-2>, <15.283,7.633,-2>, <16.557,6.769,-1.5> }
		triangle { <18.899,11.437,-1.5>, <16.557,6.769,-1.5>, <15.283,7.633,-2> }
		triangle { <15.283,7.633,-2>, <17.446,11.942,-2>, <18.899,11.437,-1.5> }
		triangle { <19.954,16.552,-1.5>, <18.899,11.437,-1.5>, <17.446,11.942,-2> }
		triangle { <17.446,11.942,-2>, <18.419,16.663,-2>, <19.954,16.552,-1.5> }
		triangle { <8.052,1.38,2>, <8.723,0,1.5>, <13.085,2.867,1.5> }
		triangle { <13.085,2.867,1.5>, <12.079,4.031,2>, <8.052,1.38,2> }
		triangle { <12.079,4.031,2>, <13.085,2.867,1.5>, <16.557,6.769,1.5> }
		triangle { <16.557,6.769,1.5>, <15.283,7.633,2>, <12.079,4.031,2> }
		triangle { <15.283,7.633,2>, <16.557,6.769,1.5>, <18.899,11.437,1.5> }
		triangle { <18.899,11.437,1.5>, <17.446,11.942,2>, <15.283,7.633,2> }
		triangle { <17.446,11.942,2>, <18.899,11.437,1.5>, <19.954,16.552,1.5> }
		triangle { <19.954,16.552,1.5>, <18.419,16.663,2>, <17.446,11.942,2> }
		triangle { <8.052,1.38,-2>, <8.723,0,-1.5>, <5.7,0,-2> }
		triangle { <5.7,0,2>, <8.723,0,1.5>, <8.052,1.38,2> }
		triangle { <8.052,1.38,-2>, <5.7,0,-2>, <5,5,-2> }
		triangle { <5,5,-2>, <10,5,-2>, <8.052,1.38,-2> }
		triangle { <5,5,2>, <5.7,0,2>, <8.052,1.38,2> }
		triangle { <8.052,1.38,2>, <10,5,2>, <5,5,2> }
		triangle { <8.052,1.38,-2>, <10,5,-2>, <12.079,4.031,-2> }
		triangle { <12.079,4.031,2>, <10,5,2>, <8.052,1.38,2> }
		triangle { <10,5,-2>, <10,9.5,-2>, <15.283,7.633,-2> }
		triangle { <15.283,7.633,-2>, <12.079,4.031,-2>, <10,5,-2> }
		triangle { <15.283,7.633,2>, <10,9.5,2>, <10,5,2> }
		triangle { <10,5,2>, <12.079,4.031,2>, <15.283,7.633,2> }
		triangle { <10,9.5,-2>, <14.141,12.679,-2>, <17.446,11.942,-2> }
		triangle { <17.446,11.942,-2>, <15.283,7.633,-2>, <10,9.5,-2> }
		triangle { <17.446,11.942,2>, <14.141,12.679,2>, <10,9.5,2> }
		triangle { <10,9.5,2>, <15.283,7.633,2>, <17.446,11.942,2> }
		triangle { <18.419,16.663,-2>, <17.446,11.942,-2>, <14.141,12.679,-2> }
		triangle { <14.141,12.679,-2>, <17.32,16.821,-2>, <18.419,16.663,-2> }
		triangle { <14.141,12.679,2>, <17.446,11.942,2>, <18.419,16.663,2> }
		triangle { <18.419,16.663,2>, <17.32,16.821,2>, <14.141,12.679,2> }
// 30 degrees
		triangle { <14.141,12.679,2>, <14.141,12.679,-2>, <10,9.5,-2> }
		triangle { <10,9.5,-2>, <10,9.5,2>, <14.141,12.679,2> }
		triangle { <17.32,16.821,2>, <17.32,16.821,-2>, <14.141,12.679,-2> }
		triangle { <14.141,12.679,-2>, <14.141,12.679,2>, <17.32,16.821,2> }
		triangle { <18.419,16.663,2>, <18.5,17.5,2>, <18,17.4,2> }
		triangle { <18,17.4,2>, <17.32,16.821,2>, <18.419,16.663,2> }
		triangle { <18,17.4,-2>, <18.5,17.5,-2>, <18.419,16.663,-2> }
		triangle { <18.419,16.663,-2>, <17.32,16.821,-2>, <18,17.4,-2> }
		triangle { <18,17.4,-2>, <17.32,16.821,-2>, <17.32,16.821,2> }
		triangle { <17.32,16.821,2>, <18,17.4,2>, <18,17.4,-2> }
		triangle { <18.5,17.5,2>, <18.5,17.5,-2>, <18,17.4,-2> }
		triangle { <18,17.4,-2>, <18,17.4,2>, <18.5,17.5,2> }
		triangle { <19.954,16.552,1.5>, <19.954,16.552,-1.5>, <19.663,17.1,-1.6> }
		triangle { <19.663,17.1,-1.6>, <19.663,17.1,1.6>, <19.954,16.552,1.5> }
		triangle { <19.663,17.1,-1.6>, <19.082,17.4,-1.8>, <19.082,17.4,1.8> }
		triangle { <19.082,17.4,1.8>, <19.663,17.1,1.6>, <19.663,17.1,-1.6> }
		triangle { <19.082,17.4,-1.8>, <18.5,17.5,-2>, <18.5,17.5,2> }
		triangle { <18.5,17.5,2>, <19.082,17.4,1.8>, <19.082,17.4,-1.8> }
		triangle { <18.419,16.663,2>, <19.954,16.552,1.5>, <19.663,17.1,1.6> }
		triangle { <18.419,16.663,2>, <19.663,17.1,1.6>, <19.082,17.4,1.8> }
		triangle { <18.419,16.663,2>, <19.082,17.4,1.8>, <18.5,17.5,2> }
		triangle { <19.663,17.1,-1.6>, <19.954,16.552,-1.5>, <18.419,16.663,-2> }
		triangle { <19.082,17.4,-1.8>, <19.663,17.1,-1.6>, <18.419,16.663,-2> }
		triangle { <18.5,17.5,-2>, <19.082,17.4,-1.8>, <18.419,16.663,-2> }
	}
}
#end
#end // ifndef (s_slash_43899s01_dot_dat)


//// Primitive 4-8sphe.dat
#ifndef (_4_dash_8sphe_dot_dat)
#declare _4_dash_8sphe_dot_dat = sphere { <0,0,0>, 1 clipped_by { box { <-1,0,-1>, <2,2,2> } } }
#end // ifndef (_4_dash_8sphe_dot_dat)


//// Primitive 4-4ndis.dat
#ifndef (_4_dash_4ndis_dot_dat)
#declare _4_dash_4ndis_dot_dat = disc { <0,0,0>, <0,1,0>, 2, 1 clipped_by { box { <-1,-1,-1>, <1,1,1> } } }
#end // ifndef (_4_dash_4ndis_dot_dat)


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


//// Primitive 1-4cyli.dat
#ifndef (_1_dash_4cyli_dot_dat)
#declare _1_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open clipped_by { plane { <-1,0,-1>, -sqrt(1/2) } } }
#end // ifndef (_1_dash_4cyli_dot_dat)


//// Primitive 1-4chrd.dat
#ifndef (_1_dash_4chrd_dot_dat)
#declare _1_dash_4chrd_dot_dat = disc { <0,0,0>, <0,1,0>, 1 clipped_by { plane { <-1,0,-1>, -sqrt(1/2) } } }
#end // ifndef (_1_dash_4chrd_dot_dat)


//// Part 43899.dat
#ifndef (_43899_dot_dat)
#declare _43899_dot_dat = #if (L3Quality = 0) box { <-19.954,-0.8284,-5>, <19.954,200,5> } #else union {
// Minifig Spear with Four Side Blades
// Name: 43899.dat
// Author: Andy Westrate [westrate]
// !LDRAW_ORG Part UPDATE 2010-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !CATEGORY Minifig Accessory
// !HISTORY 2010-04-05 [PTadmin] Official Update 2010-01
// handle
	object { _4_dash_4disc_dot_dat matrix <4,0,0,0,-1,0,0,0,4,0,200,0> }
	object { _4_dash_4cyli_dot_dat matrix <4,0,0,0,140,0,0,0,4,0,60,0> }
	object { _8_dash_8sphe_dot_dat matrix <5,0,0,0,3.4,0,0,0,5,0,58,0> }
// blade side points
	object { s_slash_43899s01_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,42,0> }
	object { s_slash_43899s01_dot_dat matrix <1,0,0,0,-1,0,0,0,1,0,42,0> }
	object { s_slash_43899s01_dot_dat matrix <-1,0,0,0,1,0,0,0,1,0,42,0> }
	object { s_slash_43899s01_dot_dat matrix <-1,0,0,0,-1,0,0,0,1,0,42,0> }
// blade face
	mesh {
		triangle { <5,32,-2>, <-5,32,-2>, <-5,37,-2> }
		triangle { <-5,37,-2>, <5,37,-2>, <5,32,-2> }
		triangle { <-5,37,2>, <-5,32,2>, <5,32,2> }
		triangle { <5,32,2>, <5,37,2>, <-5,37,2> }
		triangle { <-5,37,-2>, <-5.7,42,-2>, <5.7,42,-2> }
		triangle { <5.7,42,-2>, <5,37,-2>, <-5,37,-2> }
		triangle { <5.7,42,2>, <-5.7,42,2>, <-5,37,2> }
		triangle { <-5,37,2>, <5,37,2>, <5.7,42,2> }
		triangle { <5.7,42,-2>, <-5.7,42,-2>, <-5,47,-2> }
		triangle { <-5,47,-2>, <5,47,-2>, <5.7,42,-2> }
		triangle { <-5,47,2>, <-5.7,42,2>, <5.7,42,2> }
		triangle { <5.7,42,2>, <5,47,2>, <-5,47,2> }
		triangle { <-5,47,-2>, <-2.5,49.5,-2>, <2.5,49.5,-2> }
		triangle { <2.5,49.5,-2>, <5,47,-2>, <-5,47,-2> }
		triangle { <-5,52,-2>, <-2.5,54.5,-2>, <-2.5,49.5,-2> }
		triangle { <-2.5,49.5,-2>, <-5,47,-2>, <-5,52,-2> }
		triangle { <2.5,49.5,-2>, <2.5,54.5,-2>, <5,52,-2> }
		triangle { <5,52,-2>, <5,47,-2>, <2.5,49.5,-2> }
		triangle { <2.5,54.5,-2>, <-2.5,54.5,-2>, <-3.3,56,-2> }
		triangle { <-3.3,56,-2>, <3.3,56,-2>, <2.5,54.5,-2> }
		triangle { <2.5,49.5,2>, <-2.5,49.5,2>, <-5,47,2> }
		triangle { <-5,47,2>, <5,47,2>, <2.5,49.5,2> }
		triangle { <-2.5,49.5,2>, <-2.5,54.5,2>, <-5,52,2> }
		triangle { <-5,52,2>, <-5,47,2>, <-2.5,49.5,2> }
		triangle { <5,52,2>, <2.5,54.5,2>, <2.5,49.5,2> }
		triangle { <2.5,49.5,2>, <5,47,2>, <5,52,2> }
		triangle { <-3.3,56,2>, <-2.5,54.5,2>, <2.5,54.5,2> }
		triangle { <2.5,54.5,2>, <3.3,56,2>, <-3.3,56,2> }
// BFC INVERTNEXT
	}
	object { _4_dash_8sphe_dot_dat matrix <2.5,0,0,0,0,1,0,2.5,0,0,52,-2> }
// BFC INVERTNEXT
	object { _4_dash_8sphe_dot_dat matrix <2.5,0,0,0,0,-1,0,2.5,0,0,52,2> }
	object { _4_dash_4ndis_dot_dat matrix <2.5,0,0,0,0,1,0,2.5,0,0,52,-2> }
	object { _4_dash_4ndis_dot_dat matrix <2.5,0,0,0,0,-1,0,2.5,0,0,52,2> }
	object { rect2p_dot_dat matrix <0.7,1,0,1,0,0,0,0,2,-6.8,53,0> }
	object { rect2p_dot_dat matrix <-0.7,1,0,-1,0,0,0,0,2,6.8,53,0> }
	object { rect2p_dot_dat matrix <1.4,1,0,0,-1,0,0,0,2,-4.7,55,0> }
	object { rect2p_dot_dat matrix <1.4,-1,0,0,-1,0,0,0,2,4.7,55,0> }
	mesh {
		triangle { <-5,52,-2>, <-7.5,52,-2>, <-6.1,54,-2> }
		triangle { <-6.1,54,-2>, <-3.3,56,-2>, <-5,52,-2> }
		triangle { <-6.1,54,2>, <-7.5,52,2>, <-5,52,2> }
		triangle { <-5,52,2>, <-3.3,56,2>, <-6.1,54,2> }
		triangle { <6.1,54,-2>, <7.5,52,-2>, <5,52,-2> }
		triangle { <5,52,-2>, <3.3,56,-2>, <6.1,54,-2> }
		triangle { <5,52,2>, <7.5,52,2>, <6.1,54,2> }
		triangle { <6.1,54,2>, <3.3,56,2>, <5,52,2> }
		triangle { <-3.3,56,-2>, <-2.5,54.5,-2>, <-5,52,-2> }
		triangle { <-5,52,2>, <-2.5,54.5,2>, <-3.3,56,2> }
		triangle { <5,52,-2>, <2.5,54.5,-2>, <3.3,56,-2> }
		triangle { <3.3,56,2>, <2.5,54.5,2>, <5,52,2> }
// spear tip
	}
	object { _1_dash_4cyli_dot_dat matrix <1.4142,-1.4142,0,0,0,4,-1.4142,-1.4142,0,0,2,-2> }
	object { _1_dash_4chrd_dot_dat matrix <1.4142,-1.4142,0,0,0,4,-1.4142,-1.4142,0,0,2,-2> }
	object { _1_dash_4chrd_dot_dat matrix <1.4142,-1.4142,0,0,0,-4,-1.4142,-1.4142,0,0,2,2> }
	object { rect2p_dot_dat matrix <-0.7929,3.7071,0,1,0,0,0,0,2,-2.2071,4.2929,0> }
	object { rect2p_dot_dat matrix <0.7929,3.7071,0,-1,0,0,0,0,2,2.2071,4.2929,0> }
	object { rect2p_dot_dat matrix <-0.5,7,0,1,0,0,0,0,2,-3.5,15,0> }
	object { rect2p_dot_dat matrix <0.5,7,0,-1,0,0,0,0,2,3.5,15,0> }
	object { rect2p_dot_dat matrix <-1.25,2,0,1,0,0,0,0,2,-5.25,24,0> }
	object { rect2p_dot_dat matrix <1.25,2,0,-1,0,0,0,0,2,5.25,24,0> }
	object { rect2p_dot_dat matrix <-0.5,3,0,1,0,0,0,0,2,-7,29,0> }
	object { rect2p_dot_dat matrix <0.5,3,0,-1,0,0,0,0,2,7,29,0> }
	mesh {
		triangle { <3,8,-2>, <1.4142,0.5858,-2>, <-1.4142,0.5858,-2> }
		triangle { <-1.4142,0.5858,-2>, <-3,8,-2>, <3,8,-2> }
		triangle { <-1.4142,0.5858,2>, <1.4142,0.5858,2>, <3,8,2> }
		triangle { <3,8,2>, <-3,8,2>, <-1.4142,0.5858,2> }
		triangle { <3,8,-2>, <-3,8,-2>, <-4,22,-2> }
		triangle { <-4,22,-2>, <4,22,-2>, <3,8,-2> }
		triangle { <-4,22,2>, <-3,8,2>, <3,8,2> }
		triangle { <3,8,2>, <4,22,2>, <-4,22,2> }
		triangle { <6.5,26,-2>, <4,22,-2>, <-4,22,-2> }
		triangle { <-4,22,-2>, <-6.5,26,-2>, <6.5,26,-2> }
		triangle { <-4,22,2>, <4,22,2>, <6.5,26,2> }
		triangle { <6.5,26,2>, <-6.5,26,2>, <-4,22,2> }
		triangle { <7.5,32,-2>, <6.5,26,-2>, <-6.5,26,-2> }
		triangle { <-6.5,26,-2>, <-7.5,32,-2>, <7.5,32,-2> }
		triangle { <-6.5,26,2>, <6.5,26,2>, <7.5,32,2> }
		triangle { <7.5,32,2>, <-7.5,32,2>, <-6.5,26,2> }
	}
}
#end
#end // ifndef (_43899_dot_dat)


//// Model weapon_030_spearwithblades.ldr
#ifndef (weapon__030__spearwithblades_dot_ldr)
#declare weapon__030__spearwithblades_dot_ldr = object {
// Untitled
// Name: weapon_030_spearwithblades.ldr
// Author: MLCad
// Unofficial Model
// ROTATION CENTER 0 0 0 1 "Custom"
// ROTATION CONFIG 0 0
	// 1 7  0 -101 0  1 0 0  0 1 0  0 0 1 43899.dat
	object {
		_43899_dot_dat
		matrix <1-L3SW/39.908,0,0,0,1-L3SW/200.828,0,0,0,1-L3SW/10,0,L3SW/2.01664,0>
		matrix <1,0,0,0,1,0,0,0,1,0,-101,0>
		material { L3Color7 }
	}
}
#end // ifndef (weapon__030__spearwithblades_dot_ldr)


//// ModelData
#declare L3ModelBBoxMin = <-19.954,-101.828,-5>;
#declare L3ModelBBoxMax = <19.954,99,5>;
#declare L3ModelBBoxCenter = (L3ModelBBoxMin+L3ModelBBoxMax)/2; // <0,-1.4142,0>
#declare L3ModelBBoxSize = L3ModelBBoxMax-L3ModelBBoxMin; // <39.908,200.828,10>
#declare L3FloorY = L3ModelBBoxMax.y;

//// ModelObject weapon_030_spearwithblades.ldr
object { weapon__030__spearwithblades_dot_ldr }



//// Statistics
//               PARTS             P         Total
// DAT files:        3            14            18
// POV Equivs:       -             9 (64%)
// Model has 2 parts (0 studs)

//// IncludeFile AtEnd
#include "weapons_camera.inc"

//// End
