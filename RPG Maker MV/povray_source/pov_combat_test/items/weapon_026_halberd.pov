// Generated by L3P v1.4 BETA 20131202 (Win32)  (C) 1998-2013 Lars C. Hassing SP.lars@AM.hassings.dk
// L3P website:  http://www.hassings.dk/l3/l3p.html
// LDraw.org:    http://www.ldraw.org
// Date:         Fri Aug 22 22:42:09 2014
// Input file:   D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_026_halberd.ldr
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
// Commandline:  "E:\Programs Windows\l3p14beta\l3p.exe" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_026_halberd.ldr" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_026_halberd.pov" -o -ic -il -ibitems.inc -ieweapons_camera.inc

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


//// Primitive 4-4disc.dat
#ifndef (_4_dash_4disc_dot_dat)
#declare _4_dash_4disc_dot_dat = disc { <0,0,0>, <0,1,0>, 1 }
#end // ifndef (_4_dash_4disc_dot_dat)


//// Primitive 4-4cyli.dat
#ifndef (_4_dash_4cyli_dot_dat)
#declare _4_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open }
#end // ifndef (_4_dash_4cyli_dot_dat)


//// Primitive 4-4cylc.dat
#ifndef (_4_dash_4cylc_dot_dat)
#declare _4_dash_4cylc_dot_dat = union {
// Cylinder Closed 1.0
// Name: 4-4cylc.dat
// Author: Alex Taylor [anathema]
// !LDRAW_ORG Primitive UPDATE 2009-02
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2008-12-29 [cwdee] Removed one disc
// !HISTORY 2009-09-03 [PTadmin] Official Update 2009-02
	object { _4_dash_4disc_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,0,0> }
	object { _4_dash_4cyli_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,0,0> }
}
#end // ifndef (_4_dash_4cylc_dot_dat)


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


//// Primitive box4o4a.dat
#ifndef (box4o4a_dot_dat)
#declare box4o4a_dot_dat = object {
// Box with 4 Faces (2 Parallel Pairs) without Bottom Edges
// Name: box4o4a.dat
// Author: Donald Sutter [technog]
// !LDRAW_ORG Primitive UPDATE 2012-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2003-08-01 [PTadmin] Official Update 2003-02
// !HISTORY 2007-06-24 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
// !HISTORY 2012-02-16 [Philo] Changed to CCW
// !HISTORY 2012-03-30 [PTadmin] Official Update 2012-01
	mesh {
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
#end // ifndef (box4o4a_dot_dat)


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


//// Primitive 1-4ndis.dat
#ifndef (_1_dash_4ndis_dot_dat)
#declare _1_dash_4ndis_dot_dat = disc { <0,0,0>, <0,1,0>, 2, 1 clipped_by { box { <0,-1,0>, <1,1,1> } } }
#end // ifndef (_1_dash_4ndis_dot_dat)


//// Primitive 1-4con3.dat
#ifndef (_1_dash_4con3_dot_dat)
#declare _1_dash_4con3_dot_dat = cone {
	<0,0,0>, 4, <0,1,0>, 3 open
	clipped_by { plane { -x, 0 } plane { -z, 0 } }
}
#end // ifndef (_1_dash_4con3_dot_dat)


//// Part 6123.dat
#ifndef (_6123_dot_dat)
#declare _6123_dot_dat = #if (L3Quality = 0) box { <-5,-114,-38.312>, <5,70,20> } #else union {
// Minifig Polearm Halberd
// Name: 6123.dat
// Author: Franklin W. Cain [fwcain]
// !LDRAW_ORG Part UPDATE 2012-03
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !CATEGORY Minifig Accessory
// !KEYWORDS minifig weapon, poleaxe, castle, glaive, guissarme, pike, greataxe
// !HISTORY 2001-10-26 [PTadmin] Official Update 2001-01
// !HISTORY 2007-07-16 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
// !HISTORY 2012-11-21 [Philo]   BFCed with Windz, minor improvements
// !HISTORY 2012-11-27 [MagFors] Removed a t-junction and two edge-lines
// !HISTORY 2012-12-28 [PTadmin] Official Update 2012-03
// shaft
	object { _4_dash_4cylc_dot_dat matrix <4,0,0,0,-140,0,0,0,4,0,70,0> }
// center block
	mesh {
		triangle { <-4,-70,6>, <4,-70,6>, <5,-70,5> }
		triangle { <5,-70,5>, <-5,-70,5>, <-4,-70,6> }
		triangle { <-5,-70,5>, <5,-70,5>, <3,-70,-5> }
		triangle { <3,-70,-5>, <-3,-70,-5>, <-5,-70,5> }
		triangle { <-3,-70,-5>, <3,-70,-5>, <2,-70,-6> }
		triangle { <2,-70,-6>, <-2,-70,-6>, <-3,-70,-5> }
		triangle { <-4,-88,6>, <-5,-88,5>, <5,-88,5> }
		triangle { <5,-88,5>, <4,-88,6>, <-4,-88,6> }
		triangle { <-5,-88,5>, <-3,-88,-5>, <3,-88,-5> }
		triangle { <3,-88,-5>, <5,-88,5>, <-5,-88,5> }
		triangle { <-3,-88,-5>, <-2,-88,-6>, <2,-88,-6> }
		triangle { <2,-88,-6>, <3,-88,-5>, <-3,-88,-5> }
		triangle { <-4,-70,6>, <-4,-88,6>, <4,-88,6> }
		triangle { <4,-88,6>, <4,-70,6>, <-4,-70,6> }
		triangle { <-4,-70,6>, <-5,-70,5>, <-5,-88,5> }
		triangle { <-5,-88,5>, <-4,-88,6>, <-4,-70,6> }
		triangle { <4,-70,6>, <4,-88,6>, <5,-88,5> }
		triangle { <5,-88,5>, <5,-70,5>, <4,-70,6> }
		triangle { <-3,-70,-5>, <-2,-70,-6>, <-2,-88,-6> }
		triangle { <-2,-88,-6>, <-3,-88,-5>, <-3,-70,-5> }
		triangle { <3,-70,-5>, <3,-88,-5>, <2,-88,-6> }
		triangle { <2,-88,-6>, <2,-70,-6>, <3,-70,-5> }
		triangle { <-2,-70,-6>, <2,-70,-6>, <2,-88,-6> }
		triangle { <2,-88,-6>, <-2,-88,-6>, <-2,-70,-6> }
		triangle { <-5,-70,5>, <-3,-70,-5>, <-3.2,-73,-4> }
		triangle { <-3.2,-73,-4>, <-4.8,-73,4>, <-5,-70,5> }
		triangle { <5,-70,5>, <4.8,-73,4>, <3.2,-73,-4> }
		triangle { <3.2,-73,-4>, <3,-70,-5>, <5,-70,5> }
		triangle { <-5,-88,5>, <-4.8,-85,4>, <-3.2,-85,-4> }
		triangle { <-3.2,-85,-4>, <-3,-88,-5>, <-5,-88,5> }
		triangle { <5,-88,5>, <3,-88,-5>, <3.2,-85,-4> }
		triangle { <3.2,-85,-4>, <4.8,-85,4>, <5,-88,5> }
		triangle { <-5,-70,5>, <-4.8,-73,4>, <-4.8,-85,4> }
		triangle { <-4.8,-85,4>, <-5,-88,5>, <-5,-70,5> }
		triangle { <5,-70,5>, <5,-88,5>, <4.8,-85,4> }
		triangle { <4.8,-85,4>, <4.8,-73,4>, <5,-70,5> }
		triangle { <-3,-70,-5>, <-3,-88,-5>, <-3.2,-85,-4> }
		triangle { <-3.2,-85,-4>, <-3.2,-73,-4>, <-3,-70,-5> }
		triangle { <3,-70,-5>, <3.2,-73,-4>, <3.2,-85,-4> }
		triangle { <3.2,-85,-4>, <3,-88,-5>, <3,-70,-5> }
// BFC INVERTNEXT
	}
	object { box5_dot_dat matrix <0,-6,0,1,0,0,-0.8,0,4,-4,-79,0> }
// BFC INVERTNEXT
	object { box5_dot_dat matrix <0,-6,0,-1,0,0,0.8,0,4,4,-79,0> }
// back spike
	object { box4o4a_dot_dat matrix <4,0,0,0,0,4,0,-5,0,0,-79,6> }
	mesh {
		triangle { <-4,-74,10>, <-1,-78,20>, <1,-78,20> }
		triangle { <1,-78,20>, <4,-74,10>, <-4,-74,10> }
		triangle { <-4,-84,10>, <4,-84,10>, <1,-80,20> }
		triangle { <1,-80,20>, <-1,-80,20>, <-4,-84,10> }
		triangle { <-4,-74,10>, <-4,-84,10>, <-1,-80,20> }
		triangle { <-1,-80,20>, <-1,-78,20>, <-4,-74,10> }
		triangle { <4,-74,10>, <1,-78,20>, <1,-80,20> }
		triangle { <1,-80,20>, <4,-84,10>, <4,-74,10> }
	}
	object { rect_dot_dat matrix <0,-1,0,0,0,-1,1,0,0,0,-79,20> }
// top spike
	mesh {
		triangle { <-0.5,-96,-4>, <0,-88,-4>, <0.5,-96,-4> }
		triangle { <0.5,-96,4>, <0,-88,4>, <-0.5,-96,4> }
		triangle { <-1.531,-88,-3.696>, <0,-88,-4>, <-0.5,-96,-4> }
		triangle { <0.5,-96,-4>, <0,-88,-4>, <1.531,-88,-3.696> }
		triangle { <-0.5,-96,4>, <0,-88,4>, <-1.531,-88,3.696> }
		triangle { <1.531,-88,3.696>, <0,-88,4>, <0.5,-96,4> }
		triangle { <-2.828,-88,-2.828>, <-1.531,-88,-3.696>, <-0.5,-96,-4> }
		triangle { <0.5,-96,-4>, <1.531,-88,-3.696>, <2.828,-88,-2.828> }
		triangle { <-0.5,-96,4>, <-1.531,-88,3.696>, <-2.828,-88,2.828> }
		triangle { <2.828,-88,2.828>, <1.531,-88,3.696>, <0.5,-96,4> }
		triangle { <-0.5,-96,-4>, <-3.696,-88,-1.531>, <-2.828,-88,-2.828> }
		triangle { <0.5,-96,-4>, <2.828,-88,-2.828>, <3.696,-88,-1.531> }
		triangle { <-0.5,-96,4>, <-2.828,-88,2.828>, <-3.696,-88,1.531> }
		triangle { <0.5,-96,4>, <3.696,-88,1.531>, <2.828,-88,2.828> }
		triangle { <-2,-96,0>, <-3.696,-88,-1.531>, <-0.5,-96,-4> }
		triangle { <0.5,-96,-4>, <3.696,-88,-1.531>, <2,-96,0> }
		triangle { <-0.5,-96,4>, <-3.696,-88,1.531>, <-2,-96,0> }
		triangle { <2,-96,0>, <3.696,-88,1.531>, <0.5,-96,4> }
		triangle { <-4,-88,0>, <-3.696,-88,-1.531>, <-2,-96,0> }
		triangle { <2,-96,0>, <3.696,-88,-1.531>, <4,-88,0> }
		triangle { <-2,-96,0>, <-3.696,-88,1.531>, <-4,-88,0> }
		triangle { <4,-88,0>, <3.696,-88,1.531>, <2,-96,0> }
		triangle { <-2,-96,0>, <-0.5,-96,-4>, <-1.25,-100,0> }
		triangle { <1.25,-100,0>, <0.5,-96,-4>, <2,-96,0> }
		triangle { <-1.25,-100,0>, <-0.5,-96,4>, <-2,-96,0> }
		triangle { <2,-96,0>, <0.5,-96,4>, <1.25,-100,0> }
		triangle { <-1.25,-100,0>, <-0.5,-96,-4>, <-0.5,-100,-8> }
		triangle { <0.5,-100,-8>, <0.5,-96,-4>, <1.25,-100,0> }
		triangle { <-0.5,-100,8>, <-0.5,-96,4>, <-1.25,-100,0> }
		triangle { <1.25,-100,0>, <0.5,-96,4>, <0.5,-100,8> }
	}
	object { rect_dot_dat matrix <0.5,0,0,0,-1,1,0,-2,-2,0,-98,-6> }
	object { rect_dot_dat matrix <0,-2,2,0,-1,-1,0.5,0,0,0,-98,6> }
	mesh {
		triangle { <-1.25,-100,0>, <-0.5,-100,-8>, <-0.5,-114,0> }
		triangle { <0.5,-114,0>, <0.5,-100,-8>, <1.25,-100,0> }
		triangle { <-0.5,-114,0>, <-0.5,-100,8>, <-1.25,-100,0> }
		triangle { <1.25,-100,0>, <0.5,-100,8>, <0.5,-114,0> }
	}
	object { rect3_dot_dat matrix <0.5,0,0,0,4,7,0,-7,4,0,-107,-4> }
	object { rect2p_dot_dat matrix <0,-7,-4,0,4,-7,0.5,0,0,0,-107,4> }
// axe blade
	object { rect1_dot_dat matrix <0,0,6,1,0,0,0,5,0,-2,-79,-12> }
	object { rect1_dot_dat matrix <0,0,6,-1,0,0,0,-5,0,2,-79,-12> }
// BFC INVERTNEXT
	object { _1_dash_4cyli_dot_dat matrix <0,-13,0,-4,0,0,0,0,-12,2,-61,-6> }
// BFC INVERTNEXT
	object { _1_dash_4cyli_dot_dat matrix <0,13,0,4,0,0,0,0,-12,-2,-97,-6> }
	object { _1_dash_4ndis_dot_dat matrix <0,-13,0,1,0,0,0,0,-12,-2,-61,-6> }
	object { _1_dash_4ndis_dot_dat matrix <0,-13,0,-1,0,0,0,0,-12,2,-61,-6> }
	object { _1_dash_4ndis_dot_dat matrix <0,13,0,1,0,0,0,0,-12,-2,-97,-6> }
	object { _1_dash_4ndis_dot_dat matrix <0,13,0,-1,0,0,0,0,-12,2,-97,-6> }
	mesh {
		triangle { <-2,-61,-18>, <2,-61,-18>, <2,-56.376,-27> }
		triangle { <2,-56.376,-27>, <-2,-56.376,-27>, <-2,-61,-18> }
		triangle { <-2,-97,-18>, <-2,-101.624,-27>, <2,-101.624,-27> }
		triangle { <2,-101.624,-27>, <2,-97,-18>, <-2,-97,-18> }
		triangle { <-2,-61,-18>, <-2,-67.688,-22.315>, <-2,-73.81,-23.532> }
		triangle { <-2,-73.81,-23.532>, <-2,-74,-18>, <-2,-61,-18> }
		triangle { <2,-61,-18>, <2,-74,-18>, <2,-73.81,-23.532> }
		triangle { <2,-73.81,-23.532>, <2,-67.688,-22.315>, <2,-61,-18> }
		triangle { <-2,-67.688,-22.315>, <-2,-61,-18>, <-2,-61.566,-23.532> }
		triangle { <2,-61.566,-23.532>, <2,-61,-18>, <2,-67.688,-22.315> }
		triangle { <-2,-61.566,-23.532>, <-2,-61,-18>, <-2,-56.376,-27> }
		triangle { <2,-56.376,-27>, <2,-61,-18>, <2,-61.566,-23.532> }
		triangle { <-2,-84.19,-23.532>, <-2,-84,-18>, <-2,-74,-18> }
		triangle { <-2,-74,-18>, <-2,-73.81,-23.532>, <-2,-84.19,-23.532> }
		triangle { <2,-74,-18>, <2,-84,-18>, <2,-84.19,-23.532> }
		triangle { <2,-84.19,-23.532>, <2,-73.81,-23.532>, <2,-74,-18> }
		triangle { <-2,-73.81,-23.532>, <-2,-79,-27>, <-2,-84.19,-23.532> }
		triangle { <2,-79,-27>, <2,-73.81,-23.532>, <2,-84.19,-23.532> }
		triangle { <-2,-84,-18>, <-2,-84.19,-23.532>, <-2,-90.312,-22.315> }
		triangle { <-2,-90.312,-22.315>, <-2,-97,-18>, <-2,-84,-18> }
		triangle { <2,-90.312,-22.315>, <2,-84.19,-23.532>, <2,-84,-18> }
		triangle { <2,-84,-18>, <2,-97,-18>, <2,-90.312,-22.315> }
		triangle { <-2,-96.434,-23.532>, <-2,-97,-18>, <-2,-90.312,-22.315> }
		triangle { <2,-90.312,-22.315>, <2,-97,-18>, <2,-96.434,-23.532> }
		triangle { <-2,-101.624,-27>, <-2,-97,-18>, <-2,-96.434,-23.532> }
		triangle { <2,-96.434,-23.532>, <2,-97,-18>, <2,-101.624,-27> }
// BFC INVERTNEXT
	}
	object { _1_dash_4con3_dot_dat matrix <0,2.828,2.828,2,0,0,0,-2.828,2.828,-2,-67.688,-38.312> }
// BFC INVERTNEXT
	object { _1_dash_4con3_dot_dat matrix <0,2.828,2.828,-2,0,0,0,-2.828,2.828,2,-67.688,-38.312> }
// BFC INVERTNEXT
	object { _1_dash_4con3_dot_dat matrix <0,2.828,2.828,2,0,0,0,-2.828,2.828,-2,-90.312,-38.312> }
// BFC INVERTNEXT
	object { _1_dash_4con3_dot_dat matrix <0,2.828,2.828,-2,0,0,0,-2.828,2.828,2,-90.312,-38.312> }
	mesh {
		triangle { <0,-79,-32.656>, <-2,-79,-27>, <0,-76.172,-29.828> }
		triangle { <0,-76.172,-29.828>, <2,-79,-27>, <0,-79,-32.656> }
		triangle { <0,-81.828,-29.828>, <-2,-79,-27>, <0,-79,-32.656> }
		triangle { <0,-79,-32.656>, <2,-79,-27>, <0,-81.828,-29.828> }
		triangle { <0,-56.376,-32.656>, <-2,-56.376,-27>, <2,-56.376,-27> }
		triangle { <2,-101.624,-27>, <-2,-101.624,-27>, <0,-101.624,-32.656> }
		triangle { <-2,-56.376,-27>, <0,-56.376,-32.656>, <0,-59.204,-29.828> }
		triangle { <0,-59.204,-29.828>, <0,-56.376,-32.656>, <2,-56.376,-27> }
		triangle { <0,-98.796,-29.828>, <0,-101.624,-32.656>, <-2,-101.624,-27> }
		triangle { <2,-101.624,-27>, <0,-101.624,-32.656>, <0,-98.796,-29.828> }
	}
}
#end
#end // ifndef (_6123_dot_dat)


//// Model weapon_026_halberd.ldr
#ifndef (weapon__026__halberd_dot_ldr)
#declare weapon__026__halberd_dot_ldr = object {
// Untitled
// Name: weapon_026_halberd.ldr
// Author: MLCad
// Unofficial Model
// ROTATION CENTER 0 0 0 1 "Custom"
// ROTATION CONFIG 0 0
	// 1 7  -6 22 0  0 0 -1  0 1 0  1 0 0 6123.dat
	object {
		_6123_dot_dat
		matrix <1-L3SW/10,0,0,0,1-L3SW/184,0,0,0,1-L3SW/58.312,0,L3SW/-8.36364,L3SW/-6.36872>
		matrix <0,0,1,0,1,0,-1,0,0,-6,22,0>
		material { L3Color7 }
	}
}
#end // ifndef (weapon__026__halberd_dot_ldr)


//// ModelData
#declare L3ModelBBoxMin = <-26,-92,-5>;
#declare L3ModelBBoxMax = <32.312,92,5>;
#declare L3ModelBBoxCenter = (L3ModelBBoxMin+L3ModelBBoxMax)/2; // <3.156,0,0>
#declare L3ModelBBoxSize = L3ModelBBoxMax-L3ModelBBoxMin; // <58.312,184,10>
#declare L3FloorY = L3ModelBBoxMax.y;

//// ModelObject weapon_026_halberd.ldr
object { weapon__026__halberd_dot_ldr }



//// Statistics
//               PARTS             P         Total
// DAT files:        2            14            17
// POV Equivs:       -             5 (36%)
// Model has 2 parts (0 studs)

//// IncludeFile AtEnd
#include "weapons_camera.inc"

//// End
