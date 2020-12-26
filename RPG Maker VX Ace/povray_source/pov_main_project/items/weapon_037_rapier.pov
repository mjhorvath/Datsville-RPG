// Generated by L3P v1.4 BETA 20131202 (Win32)  (C) 1998-2013 Lars C. Hassing SP.lars@AM.hassings.dk
// L3P website:  http://www.hassings.dk/l3/l3p.html
// LDraw.org:    http://www.ldraw.org
// Date:         Fri Aug 22 22:42:10 2014
// Input file:   D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_037_rapier.ldr
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
// Commandline:  "E:\Programs Windows\l3p14beta\l3p.exe" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_037_rapier.ldr" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_037_rapier.pov" -o -ic -il -ibitems.inc -ieweapons_camera.inc

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


//// Primitive 4-4ring1.dat
#ifndef (_4_dash_4ring1_dot_dat)
#declare _4_dash_4ring1_dot_dat = disc { <0,0,0>, <0,1,0>, 2, 1 }
#end // ifndef (_4_dash_4ring1_dot_dat)


//// Primitive 4-4ring4.dat
#ifndef (_4_dash_4ring4_dot_dat)
#declare _4_dash_4ring4_dot_dat = disc { <0,0,0>, <0,1,0>, 5, 4 }
#end // ifndef (_4_dash_4ring4_dot_dat)


//// Primitive 4-8sphe.dat
#ifndef (_4_dash_8sphe_dot_dat)
#declare _4_dash_8sphe_dot_dat = sphere { <0,0,0>, 1 clipped_by { box { <-1,0,-1>, <2,2,2> } } }
#end // ifndef (_4_dash_8sphe_dot_dat)


//// Primitive 4-4con1.dat
#ifndef (_4_dash_4con1_dot_dat)
#declare _4_dash_4con1_dot_dat = cone { <0,0,0>, 2, <0,1,0>, 1 open }
#end // ifndef (_4_dash_4con1_dot_dat)


//// Primitive 8-8sphe.dat
#ifndef (_8_dash_8sphe_dot_dat)
#declare _8_dash_8sphe_dot_dat = sphere { <0,0,0>, 1 }
#end // ifndef (_8_dash_8sphe_dot_dat)


//// Part 93550.dat
#ifndef (_93550_dot_dat)
#declare _93550_dot_dat = #if (L3Quality = 0) box { <-10,-77.625,-10>, <10,8,10> } #else union {
// Minifig Sword Rapier
// Name: 93550.dat
// Author: Magnus Forsberg [MagFors]
// !LDRAW_ORG Part UPDATE 2011-02
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !CATEGORY Minifig Accessory
// !HISTORY 2011-12-29 [PTadmin] Official Update 2011-02
	object { _4_dash_4cylc_dot_dat matrix <-4,0,0,0,-14,0,0,0,4,0,8,0> }
// BFC INVERTNEXT
	object { _4_dash_4cylo_dot_dat matrix <8,0,0,0,5,0,0,0,8,0,-6,0> }
	object { _4_dash_4ring1_dot_dat matrix <-4,0,0,0,-1,0,0,0,4,0,-6,0> }
	object { _4_dash_4ring4_dot_dat matrix <-2,0,0,0,-1,0,0,0,2,0,-1,0> }
	object { _4_dash_4cyli_dot_dat matrix <10,0,0,0,2,0,0,0,10,0,-3,0> }
	object { _4_dash_8sphe_dot_dat matrix <-10,0,0,0,-8,0,0,0,10,0,-3,0> }
	object { _4_dash_4con1_dot_dat matrix <-1.125,0,0,0,-64,0,0,0,1.125,0,-10.45,0> }
	object { _8_dash_8sphe_dot_dat matrix <2.125,0,0,0,2.125,0,0,0,2.125,0,-75.5,0> }
}
#end
#end // ifndef (_93550_dot_dat)


//// Model weapon_037_rapier.ldr
#ifndef (weapon__037__rapier_dot_ldr)
#declare weapon__037__rapier_dot_ldr = object {
// Untitled
// Name: weapon_037_rapier.ldr
// Author: MLCad
// Unofficial Model
// ROTATION CENTER 0 0 0 1 "Custom"
// ROTATION CONFIG 0 0
	// 1 7  0 34 0  0 0 -1  0 1 0  1 0 0 93550.dat
	object {
		_93550_dot_dat
		matrix <1-L3SW/20,0,0,0,1-L3SW/85.625,0,0,0,1-L3SW/20,0,L3SW/-2.45961,0>
		matrix <0,0,1,0,1,0,-1,0,0,0,34,0>
		material { L3Color7 }
	}
}
#end // ifndef (weapon__037__rapier_dot_ldr)


//// ModelData
#declare L3ModelBBoxMin = <-10,-43.625,-10>;
#declare L3ModelBBoxMax = <10,42,10>;
#declare L3ModelBBoxCenter = (L3ModelBBoxMin+L3ModelBBoxMax)/2; // <0,-0.8125,0>
#declare L3ModelBBoxSize = L3ModelBBoxMax-L3ModelBBoxMin; // <20,85.625,20>
#declare L3FloorY = L3ModelBBoxMax.y;

//// ModelObject weapon_037_rapier.ldr
object { weapon__037__rapier_dot_ldr }



//// Statistics
//               PARTS             P         Total
// DAT files:        2            10            13
// POV Equivs:       -             7 (70%)
// Model has 2 parts (0 studs)

//// IncludeFile AtEnd
#include "weapons_camera.inc"

//// End
