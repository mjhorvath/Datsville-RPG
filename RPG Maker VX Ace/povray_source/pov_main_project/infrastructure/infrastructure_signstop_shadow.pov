// Generated by L3P v1.4 BETA 20131202 (Win32)  (C) 1998-2013 Lars C. Hassing SP.lars@AM.hassings.dk
// L3P website:  http://www.hassings.dk/l3/l3p.html
// LDraw.org:    http://www.ldraw.org
// Date:         Mon Aug 18 14:51:40 2014
// Input file:   D:\Datsville\trunk\datsville_boxed\infrastructure_signstop.ldr
// Title:        Stop Sign One Direction
// Author:       Michael Horvath
// ModelDir:     D:\Datsville\trunk\datsville_boxed
// WorkDir:      D:\Datsville RPG\trunk\povray_source
// LDRAWDIR:     E:\Programs Windows\LDraw (LDRAWDIR environment variable)
// SearchDirs:   (Default)
// SearchDir1:   D:\Datsville\trunk\datsville_boxed\ (0x10)
// SearchDir2:   E:\Programs Windows\LDraw\P\ (0x9)
// SearchDir3:   E:\Programs Windows\LDraw\PARTS\ (0x4)
// SearchDir4:   E:\Programs Windows\LDraw\MODELS\ (0x0)
// ldconfig.ldr: E:\Programs Windows\LDraw\ldconfig.ldr
// Commandline:  "E:\Programs Windows\l3p14beta\l3p.exe" D:\Datsville\trunk\datsville_boxed\infrastructure_signstop.ldr -o -ic -il -ibinfrastructure_noshadow.inc

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
#include "infrastructure_shadow.inc"



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


//// Color 15 White (from ldconfig.ldr)
#ifndef (L3Texture15)
#declare L3Texture15 = L3TextureOpaqueRGB(255,255,255)
#end
#ifndef (L3Texture15_slope)
#declare L3Texture15_slope = L3TextureSlope(L3Texture15)
#end
#ifndef (L3Color15)
#declare L3Color15 = L3Material(L3Texture15)
#end
#ifndef (L3Color15_slope)
#declare L3Color15_slope = L3Material(L3Texture15_slope)
#end


//// Color 4 Red (from ldconfig.ldr)
#ifndef (L3Texture4)
#declare L3Texture4 = L3TextureOpaqueRGB(201,26,9)
#end
#ifndef (L3Texture4_slope)
#declare L3Texture4_slope = L3TextureSlope(L3Texture4)
#end
#ifndef (L3Color4)
#declare L3Color4 = L3Material(L3Texture4)
#end
#ifndef (L3Color4_slope)
#declare L3Color4_slope = L3Material(L3Texture4_slope)
#end


//// Primitive box3u4a.dat
#ifndef (box3u4a_dot_dat)
#declare box3u4a_dot_dat = object {
// Box with 3 Faces without 4 Adjacent Edges
// Name: box3u4a.dat
// Author: Niels Karsdorp [nielsk]
// !LDRAW_ORG Primitive UPDATE 2009-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2009-05-02 [PTadmin] Official Update 2009-01
	mesh {
		triangle { <-1,1,-1>, <-1,1,1>, <1,1,1> }
		triangle { <1,1,1>, <1,1,-1>, <-1,1,-1> }
		triangle { <-1,1,1>, <-1,0,1>, <1,0,1> }
		triangle { <1,0,1>, <1,1,1>, <-1,1,1> }
		triangle { <1,1,-1>, <1,0,-1>, <-1,0,-1> }
		triangle { <-1,0,-1>, <-1,1,-1>, <1,1,-1> }
	}
}
#end // ifndef (box3u4a_dot_dat)


//// Primitive stud3.dat
#ifndef (stud3_dot_dat)
#declare stud3_dot_dat = cylinder { <0,0,0>, <0,-4,0>, 4 }
#end // ifndef (stud3_dot_dat)


//// Primitive box2-5.dat
#ifndef (box2_dash_5_dot_dat)
#declare box2_dash_5_dot_dat = object {
// Box with 2 Faces without 5 Edges
// Name: box2-5.dat
// Author: Steffen [Steffen]
// !LDRAW_ORG Primitive UPDATE 2003-03
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2003-12-19 [PTadmin] Official Update 2003-03
// !HISTORY 2007-06-24 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
	mesh {
		triangle { <1,1,1>, <1,1,-1>, <-1,1,-1> }
		triangle { <-1,1,-1>, <-1,1,1>, <1,1,1> }
		triangle { <1,1,1>, <-1,1,1>, <-1,-1,1> }
		triangle { <-1,-1,1>, <1,-1,1>, <1,1,1> }
	}
}
#end // ifndef (box2_dash_5_dot_dat)


//// Primitive 4-4cyli.dat
#ifndef (_4_dash_4cyli_dot_dat)
#declare _4_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open }
#end // ifndef (_4_dash_4cyli_dot_dat)


//// Primitive 4-4disc.dat
#ifndef (_4_dash_4disc_dot_dat)
#declare _4_dash_4disc_dot_dat = disc { <0,0,0>, <0,1,0>, 1 }
#end // ifndef (_4_dash_4disc_dot_dat)


//// Primitive box3u5p.dat
#ifndef (box3u5p_dot_dat)
#declare box3u5p_dot_dat = object {
// Box with 3 Faces without 5 Edges
// Name: box3u5p.dat
// Author: William Howard [WilliamH]
// !LDRAW_ORG Primitive UPDATE 2009-02
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2009-09-03 [PTadmin] Official Update 2009-02
	mesh {
		triangle { <1,1,-1>, <-1,1,-1>, <-1,1,1> }
		triangle { <-1,1,1>, <1,1,1>, <1,1,-1> }
		triangle { <1,1,1>, <-1,1,1>, <-1,0,1> }
		triangle { <-1,0,1>, <1,0,1>, <1,1,1> }
		triangle { <-1,1,-1>, <1,1,-1>, <1,0,-1> }
		triangle { <1,0,-1>, <-1,0,-1>, <-1,1,-1> }
	}
}
#end // ifndef (box3u5p_dot_dat)


//// Primitive box3u7a.dat
#ifndef (box3u7a_dot_dat)
#declare box3u7a_dot_dat = object {
// Box with 3 Faces without 7 Adjacent Edges
// Name: box3u7a.dat
// Author: Chris Dee [cwdee]
// !LDRAW_ORG Primitive UPDATE 2009-02
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2009-09-03 [PTadmin] Official Update 2009-02
	mesh {
		triangle { <1,1,-1>, <-1,1,-1>, <-1,1,1> }
		triangle { <-1,1,1>, <1,1,1>, <1,1,-1> }
		triangle { <1,1,1>, <-1,1,1>, <-1,0,1> }
		triangle { <-1,0,1>, <1,0,1>, <1,1,1> }
		triangle { <-1,1,-1>, <1,1,-1>, <1,0,-1> }
		triangle { <1,0,-1>, <-1,0,-1>, <-1,1,-1> }
	}
}
#end // ifndef (box3u7a_dot_dat)


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


//// Part s\3351as02.dat
#ifndef (s_slash_3351as02_dot_dat)
#declare s_slash_3351as02_dot_dat = #if (L3Quality = 0) box { <-10,-68,-20>, <10,8,20> } #else union {
// ~Roadsign Straight Type 1 (Round Underside Stud) - Post
// Name: s\3351as02.dat
// Author: Mark Kennedy [mkennedy]
// !LDRAW_ORG Subpart UPDATE 2010-02
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CW
// !HISTORY 2004-10-16 [cwdee] Removed edgelines around top to work with round sign
// !HISTORY 2004-10-23 [Steffen] fixed L3P errors
// !HISTORY 2005-12-28 [PTadmin] Official Update 2005-01
// !HISTORY 2007-09-10 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
// !HISTORY 2009-09-28 [mkennedy] made use of box2 primitives, replaced box3u8p with box3u5p
// !HISTORY 2010-04-05 [PTadmin] Official Update 2010-01
// !HISTORY 2010-04-10 [tchang] Add 2 round top, more primitives (2009-07-16)
// !HISTORY 2010-04-25 [PTadmin] Renamed from 647s00
// !HISTORY 2010-07-05 [PTadmin] Official Update 2010-02
// BFC INVERTNEXT
	object { box3u4a_dot_dat matrix <0,0,-20,0,-6,0,6,0,0,0,8,0> }
	#if (L3Studs)
		object { stud3_dot_dat matrix <1,0,0,0,-1.25,0,0,0,1,0,2,0> }
	#end
	object { box2_dash_5_dot_dat matrix <0,0,-20,0,4,0,2,0,0,8,4,0> }
	object { box2_dash_5_dot_dat matrix <0,0,20,0,4,0,-2,0,0,-8,4,0> }
// 
	mesh {
		triangle { <6,8,-20>, <6,2,-20>, <10,0,-20> }
		triangle { <10,0,-20>, <10,8,-20>, <6,8,-20> }
		triangle { <-10,8,-20>, <-10,0,-20>, <-6,2,-20> }
		triangle { <-6,2,-20>, <-6,8,-20>, <-10,8,-20> }
		triangle { <-10,0,20>, <-6,2,20>, <6,2,20> }
		triangle { <6,2,20>, <10,0,20>, <-10,0,20> }
		triangle { <-6,8,20>, <-6,2,20>, <-10,0,20> }
		triangle { <-10,0,20>, <-10,8,20>, <-6,8,20> }
		triangle { <10,8,20>, <10,0,20>, <6,2,20> }
		triangle { <6,2,20>, <6,8,20>, <10,8,20> }
		triangle { <10,0,-20>, <6,2,-20>, <-6,2,-20> }
		triangle { <-6,2,-20>, <-10,0,-20>, <10,0,-20> }
		triangle { <-10,0,20>, <0,-2,10>, <0,-2,-10> }
		triangle { <0,-2,-10>, <-10,0,-20>, <-10,0,20> }
		triangle { <10,0,20>, <0,-2,10>, <-10,0,20> }
		triangle { <10,0,-20>, <0,-2,-10>, <0,-2,10> }
		triangle { <0,-2,10>, <10,0,20>, <10,0,-20> }
		triangle { <-10,0,-20>, <0,-2,-10>, <10,0,-20> }
// 
	}
	object { _4_dash_4cyli_dot_dat matrix <6,0,0,0,10,0,0,0,6,0,-10,0> }
	object { _4_dash_4disc_dot_dat matrix <6,0,0,0,6,0,0,0,6,0,-10,0> }
// 
	object { box3u5p_dot_dat matrix <0,-28,0,2,0,0,0,0,-2,2,-38,0> }
	object { box3u5p_dot_dat matrix <0,-28,0,-2,0,0,0,0,-2,-2,-38,0> }
	object { box3u7a_dot_dat matrix <0,-25,0,0,0,-2,-2,0,0,0,-35,-2> }
	object { box3u7a_dot_dat matrix <0,-25,0,0,0,2,2,0,0,0,-35,2> }
// 
	mesh {
		triangle { <-2,-10,2>, <-2,-10,4>, <-2,-60,4> }
		triangle { <-2,-60,4>, <-2,-68,2>, <-2,-10,2> }
		triangle { <2,-10,4>, <2,-10,2>, <2,-68,2> }
		triangle { <2,-68,2>, <2,-60,4>, <2,-10,4> }
		triangle { <2,-10,-2>, <2,-10,-4>, <2,-60,-4> }
		triangle { <2,-60,-4>, <2,-68,-2>, <2,-10,-2> }
		triangle { <-2,-10,-4>, <-2,-10,-2>, <-2,-68,-2> }
		triangle { <-2,-68,-2>, <-2,-60,-4>, <-2,-10,-4> }
	}
	object { rect_dot_dat matrix <2,0,0,0,0,-1,0,4,1,0,-64,3> }
	object { rect_dot_dat matrix <2,0,0,0,0,1,0,4,-1,0,-64,-3> }
	object { rect1_dot_dat matrix <1,0,0,0,0,-2,0,1,0,-3,-67,2> }
	object { rect1_dot_dat matrix <1,0,0,0,0,2,0,1,0,-3,-67,-2> }
	object { rect1_dot_dat matrix <-1,0,0,0,0,2,0,1,0,3,-67,-2> }
	object { rect1_dot_dat matrix <-1,0,0,0,0,-2,0,1,0,3,-67,2> }
// 
// BFC INVERTNEXT
	object { _1_dash_4cyli_dot_dat matrix <0,-2,0,0,0,4,-2,0,0,6,-66,-2> }
	object { _1_dash_4ndis_dot_dat matrix <0,-2,0,0,0,1,-2,0,0,6,-66,-2> }
	object { _1_dash_4ndis_dot_dat matrix <0,-2,0,0,0,-1,-2,0,0,6,-66,2> }
// 
// BFC INVERTNEXT
	object { _1_dash_4cyli_dot_dat matrix <0,-2,0,0,0,4,2,0,0,-6,-66,-2> }
	object { _1_dash_4ndis_dot_dat matrix <0,-2,0,0,0,1,2,0,0,-6,-66,-2> }
	object { _1_dash_4ndis_dot_dat matrix <0,-2,0,0,0,-1,2,0,0,-6,-66,2> }
}
#end
#end // ifndef (s_slash_3351as02_dot_dat)


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


//// Part s\3570s01.dat
#ifndef (s_slash_3570s01_dot_dat)
#declare s_slash_3570s01_dot_dat = #if (L3Quality = 0) box { <-18,-104,-20>, <18,8,20> } #else union {
// ~Roadsign Octagonal without Decorated Surface
// Name: s\3570s01.dat
// Author: Franklin W. Cain [fwcain]
// !LDRAW_ORG Subpart UPDATE 2010-02
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CW
// !HISTORY 2003-08-01 [Steffen] BFCed; made use of "stand" subfile
// !HISTORY 2004-10-16 [cwdee] Add lines at top of post removed from 674s00
// !HISTORY 2005-12-28 [PTadmin] Official Update 2005-01
// !HISTORY 2007-09-10 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
// !HISTORY 2010-03-29 [tchang] Modify round junction with 647s00, add more primitives
// !HISTORY 2010-04-22 [PTadmin] Renamed from s/739s01
// !HISTORY 2010-07-05 [PTadmin] Official Update 2010-02
	object { s_slash_3351as02_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,0,0> }
// 
	object { rect3_dot_dat matrix <0,0,2,0,-1,0,0.5,0,0,6.5,-68,0> }
	object { rect3_dot_dat matrix <0,0,-2,0,-1,0,-0.5,0,0,-6.5,-68,0> }
	object { rect_dot_dat matrix <0,0,2,-1,0,0,0,-7,0,18,-86,0> }
	object { rect_dot_dat matrix <0,0,2,1,0,0,0,7,0,-18,-86,0> }
	object { rect_dot_dat matrix <0,0,-2,0,1,0,7,0,0,0,-104,0> }
// 
	object { rect2p_dot_dat matrix <5.5,-5.5,0,-1,-1,0,0,0,2,12.5,-73.5,0> }
	object { rect2p_dot_dat matrix <5.5,5.5,0,1,-1,0,0,0,2,-12.5,-73.5,0> }
	object { rect2p_dot_dat matrix <-5.5,-5.5,0,-1,1,0,0,0,2,12.5,-98.5,0> }
	object { rect2p_dot_dat matrix <-5.5,5.5,0,1,1,0,0,0,2,-12.5,-98.5,0> }
	mesh {
		triangle { <18,-93,2>, <-18,-93,2>, <-18,-79,2> }
		triangle { <-18,-79,2>, <18,-79,2>, <18,-93,2> }
		triangle { <18,-93,2>, <7,-104,2>, <-7,-104,2> }
		triangle { <-7,-104,2>, <-18,-93,2>, <18,-93,2> }
		triangle { <-18,-79,2>, <-7,-68,2>, <7,-68,2> }
		triangle { <7,-68,2>, <18,-79,2>, <-18,-79,2> }
	}
}
#end
#end // ifndef (s_slash_3570s01_dot_dat)


//// Primitive 1-4disc.dat
#ifndef (_1_dash_4disc_dot_dat)
#declare _1_dash_4disc_dot_dat = disc { <0,0,0>, <0,1,0>, 1 clipped_by { plane { -x, 0 } plane { -z, 0 } } }
#end // ifndef (_1_dash_4disc_dot_dat)


//// Primitive 2-4disc.dat
#ifndef (_2_dash_4disc_dot_dat)
#declare _2_dash_4disc_dot_dat = disc { <0,0,0>, <0,1,0>, 1 clipped_by { box { <-2,-1,0>, <2,1,2> } } }
#end // ifndef (_2_dash_4disc_dot_dat)


//// Primitive 2-4ndis.dat
#ifndef (_2_dash_4ndis_dot_dat)
#declare _2_dash_4ndis_dot_dat = disc { <0,0,0>, <0,1,0>, 2, 1 clipped_by { box { <-1,-1,0>, <1,1,1> } } }
#end // ifndef (_2_dash_4ndis_dot_dat)


//// Primitive 1-8disc.dat
#ifndef (_1_dash_8disc_dot_dat)
#declare _1_dash_8disc_dot_dat = disc {
	<0,0,0>, <0,1,0>, 1
	clipped_by { plane { -z,0 } plane { <-1,0,1>,0 } }
}
#end // ifndef (_1_dash_8disc_dot_dat)


//// Primitive 1-8ndis.dat
#ifndef (_1_dash_8ndis_dot_dat)
#declare _1_dash_8ndis_dot_dat = disc {
	<0,0,0>, <0,1,0>, 2, 1
	clipped_by { plane { x, 1 } plane { -z, 0 } plane { <-1,0,1>, 0 } }
}
#end // ifndef (_1_dash_8ndis_dot_dat)


//// Part 3570p01.dat
#ifndef (_3570p01_dot_dat)
#declare _3570p01_dot_dat = #if (L3Quality = 0) box { <-18,-104,-20>, <18,8,20> } #else union {
// Roadsign Octagonal with "STOP" Short Text Pattern
// Name: 3570p01.dat
// Author: Tore Eriksson [Tore_Eriksson]
// !LDRAW_ORG Part UPDATE 2010-02
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2002-08-18 [PTadmin] Official Update 2002-04
// !HISTORY 2003-08-01 [Steffen] made use of "stand" subfile
// !HISTORY 2003-11-05 [fwcain] subfiled the octagon...
// !HISTORY 2005-12-28 [PTadmin] Official Update 2005-01
// !HISTORY 2007-07-21 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
// !HISTORY 2010-04-21 [PTadmin] Renamed from 739p01
// !HISTORY 2010-04-22 [cwdee] Change white to main colour; BFCd
// !HISTORY 2010-07-05 [PTadmin] Official Update 2010-02
	object { s_slash_3570s01_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,0,0> }
// 
	mesh {
		triangle { <-7,-104,-2>, <-18,-93,-2>, <18,-93,-2> }
		triangle { <18,-93,-2>, <7,-104,-2>, <-7,-104,-2> }
		triangle { <18,-79,-2>, <-18,-79,-2>, <-7,-68,-2> }
		triangle { <-7,-68,-2>, <7,-68,-2>, <18,-79,-2> }
		triangle { <0.75,-79,-2>, <0.75,-93,-2>, <-0.75,-93,-2> }
		triangle { <-0.75,-93,-2>, <-0.75,-79,-2>, <0.75,-79,-2> }
		triangle { <-7.75,-93,-2>, <-9.25,-93,-2>, <-9.25,-79,-2> }
		triangle { <-9.25,-79,-2>, <-7.75,-79,-2>, <-7.75,-93,-2> }
		triangle { <9.25,-79,-2>, <9.25,-93,-2>, <7.75,-93,-2> }
		triangle { <7.75,-93,-2>, <7.75,-79,-2>, <9.25,-79,-2> }
		triangle { <-16.25,-93,-2>, <-18,-93,-2>, <-18,-79,-2> }
		triangle { <-18,-79,-2>, <-16.25,-79,-2>, <-16.25,-93,-2> }
		triangle { <18,-79,-2>, <18,-93,-2>, <16.25,-93,-2> }
		triangle { <16.25,-93,-2>, <16.25,-79,-2>, <18,-79,-2> }
// 
// Letter "S"
// 
		material { L3Color4 }
	}
	mesh {
		triangle { <-13.25,-91,-2>, <-12.25,-91,-2>, <-12.25,-93,-2> }
		triangle { <-12.25,-93,-2>, <-13.25,-93,-2>, <-13.25,-91,-2> }
		triangle { <-12.25,-79,-2>, <-12.25,-81,-2>, <-13.25,-81,-2> }
		triangle { <-13.25,-81,-2>, <-13.25,-79,-2>, <-12.25,-79,-2> }
		triangle { <-9.25,-90,-2>, <-12.25,-90,-2>, <-12.25,-88.5,-2> }
		triangle { <-12.25,-88.5,-2>, <-9.25,-88.5,-2>, <-9.25,-90,-2> }
		triangle { <-12.25,-83.5,-2>, <-12.25,-82,-2>, <-9.25,-82,-2> }
		triangle { <-9.25,-82,-2>, <-9.25,-83.5,-2>, <-12.25,-83.5,-2> }
	}
	mesh {
		triangle { <-12.25,-90,-2>, <-13.25,-90,-2>, <-13.25,-88.5,-2> }
		triangle { <-13.25,-88.5,-2>, <-12.25,-88.5,-2>, <-12.25,-90,-2> }
		triangle { <-13.25,-83.5,-2>, <-13.25,-82,-2>, <-12.25,-82,-2> }
		triangle { <-12.25,-82,-2>, <-12.25,-83.5,-2>, <-13.25,-83.5,-2> }
		material { L3Color4 }
	}
	mesh {
		triangle { <-13.25,-90,-2>, <-16.25,-90,-2>, <-16.25,-88.5,-2> }
		triangle { <-16.25,-88.5,-2>, <-13.25,-88.5,-2>, <-13.25,-90,-2> }
		triangle { <-16.25,-83.5,-2>, <-16.25,-82,-2>, <-13.25,-82,-2> }
		triangle { <-13.25,-82,-2>, <-13.25,-83.5,-2>, <-16.25,-83.5,-2> }
	}
	mesh {
		triangle { <-13.25,-88.5,-2>, <-9.25,-86.5,-2>, <-9.25,-88.5,-2> }
		triangle { <-12.25,-83.5,-2>, <-16.25,-85.5,-2>, <-16.25,-83.5,-2> }
		triangle { <-9.25,-86.5,-2>, <-13.25,-88.5,-2>, <-10.129,-85.621,-2> }
		triangle { <-16.25,-85.5,-2>, <-12.25,-83.5,-2>, <-15.371,-86.379,-2> }
		material { L3Color4 }
	}
	mesh {
		triangle { <-12.25,-83.5,-2>, <-10.129,-85.621,-2>, <-13.25,-88.5,-2> }
		triangle { <-13.25,-88.5,-2>, <-15.371,-86.379,-2>, <-12.25,-83.5,-2> }
// 
	}
	object { _1_dash_4disc_dot_dat matrix <-3,0,0,0,0,1,0,-3,0,-13.25,-90,-2> }
	object { _1_dash_4ndis_dot_dat matrix <-3,0,0,0,0,1,0,-3,0,-13.25,-90,-2> material { L3Color4 } }
	object { _1_dash_4disc_dot_dat matrix <-3,0,0,0,0,1,0,3,0,-13.25,-82,-2> }
	object { _1_dash_4ndis_dot_dat matrix <-3,0,0,0,0,1,0,3,0,-13.25,-82,-2> material { L3Color4 } }
	object { _1_dash_4disc_dot_dat matrix <3,0,0,0,0,1,0,-3,0,-12.25,-90,-2> }
	object { _1_dash_4ndis_dot_dat matrix <3,0,0,0,0,1,0,-3,0,-12.25,-90,-2> material { L3Color4 } }
	object { _1_dash_4disc_dot_dat matrix <3,0,0,0,0,1,0,3,0,-12.25,-82,-2> }
	object { _1_dash_4ndis_dot_dat matrix <3,0,0,0,0,1,0,3,0,-12.25,-82,-2> material { L3Color4 } }
	object { _2_dash_4disc_dot_dat matrix <0.5,0,0,0,0,1,0,-1,0,-12.75,-90,-2> material { L3Color4 } }
	object { _2_dash_4ndis_dot_dat matrix <0.5,0,0,0,0,1,0,-1,0,-12.75,-90,-2> }
	object { _2_dash_4disc_dot_dat matrix <0.5,0,0,0,0,1,0,1,0,-12.75,-82,-2> material { L3Color4 } }
	object { _2_dash_4ndis_dot_dat matrix <0.5,0,0,0,0,1,0,1,0,-12.75,-82,-2> }
	object { _1_dash_8disc_dot_dat matrix <-3,0,0,0,0,1,0,3,0,-13.25,-88.5,-2> }
	object { _1_dash_8ndis_dot_dat matrix <-3,0,0,0,0,1,0,3,0,-13.25,-88.5,-2> material { L3Color4 } }
	object { _1_dash_8disc_dot_dat matrix <3,0,0,0,0,1,0,-3,0,-12.25,-83.5,-2> }
	object { _1_dash_8ndis_dot_dat matrix <3,0,0,0,0,1,0,-3,0,-12.25,-83.5,-2> material { L3Color4 } }
// 
// Letter "T"
// 
	mesh {
		triangle { <-0.75,-93,-2>, <-7.75,-93,-2>, <-7.75,-90,-2> }
		triangle { <-7.75,-90,-2>, <-0.75,-90,-2>, <-0.75,-93,-2> }
		triangle { <-2.75,-90,-2>, <-5.75,-90,-2>, <-5.75,-79,-2> }
		triangle { <-5.75,-79,-2>, <-2.75,-79,-2>, <-2.75,-90,-2> }
	}
	mesh {
		triangle { <-0.75,-90,-2>, <-2.75,-90,-2>, <-2.75,-79,-2> }
		triangle { <-2.75,-79,-2>, <-0.75,-79,-2>, <-0.75,-90,-2> }
		triangle { <-5.75,-90,-2>, <-7.75,-90,-2>, <-7.75,-79,-2> }
		triangle { <-7.75,-79,-2>, <-5.75,-79,-2>, <-5.75,-90,-2> }
// 
// Letter "O"
// 
		material { L3Color4 }
	}
	mesh {
		triangle { <3.75,-82,-2>, <3.75,-90,-2>, <0.75,-90,-2> }
		triangle { <0.75,-90,-2>, <0.75,-82,-2>, <3.75,-82,-2> }
		triangle { <7.75,-82,-2>, <7.75,-90,-2>, <4.75,-90,-2> }
		triangle { <4.75,-90,-2>, <4.75,-82,-2>, <7.75,-82,-2> }
	}
	mesh {
		triangle { <4.75,-82,-2>, <4.75,-90,-2>, <3.75,-90,-2> }
		triangle { <3.75,-90,-2>, <3.75,-82,-2>, <4.75,-82,-2> }
		material { L3Color4 }
	}
	mesh {
		triangle { <4.75,-91,-2>, <4.75,-93,-2>, <3.75,-93,-2> }
		triangle { <3.75,-93,-2>, <3.75,-91,-2>, <4.75,-91,-2> }
		triangle { <3.75,-79,-2>, <4.75,-79,-2>, <4.75,-81,-2> }
		triangle { <4.75,-81,-2>, <3.75,-81,-2>, <3.75,-79,-2> }
// 
	}
	object { _1_dash_4disc_dot_dat matrix <-3,0,0,0,0,1,0,-3,0,3.75,-90,-2> }
	object { _1_dash_4ndis_dot_dat matrix <-3,0,0,0,0,1,0,-3,0,3.75,-90,-2> material { L3Color4 } }
	object { _1_dash_4disc_dot_dat matrix <-3,0,0,0,0,1,0,3,0,3.75,-82,-2> }
	object { _1_dash_4ndis_dot_dat matrix <-3,0,0,0,0,1,0,3,0,3.75,-82,-2> material { L3Color4 } }
	object { _1_dash_4disc_dot_dat matrix <3,0,0,0,0,1,0,-3,0,4.75,-90,-2> }
	object { _1_dash_4ndis_dot_dat matrix <3,0,0,0,0,1,0,-3,0,4.75,-90,-2> material { L3Color4 } }
	object { _1_dash_4disc_dot_dat matrix <3,0,0,0,0,1,0,3,0,4.75,-82,-2> }
	object { _1_dash_4ndis_dot_dat matrix <3,0,0,0,0,1,0,3,0,4.75,-82,-2> material { L3Color4 } }
	object { _2_dash_4disc_dot_dat matrix <0.5,0,0,0,0,1,0,-1,0,4.25,-90,-2> material { L3Color4 } }
	object { _2_dash_4ndis_dot_dat matrix <0.5,0,0,0,0,1,0,-1,0,4.25,-90,-2> }
	object { _2_dash_4disc_dot_dat matrix <0.5,0,0,0,0,1,0,1,0,4.25,-82,-2> material { L3Color4 } }
	object { _2_dash_4ndis_dot_dat matrix <0.5,0,0,0,0,1,0,1,0,4.25,-82,-2> }
// 
// Letter "P"
// 
	mesh {
		triangle { <12.25,-79,-2>, <12.25,-93,-2>, <9.25,-93,-2> }
		triangle { <9.25,-93,-2>, <9.25,-79,-2>, <12.25,-79,-2> }
	}
	mesh {
		triangle { <16.25,-79,-2>, <16.25,-84,-2>, <12.25,-84,-2> }
		triangle { <12.25,-84,-2>, <12.25,-79,-2>, <16.25,-79,-2> }
		material { L3Color4 }
	}
	mesh {
		triangle { <13.25,-90,-2>, <13.25,-93,-2>, <12.25,-93,-2> }
		triangle { <12.25,-93,-2>, <12.25,-90,-2>, <13.25,-90,-2> }
	}
	mesh {
		triangle { <13.25,-88,-2>, <13.25,-89,-2>, <12.25,-89,-2> }
		triangle { <12.25,-89,-2>, <12.25,-88,-2>, <13.25,-88,-2> }
		material { L3Color4 }
	}
	mesh {
		triangle { <13.25,-84,-2>, <13.25,-87,-2>, <12.25,-87,-2> }
		triangle { <12.25,-87,-2>, <12.25,-84,-2>, <13.25,-84,-2> }
		triangle { <16.25,-87,-2>, <16.25,-90,-2>, <13.25,-90,-2> }
		triangle { <13.25,-90,-2>, <13.25,-87,-2>, <16.25,-87,-2> }
// 
	}
	object { _1_dash_4disc_dot_dat matrix <3,0,0,0,0,1,0,-3,0,13.25,-90,-2> }
	object { _1_dash_4ndis_dot_dat matrix <3,0,0,0,0,1,0,-3,0,13.25,-90,-2> material { L3Color4 } }
	object { _1_dash_4disc_dot_dat matrix <3,0,0,0,0,1,0,3,0,13.25,-87,-2> }
	object { _1_dash_4ndis_dot_dat matrix <3,0,0,0,0,1,0,3,0,13.25,-87,-2> material { L3Color4 } }
	object { _1_dash_4disc_dot_dat matrix <1,0,0,0,0,1,0,-1,0,12.25,-89,-2> material { L3Color4 } }
	object { _1_dash_4ndis_dot_dat matrix <1,0,0,0,0,1,0,-1,0,12.25,-89,-2> }
	object { _1_dash_4disc_dot_dat matrix <1,0,0,0,0,1,0,1,0,12.25,-88,-2> material { L3Color4 } }
	object { _1_dash_4ndis_dot_dat matrix <1,0,0,0,0,1,0,1,0,12.25,-88,-2> }
}
#end
#end // ifndef (_3570p01_dot_dat)


//// Model infrastructure_signstop.ldr
#ifndef (infrastructure__signstop_dot_ldr)
#declare infrastructure__signstop_dot_ldr = object {
// Stop Sign One Direction
// Name: infrastructure_signstop.ldr
// Author: Michael Horvath
// Unofficial Datsville Model
// ROTATION CENTER 0 0 0 1 "Custom"
// ROTATION CONFIG 0 0
	// 1 15  0 -8 0  1 0 0  0 1 0  0 0 1 3570p01.dat
	object {
		_3570p01_dot_dat
		matrix <1-L3SW/36,0,0,0,1-L3SW/112,0,0,0,1-L3SW/40,0,L3SW/-2.33333,0>
		matrix <1,0,0,0,1,0,0,0,1,0,-8,0>
		material { L3Color15 }
	}
}
#end // ifndef (infrastructure__signstop_dot_ldr)


//// ModelData
#declare L3ModelBBoxMin = <-18,-112,-20>;
#declare L3ModelBBoxMax = <18,0,20>;
#declare L3ModelBBoxCenter = (L3ModelBBoxMin+L3ModelBBoxMax)/2; // <0,-56,0>
#declare L3ModelBBoxSize = L3ModelBBoxMax-L3ModelBBoxMin; // <36,112,40>
#declare L3FloorY = L3ModelBBoxMax.y;

//// ModelObject infrastructure_signstop.ldr
object { infrastructure__signstop_dot_ldr no_image no_reflection rotate y * floor(frame_number/4) * 90}



//// Statistics
//               PARTS             P         Total
// DAT files:        3            21            25
// POV Equivs:       -            10 (48%)
// Model has 1 parts (1 studs)

//// End
