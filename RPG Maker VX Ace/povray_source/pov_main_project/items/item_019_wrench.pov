// Generated by L3P v1.4 BETA 20131202 (Win32)  (C) 1998-2013 Lars C. Hassing SP.lars@AM.hassings.dk
// L3P website:  http://www.hassings.dk/l3/l3p.html
// LDraw.org:    http://www.ldraw.org
// Date:         Sun Aug 24 11:37:06 2014
// Input file:   D:\Datsville RPG\trunk\povray_source\pov_main_project\items\item_019_wrench.ldr
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
// Commandline:  "E:\Programs Windows\l3p14beta\l3p.exe" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\item_019_wrench.ldr" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\item_019_wrench.pov" -o -ic -il -ibitems.inc -iearmor_camera.inc

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


//// Primitive 4-4cyli.dat
#ifndef (_4_dash_4cyli_dot_dat)
#declare _4_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open }
#end // ifndef (_4_dash_4cyli_dot_dat)


//// Primitive 4-4ring8.dat
#ifndef (_4_dash_4ring8_dot_dat)
#declare _4_dash_4ring8_dot_dat = disc { <0,0,0>, <0,1,0>, 9, 8 }
#end // ifndef (_4_dash_4ring8_dot_dat)


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


//// Primitive 4-4con1.dat
#ifndef (_4_dash_4con1_dot_dat)
#declare _4_dash_4con1_dot_dat = cone { <0,0,0>, 2, <0,1,0>, 1 open }
#end // ifndef (_4_dash_4con1_dot_dat)


//// Primitive 4-4disc.dat
#ifndef (_4_dash_4disc_dot_dat)
#declare _4_dash_4disc_dot_dat = disc { <0,0,0>, <0,1,0>, 1 }
#end // ifndef (_4_dash_4disc_dot_dat)


//// Primitive t01o1154.dat
#ifndef (t01o1154_dot_dat)
#declare t01o1154_dot_dat = object {
// Torus Outside  1 x 0.1154 x 1
// Name: t01o1154.dat
// Author: Michael Heidemann [mikeheide]
// !LDRAW_ORG Primitive UPDATE 2013-02
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2010-12-31 [PTadmin] Official Update 2010-03
// !HISTORY 2013-09-27 [MMR1988] Recreated to fix condlines
// !HISTORY 2013-12-23 [PTadmin] Official Update 2013-02
// Major Radius: 26
// Tube(Minor) Radius: 3
// Segments(Sweep): 16/16 = 1.00
// 1  9  0 0 0  1 0 0  0 1 0  0 0 1 4-4edge.dat
// 1  12  1 0 0 0.1154 0 0  0 0 0.1154  0 1 0  4-4edge.dat
	mesh {
		triangle { <1,0.1154,0>, <0.9239,0.1154,0.3827>, <0.9647,0.1066,0.3996> }
		triangle { <0.9647,0.1066,0.3996>, <1.0442,0.1066,0>, <1,0.1154,0> }
		triangle { <1.0442,0.1066,0>, <0.9647,0.1066,0.3996>, <0.9993,0.0816,0.4139> }
		triangle { <0.9993,0.0816,0.4139>, <1.0816,0.0816,0>, <1.0442,0.1066,0> }
		triangle { <1.0816,0.0816,0>, <0.9993,0.0816,0.4139>, <1.0224,0.0442,0.4235> }
		triangle { <1.0224,0.0442,0.4235>, <1.1066,0.0442,0>, <1.0816,0.0816,0> }
		triangle { <1.1066,0.0442,0>, <1.0224,0.0442,0.4235>, <1.0305,0,0.4269> }
		triangle { <1.0305,0,0.4269>, <1.1154,0,0>, <1.1066,0.0442,0> }
		triangle { <0.9239,0.1154,0.3827>, <0.7071,0.1154,0.7071>, <0.7383,0.1066,0.7383> }
		triangle { <0.7383,0.1066,0.7383>, <0.9647,0.1066,0.3996>, <0.9239,0.1154,0.3827> }
		triangle { <0.9647,0.1066,0.3996>, <0.7383,0.1066,0.7383>, <0.7648,0.0816,0.7648> }
		triangle { <0.7648,0.0816,0.7648>, <0.9993,0.0816,0.4139>, <0.9647,0.1066,0.3996> }
		triangle { <0.9993,0.0816,0.4139>, <0.7648,0.0816,0.7648>, <0.7825,0.0442,0.7825> }
		triangle { <0.7825,0.0442,0.7825>, <1.0224,0.0442,0.4235>, <0.9993,0.0816,0.4139> }
		triangle { <1.0224,0.0442,0.4235>, <0.7825,0.0442,0.7825>, <0.7887,0,0.7887> }
		triangle { <0.7887,0,0.7887>, <1.0305,0,0.4269>, <1.0224,0.0442,0.4235> }
		triangle { <0.7071,0.1154,0.7071>, <0.3827,0.1154,0.9239>, <0.3996,0.1066,0.9647> }
		triangle { <0.3996,0.1066,0.9647>, <0.7383,0.1066,0.7383>, <0.7071,0.1154,0.7071> }
		triangle { <0.7383,0.1066,0.7383>, <0.3996,0.1066,0.9647>, <0.4139,0.0816,0.9993> }
		triangle { <0.4139,0.0816,0.9993>, <0.7648,0.0816,0.7648>, <0.7383,0.1066,0.7383> }
		triangle { <0.7648,0.0816,0.7648>, <0.4139,0.0816,0.9993>, <0.4235,0.0442,1.0224> }
		triangle { <0.4235,0.0442,1.0224>, <0.7825,0.0442,0.7825>, <0.7648,0.0816,0.7648> }
		triangle { <0.7825,0.0442,0.7825>, <0.4235,0.0442,1.0224>, <0.4269,0,1.0305> }
		triangle { <0.4269,0,1.0305>, <0.7887,0,0.7887>, <0.7825,0.0442,0.7825> }
		triangle { <0.3827,0.1154,0.9239>, <0,0.1154,1>, <0,0.1066,1.0442> }
		triangle { <0,0.1066,1.0442>, <0.3996,0.1066,0.9647>, <0.3827,0.1154,0.9239> }
		triangle { <0.3996,0.1066,0.9647>, <0,0.1066,1.0442>, <0,0.0816,1.0816> }
		triangle { <0,0.0816,1.0816>, <0.4139,0.0816,0.9993>, <0.3996,0.1066,0.9647> }
		triangle { <0.4139,0.0816,0.9993>, <0,0.0816,1.0816>, <0,0.0442,1.1066> }
		triangle { <0,0.0442,1.1066>, <0.4235,0.0442,1.0224>, <0.4139,0.0816,0.9993> }
		triangle { <0.4235,0.0442,1.0224>, <0,0.0442,1.1066>, <0,0,1.1154> }
		triangle { <0,0,1.1154>, <0.4269,0,1.0305>, <0.4235,0.0442,1.0224> }
		triangle { <0,0.1154,1>, <-0.3827,0.1154,0.9239>, <-0.3996,0.1066,0.9647> }
		triangle { <-0.3996,0.1066,0.9647>, <0,0.1066,1.0442>, <0,0.1154,1> }
		triangle { <0,0.1066,1.0442>, <-0.3996,0.1066,0.9647>, <-0.4139,0.0816,0.9993> }
		triangle { <-0.4139,0.0816,0.9993>, <0,0.0816,1.0816>, <0,0.1066,1.0442> }
		triangle { <0,0.0816,1.0816>, <-0.4139,0.0816,0.9993>, <-0.4235,0.0442,1.0224> }
		triangle { <-0.4235,0.0442,1.0224>, <0,0.0442,1.1066>, <0,0.0816,1.0816> }
		triangle { <0,0.0442,1.1066>, <-0.4235,0.0442,1.0224>, <-0.4269,0,1.0305> }
		triangle { <-0.4269,0,1.0305>, <0,0,1.1154>, <0,0.0442,1.1066> }
		triangle { <-0.3827,0.1154,0.9239>, <-0.7071,0.1154,0.7071>, <-0.7383,0.1066,0.7383> }
		triangle { <-0.7383,0.1066,0.7383>, <-0.3996,0.1066,0.9647>, <-0.3827,0.1154,0.9239> }
		triangle { <-0.3996,0.1066,0.9647>, <-0.7383,0.1066,0.7383>, <-0.7648,0.0816,0.7648> }
		triangle { <-0.7648,0.0816,0.7648>, <-0.4139,0.0816,0.9993>, <-0.3996,0.1066,0.9647> }
		triangle { <-0.4139,0.0816,0.9993>, <-0.7648,0.0816,0.7648>, <-0.7825,0.0442,0.7825> }
		triangle { <-0.7825,0.0442,0.7825>, <-0.4235,0.0442,1.0224>, <-0.4139,0.0816,0.9993> }
		triangle { <-0.4235,0.0442,1.0224>, <-0.7825,0.0442,0.7825>, <-0.7887,0,0.7887> }
		triangle { <-0.7887,0,0.7887>, <-0.4269,0,1.0305>, <-0.4235,0.0442,1.0224> }
		triangle { <-0.7071,0.1154,0.7071>, <-0.9239,0.1154,0.3827>, <-0.9647,0.1066,0.3996> }
		triangle { <-0.9647,0.1066,0.3996>, <-0.7383,0.1066,0.7383>, <-0.7071,0.1154,0.7071> }
		triangle { <-0.7383,0.1066,0.7383>, <-0.9647,0.1066,0.3996>, <-0.9993,0.0816,0.4139> }
		triangle { <-0.9993,0.0816,0.4139>, <-0.7648,0.0816,0.7648>, <-0.7383,0.1066,0.7383> }
		triangle { <-0.7648,0.0816,0.7648>, <-0.9993,0.0816,0.4139>, <-1.0224,0.0442,0.4235> }
		triangle { <-1.0224,0.0442,0.4235>, <-0.7825,0.0442,0.7825>, <-0.7648,0.0816,0.7648> }
		triangle { <-0.7825,0.0442,0.7825>, <-1.0224,0.0442,0.4235>, <-1.0305,0,0.4269> }
		triangle { <-1.0305,0,0.4269>, <-0.7887,0,0.7887>, <-0.7825,0.0442,0.7825> }
		triangle { <-0.9239,0.1154,0.3827>, <-1,0.1154,0>, <-1.0442,0.1066,0> }
		triangle { <-1.0442,0.1066,0>, <-0.9647,0.1066,0.3996>, <-0.9239,0.1154,0.3827> }
		triangle { <-0.9647,0.1066,0.3996>, <-1.0442,0.1066,0>, <-1.0816,0.0816,0> }
		triangle { <-1.0816,0.0816,0>, <-0.9993,0.0816,0.4139>, <-0.9647,0.1066,0.3996> }
		triangle { <-0.9993,0.0816,0.4139>, <-1.0816,0.0816,0>, <-1.1066,0.0442,0> }
		triangle { <-1.1066,0.0442,0>, <-1.0224,0.0442,0.4235>, <-0.9993,0.0816,0.4139> }
		triangle { <-1.0224,0.0442,0.4235>, <-1.1066,0.0442,0>, <-1.1154,0,0> }
		triangle { <-1.1154,0,0>, <-1.0305,0,0.4269>, <-1.0224,0.0442,0.4235> }
		triangle { <-1,0.1154,0>, <-0.9239,0.1154,-0.3827>, <-0.9647,0.1066,-0.3996> }
		triangle { <-0.9647,0.1066,-0.3996>, <-1.0442,0.1066,0>, <-1,0.1154,0> }
		triangle { <-1.0442,0.1066,0>, <-0.9647,0.1066,-0.3996>, <-0.9993,0.0816,-0.4139> }
		triangle { <-0.9993,0.0816,-0.4139>, <-1.0816,0.0816,0>, <-1.0442,0.1066,0> }
		triangle { <-1.0816,0.0816,0>, <-0.9993,0.0816,-0.4139>, <-1.0224,0.0442,-0.4235> }
		triangle { <-1.0224,0.0442,-0.4235>, <-1.1066,0.0442,0>, <-1.0816,0.0816,0> }
		triangle { <-1.1066,0.0442,0>, <-1.0224,0.0442,-0.4235>, <-1.0305,0,-0.4269> }
		triangle { <-1.0305,0,-0.4269>, <-1.1154,0,0>, <-1.1066,0.0442,0> }
		triangle { <-0.9239,0.1154,-0.3827>, <-0.7071,0.1154,-0.7071>, <-0.7383,0.1066,-0.7383> }
		triangle { <-0.7383,0.1066,-0.7383>, <-0.9647,0.1066,-0.3996>, <-0.9239,0.1154,-0.3827> }
		triangle { <-0.9647,0.1066,-0.3996>, <-0.7383,0.1066,-0.7383>, <-0.7648,0.0816,-0.7648> }
		triangle { <-0.7648,0.0816,-0.7648>, <-0.9993,0.0816,-0.4139>, <-0.9647,0.1066,-0.3996> }
		triangle { <-0.9993,0.0816,-0.4139>, <-0.7648,0.0816,-0.7648>, <-0.7825,0.0442,-0.7825> }
		triangle { <-0.7825,0.0442,-0.7825>, <-1.0224,0.0442,-0.4235>, <-0.9993,0.0816,-0.4139> }
		triangle { <-1.0224,0.0442,-0.4235>, <-0.7825,0.0442,-0.7825>, <-0.7887,0,-0.7887> }
		triangle { <-0.7887,0,-0.7887>, <-1.0305,0,-0.4269>, <-1.0224,0.0442,-0.4235> }
		triangle { <-0.7071,0.1154,-0.7071>, <-0.3827,0.1154,-0.9239>, <-0.3996,0.1066,-0.9647> }
		triangle { <-0.3996,0.1066,-0.9647>, <-0.7383,0.1066,-0.7383>, <-0.7071,0.1154,-0.7071> }
		triangle { <-0.7383,0.1066,-0.7383>, <-0.3996,0.1066,-0.9647>, <-0.4139,0.0816,-0.9993> }
		triangle { <-0.4139,0.0816,-0.9993>, <-0.7648,0.0816,-0.7648>, <-0.7383,0.1066,-0.7383> }
		triangle { <-0.7648,0.0816,-0.7648>, <-0.4139,0.0816,-0.9993>, <-0.4235,0.0442,-1.0224> }
		triangle { <-0.4235,0.0442,-1.0224>, <-0.7825,0.0442,-0.7825>, <-0.7648,0.0816,-0.7648> }
		triangle { <-0.7825,0.0442,-0.7825>, <-0.4235,0.0442,-1.0224>, <-0.4269,0,-1.0305> }
		triangle { <-0.4269,0,-1.0305>, <-0.7887,0,-0.7887>, <-0.7825,0.0442,-0.7825> }
		triangle { <-0.3827,0.1154,-0.9239>, <0,0.1154,-1>, <0,0.1066,-1.0442> }
		triangle { <0,0.1066,-1.0442>, <-0.3996,0.1066,-0.9647>, <-0.3827,0.1154,-0.9239> }
		triangle { <-0.3996,0.1066,-0.9647>, <0,0.1066,-1.0442>, <0,0.0816,-1.0816> }
		triangle { <0,0.0816,-1.0816>, <-0.4139,0.0816,-0.9993>, <-0.3996,0.1066,-0.9647> }
		triangle { <-0.4139,0.0816,-0.9993>, <0,0.0816,-1.0816>, <0,0.0442,-1.1066> }
		triangle { <0,0.0442,-1.1066>, <-0.4235,0.0442,-1.0224>, <-0.4139,0.0816,-0.9993> }
		triangle { <-0.4235,0.0442,-1.0224>, <0,0.0442,-1.1066>, <0,0,-1.1154> }
		triangle { <0,0,-1.1154>, <-0.4269,0,-1.0305>, <-0.4235,0.0442,-1.0224> }
		triangle { <0,0.1154,-1>, <0.3827,0.1154,-0.9239>, <0.3996,0.1066,-0.9647> }
		triangle { <0.3996,0.1066,-0.9647>, <0,0.1066,-1.0442>, <0,0.1154,-1> }
		triangle { <0,0.1066,-1.0442>, <0.3996,0.1066,-0.9647>, <0.4139,0.0816,-0.9993> }
		triangle { <0.4139,0.0816,-0.9993>, <0,0.0816,-1.0816>, <0,0.1066,-1.0442> }
		triangle { <0,0.0816,-1.0816>, <0.4139,0.0816,-0.9993>, <0.4235,0.0442,-1.0224> }
		triangle { <0.4235,0.0442,-1.0224>, <0,0.0442,-1.1066>, <0,0.0816,-1.0816> }
		triangle { <0,0.0442,-1.1066>, <0.4235,0.0442,-1.0224>, <0.4269,0,-1.0305> }
		triangle { <0.4269,0,-1.0305>, <0,0,-1.1154>, <0,0.0442,-1.1066> }
		triangle { <0.3827,0.1154,-0.9239>, <0.7071,0.1154,-0.7071>, <0.7383,0.1066,-0.7383> }
		triangle { <0.7383,0.1066,-0.7383>, <0.3996,0.1066,-0.9647>, <0.3827,0.1154,-0.9239> }
		triangle { <0.3996,0.1066,-0.9647>, <0.7383,0.1066,-0.7383>, <0.7648,0.0816,-0.7648> }
		triangle { <0.7648,0.0816,-0.7648>, <0.4139,0.0816,-0.9993>, <0.3996,0.1066,-0.9647> }
		triangle { <0.4139,0.0816,-0.9993>, <0.7648,0.0816,-0.7648>, <0.7825,0.0442,-0.7825> }
		triangle { <0.7825,0.0442,-0.7825>, <0.4235,0.0442,-1.0224>, <0.4139,0.0816,-0.9993> }
		triangle { <0.4235,0.0442,-1.0224>, <0.7825,0.0442,-0.7825>, <0.7887,0,-0.7887> }
		triangle { <0.7887,0,-0.7887>, <0.4269,0,-1.0305>, <0.4235,0.0442,-1.0224> }
		triangle { <0.7071,0.1154,-0.7071>, <0.9239,0.1154,-0.3827>, <0.9647,0.1066,-0.3996> }
		triangle { <0.9647,0.1066,-0.3996>, <0.7383,0.1066,-0.7383>, <0.7071,0.1154,-0.7071> }
		triangle { <0.7383,0.1066,-0.7383>, <0.9647,0.1066,-0.3996>, <0.9993,0.0816,-0.4139> }
		triangle { <0.9993,0.0816,-0.4139>, <0.7648,0.0816,-0.7648>, <0.7383,0.1066,-0.7383> }
		triangle { <0.7648,0.0816,-0.7648>, <0.9993,0.0816,-0.4139>, <1.0224,0.0442,-0.4235> }
		triangle { <1.0224,0.0442,-0.4235>, <0.7825,0.0442,-0.7825>, <0.7648,0.0816,-0.7648> }
		triangle { <0.7825,0.0442,-0.7825>, <1.0224,0.0442,-0.4235>, <1.0305,0,-0.4269> }
		triangle { <1.0305,0,-0.4269>, <0.7887,0,-0.7887>, <0.7825,0.0442,-0.7825> }
		triangle { <0.9239,0.1154,-0.3827>, <1,0.1154,0>, <1.0442,0.1066,0> }
		triangle { <1.0442,0.1066,0>, <0.9647,0.1066,-0.3996>, <0.9239,0.1154,-0.3827> }
		triangle { <0.9647,0.1066,-0.3996>, <1.0442,0.1066,0>, <1.0816,0.0816,0> }
		triangle { <1.0816,0.0816,0>, <0.9993,0.0816,-0.4139>, <0.9647,0.1066,-0.3996> }
		triangle { <0.9993,0.0816,-0.4139>, <1.0816,0.0816,0>, <1.1066,0.0442,0> }
		triangle { <1.1066,0.0442,0>, <1.0224,0.0442,-0.4235>, <0.9993,0.0816,-0.4139> }
		triangle { <1.0224,0.0442,-0.4235>, <1.1066,0.0442,0>, <1.1154,0,0> }
		triangle { <1.1154,0,0>, <1.0305,0,-0.4269>, <1.0224,0.0442,-0.4235> }
// conditional lines
// Build by Primitive Generator 2
	}
}
#end // ifndef (t01o1154_dot_dat)


//// Part s\6246s01.dat
#ifndef (s_slash_6246s01_dot_dat)
#declare s_slash_6246s01_dot_dat = #if (L3Quality = 0) box { <-4.00006,26,-4.00006>, <4.00006,48,4.00006> } #else union {
// ~Minifig Tool Handle
// Name: s\6246s01.dat
// Author: Philippe Hurbain [Philo]
// !LDRAW_ORG Subpart UPDATE 2012-02
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2012-08-09 [PTadmin] Official Update 2012-02
	object { _4_dash_4disc_dot_dat matrix <4,0,0,0,-4,0,0,0,4,0,48,0> }
	object { _4_dash_4cyli_dot_dat matrix <4,0,0,0,4,0,0,0,4,0,26,0> }
	object { _4_dash_4cyli_dot_dat matrix <4,0,0,0,6,0,0,0,4,0,42,0> }
	object { t01o1154_dot_dat matrix <0,0,-3.58621,0,-7.42857,0,3.58621,0,0,0,42,0> }
	object { t01o1154_dot_dat matrix <0,0,-3.58621,0,7.42857,0,3.58621,0,0,0,40.286,0> }
	object { t01o1154_dot_dat matrix <0,0,-3.58621,0,-7.42857,0,3.58621,0,0,0,40.286,0> }
	object { t01o1154_dot_dat matrix <0,0,-3.58621,0,7.42857,0,3.58621,0,0,0,38.571,0> }
	object { t01o1154_dot_dat matrix <0,0,-3.58621,0,-7.42857,0,3.58621,0,0,0,38.571,0> }
	object { t01o1154_dot_dat matrix <0,0,-3.58621,0,7.42857,0,3.58621,0,0,0,36.857,0> }
	object { t01o1154_dot_dat matrix <0,0,-3.58621,0,-7.42857,0,3.58621,0,0,0,36.857,0> }
	object { t01o1154_dot_dat matrix <0,0,-3.58621,0,7.42857,0,3.58621,0,0,0,35.142,0> }
	object { t01o1154_dot_dat matrix <0,0,-3.58621,0,-7.42857,0,3.58621,0,0,0,35.142,0> }
	object { t01o1154_dot_dat matrix <0,0,-3.58621,0,7.42857,0,3.58621,0,0,0,33.428,0> }
	object { t01o1154_dot_dat matrix <0,0,-3.58621,0,-7.42857,0,3.58621,0,0,0,33.428,0> }
	object { t01o1154_dot_dat matrix <0,0,-3.58621,0,7.42857,0,3.58621,0,0,0,31.714,0> }
	object { t01o1154_dot_dat matrix <0,0,-3.58621,0,-7.42857,0,3.58621,0,0,0,31.714,0> }
	object { t01o1154_dot_dat matrix <0,0,-3.58621,0,7.42857,0,3.58621,0,0,0,30,0> }
}
#end
#end // ifndef (s_slash_6246s01_dot_dat)


//// Part 55300.dat
#ifndef (_55300_dot_dat)
#declare _55300_dot_dat = #if (L3Quality = 0) box { <-9,-36,-4.00006>, <9,12,4.00006> } #else union {
// Minifig Tool Box Wrench
// Name: 55300.dat
// Author: Steve Bliss [sbliss]
// !LDRAW_ORG Part UPDATE 2012-02
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CW
// !CATEGORY Minifig Accessory
// !KEYWORDS Town, Space, Star Wars, closed-end wrench, toolbox
// !KEYWORDS mechanic, engine, engineering, garage
// !HISTORY 1998-07-15 [PTadmin] Official Update 1998-07
// !HISTORY 1999-07-05 [PTadmin] Official Update 1999-05
// !HISTORY 1999-08-19 [sbliss] changed 4-4con12.dat to 4-4con1.dat
// !HISTORY 2000-05-07 [PTadmin] Official Update 2000-01
// !HISTORY 2003-06-22 [Steffen] added 2 ring primitives to remove rendering artifacts, removed 1 duplicate line, fixed null matrices, BFCed.
// !HISTORY 2003-07-28 [Steffen] fixed orientation of 4-4ring8 primitives: the primitive's BFC orientation has changed!
// !HISTORY 2003-11-25 [OrionP] added ridges
// !HISTORY 2003-11-26 [fwcain] added more keywords
// !HISTORY 2003-12-19 [PTadmin] Official Update 2003-03
// !HISTORY 2007-07-16 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
// !HISTORY 2010-03-17 [arezey] Fixed intersection
// !HISTORY 2010-03-17 [PTadmin] Renamed from 6246d
// !HISTORY 2010-03-20 [Philo] Subparted handle, put origin in handle
// !HISTORY 2012-08-09 [PTadmin] Official Update 2012-02
	object { _4_dash_4cyli_dot_dat matrix <2,0,0,0,-6,0,0,0,2,0,-13,0> }
	object { _4_dash_4ring8_dot_dat matrix <1,0,0,0,0,-1,0,1,0,0,-27,4> }
	object { _4_dash_4ring8_dot_dat matrix <1,0,0,0,0,1,0,1,0,0,-27,-4> }
	object { _4_dash_4cyli_dot_dat matrix <9,0,0,0,0,8,0,9,0,0,-27,-4> }
	object { rect_dot_dat matrix <0,0,4,9.2373,16,0,3,-1.732,0,3,-21.804,0> }
	object { rect3_dot_dat matrix <0,0,4,1.0154,0,0,0,-3.554,0,6,-27.09,0> }
	object { rect3_dot_dat matrix <0,0,4,13.136,-24,0,-3,-1.642,0,3,-32.286,0> }
	object { rect3_dot_dat matrix <0,0,4,-0.4801,-1,0,-3,1.642,0,-3,-32.286,0> }
	object { rect3_dot_dat matrix <0,0,4,-1,0,0,0,3.554,0,-6,-27.09,0> }
	object { rect2p_dot_dat matrix <3,1.732,0,-0.5,1,0,0,0,-4,-3,-21.804,0> }
	mesh {
		triangle { <0,-33.928,-4>, <-3.42,-35.28,-4>, <0,-36,-4> }
		triangle { <0,-36,-4>, <3.42,-35.28,-4>, <0,-33.928,-4> }
		triangle { <-3.42,-35.28,-4>, <0,-33.928,-4>, <-6,-30.644,-4> }
		triangle { <-6,-30.644,-4>, <-6.3,-33.3,-4>, <-3.42,-35.28,-4> }
		triangle { <-8.28,-30.42,-4>, <-6.3,-33.3,-4>, <-6,-30.644,-4> }
		triangle { <-6,-30.644,-4>, <-9,-27,-4>, <-8.28,-30.42,-4> }
		triangle { <-6,-30.644,-4>, <-6,-23.536,-4>, <-9,-27,-4> }
		triangle { <-8.28,-23.58,-4>, <-9,-27,-4>, <-6,-23.536,-4> }
		triangle { <-6,-23.536,-4>, <-6.3,-20.7,-4>, <-8.28,-23.58,-4> }
		triangle { <-6,-23.536,-4>, <0,-20.072,-4>, <-3.42,-18.72,-4> }
		triangle { <-3.42,-18.72,-4>, <-6.3,-20.7,-4>, <-6,-23.536,-4> }
		triangle { <0,-18,-4>, <-3.42,-18.72,-4>, <0,-20.072,-4> }
		triangle { <0,-20.072,-4>, <3.42,-18.72,-4>, <0,-18,-4> }
		triangle { <3.42,-18.72,-4>, <0,-20.072,-4>, <6,-23.536,-4> }
		triangle { <6,-23.536,-4>, <6.3,-20.7,-4>, <3.42,-18.72,-4> }
		triangle { <6,-23.536,-4>, <9,-27,-4>, <8.28,-23.58,-4> }
		triangle { <8.28,-23.58,-4>, <6.3,-20.7,-4>, <6,-23.536,-4> }
		triangle { <9,-27,-4>, <6,-23.536,-4>, <6,-30.644,-4> }
		triangle { <6,-30.644,-4>, <6.3,-33.3,-4>, <8.28,-30.42,-4> }
		triangle { <8.28,-30.42,-4>, <9,-27,-4>, <6,-30.644,-4> }
		triangle { <6,-30.644,-4>, <0,-33.928,-4>, <3.42,-35.28,-4> }
		triangle { <3.42,-35.28,-4>, <6.3,-33.3,-4>, <6,-30.644,-4> }
		triangle { <0,-36,4>, <-3.42,-35.28,4>, <0,-33.928,4> }
		triangle { <0,-33.928,4>, <3.42,-35.28,4>, <0,-36,4> }
		triangle { <-6,-30.644,4>, <0,-33.928,4>, <-3.42,-35.28,4> }
		triangle { <-3.42,-35.28,4>, <-6.3,-33.3,4>, <-6,-30.644,4> }
		triangle { <-6,-30.644,4>, <-6.3,-33.3,4>, <-8.28,-30.42,4> }
		triangle { <-8.28,-30.42,4>, <-9,-27,4>, <-6,-30.644,4> }
		triangle { <-9,-27,4>, <-6,-23.536,4>, <-6,-30.644,4> }
		triangle { <-6,-23.536,4>, <-9,-27,4>, <-8.28,-23.58,4> }
		triangle { <-8.28,-23.58,4>, <-6.3,-20.7,4>, <-6,-23.536,4> }
		triangle { <-3.42,-18.72,4>, <0,-20.072,4>, <-6,-23.536,4> }
		triangle { <-6,-23.536,4>, <-6.3,-20.7,4>, <-3.42,-18.72,4> }
		triangle { <0,-20.072,4>, <-3.42,-18.72,4>, <0,-18,4> }
		triangle { <0,-18,4>, <3.42,-18.72,4>, <0,-20.072,4> }
		triangle { <6,-23.536,4>, <0,-20.072,4>, <3.42,-18.72,4> }
		triangle { <3.42,-18.72,4>, <6.3,-20.7,4>, <6,-23.536,4> }
		triangle { <8.28,-23.58,4>, <9,-27,4>, <6,-23.536,4> }
		triangle { <6,-23.536,4>, <6.3,-20.7,4>, <8.28,-23.58,4> }
		triangle { <6,-30.644,4>, <6,-23.536,4>, <9,-27,4> }
		triangle { <8.28,-30.42,4>, <6.3,-33.3,4>, <6,-30.644,4> }
		triangle { <6,-30.644,4>, <9,-27,4>, <8.28,-30.42,4> }
		triangle { <3.42,-35.28,4>, <0,-33.928,4>, <6,-30.644,4> }
		triangle { <6,-30.644,4>, <6.3,-33.3,4>, <3.42,-35.28,4> }
	}
	object { _4_dash_4con1_dot_dat matrix <2,0,0,0,-3,0,0,0,2,0,-10,0> }
	object { s_slash_6246s01_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,-36,0> }
}
#end
#end // ifndef (_55300_dot_dat)


//// Model item_019_wrench.ldr
#ifndef (item__019__wrench_dot_ldr)
#declare item__019__wrench_dot_ldr = object {
// Untitled
// Name: item_019_wrench.ldr
// Author: MLCad
// Unofficial Model
// ROTATION CENTER 0 0 0 1 "Custom"
// ROTATION CONFIG 0 0
	// 1 7  0 12 0  -1 0 0  0 1 0  0 0 -1 55300.dat
	object {
		_55300_dot_dat
		matrix <1-L3SW/18,0,0,0,1-L3SW/48,0,0,0,1-L3SW/8.00012,0,L3SW/-4,0>
		matrix <-1,0,0,0,1,0,0,0,-1,0,12,0>
		material { L3Color7 }
	}
}
#end // ifndef (item__019__wrench_dot_ldr)


//// ModelData
#declare L3ModelBBoxMin = <-9,-24,-4.00006>;
#declare L3ModelBBoxMax = <9,24,4.00006>;
#declare L3ModelBBoxCenter = (L3ModelBBoxMin+L3ModelBBoxMax)/2; // <0,0,0>
#declare L3ModelBBoxSize = L3ModelBBoxMax-L3ModelBBoxMin; // <18,48,8.00012>
#declare L3FloorY = L3ModelBBoxMax.y;

//// ModelObject item_019_wrench.ldr
object { item__019__wrench_dot_ldr }



//// Statistics
//               PARTS             P         Total
// DAT files:        3             9            13
// POV Equivs:       -             4 (44%)
// Model has 2 parts (0 studs)

//// IncludeFile AtEnd
#include "armor_camera.inc"

//// End
