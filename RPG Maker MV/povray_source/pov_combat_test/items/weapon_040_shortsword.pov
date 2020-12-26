// Generated by L3P v1.4 BETA 20131202 (Win32)  (C) 1998-2013 Lars C. Hassing SP.lars@AM.hassings.dk
// L3P website:  http://www.hassings.dk/l3/l3p.html
// LDraw.org:    http://www.ldraw.org
// Date:         Fri Aug 22 22:42:10 2014
// Input file:   D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_040_shortsword.ldr
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
// Commandline:  "E:\Programs Windows\l3p14beta\l3p.exe" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_040_shortsword.ldr" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_040_shortsword.pov" -o -ic -il -ibitems.inc -ieweapons_camera.inc

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


//// Primitive 1-4con0.dat
#ifndef (_1_dash_4con0_dot_dat)
#declare _1_dash_4con0_dot_dat = cone {
	<0,0,0>, 1, <0,1,0>, 0 open
	clipped_by { plane { -x, 0 } plane { -z, 0 } }
}
#end // ifndef (_1_dash_4con0_dot_dat)


//// Primitive 1-4cyls.dat
#ifndef (_1_dash_4cyls_dot_dat)
#declare _1_dash_4cyls_dot_dat = cylinder {
	<0,0,0>, <0,1,0>, 1 open
	clipped_by { plane { <-1,0,-1>,-sqrt(1/2) } plane { <1,1,0>,sqrt(1/2) } }
}
#end // ifndef (_1_dash_4cyls_dot_dat)


//// Primitive 2-4cyli.dat
#ifndef (_2_dash_4cyli_dot_dat)
#declare _2_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open clipped_by { plane { -z, 0 } } }
#end // ifndef (_2_dash_4cyli_dot_dat)


//// Primitive 4-4disc.dat
#ifndef (_4_dash_4disc_dot_dat)
#declare _4_dash_4disc_dot_dat = disc { <0,0,0>, <0,1,0>, 1 }
#end // ifndef (_4_dash_4disc_dot_dat)


//// Primitive 8-8sphe.dat
#ifndef (_8_dash_8sphe_dot_dat)
#declare _8_dash_8sphe_dot_dat = sphere { <0,0,0>, 1 }
#end // ifndef (_8_dash_8sphe_dot_dat)


//// Primitive 4-4cyli.dat
#ifndef (_4_dash_4cyli_dot_dat)
#declare _4_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open }
#end // ifndef (_4_dash_4cyli_dot_dat)


//// Part 3847.dat
#ifndef (_3847_dot_dat)
#declare _3847_dot_dat = #if (L3Quality = 0) box { <-4,-58,-16>, <4,22,16> } #else union {
// Minifig Sword Shortsword
// Name: 3847.dat
// Author: James Jessiman
// !LDRAW_ORG Part UPDATE 2004-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !CATEGORY Minifig Accessory
// !KEYWORDS Castle, weapon, blade, sword, shortsword, gladius
// !HISTORY 1997-10-29 [PTadmin] Official Update 1997-16
// !HISTORY 2003-01-23 [sbliss] Retitled, completed header, BFC'ed, converted degenerate quads to triangles...
// !HISTORY 2003-11-21 [westrate] Extended blade to hilt, grip to bottom sphere, removed duplicate type-5 lines...
// !HISTORY 2003-12-27 [cwdee] added shortsword to title
// !HISTORY 2004-03-02 [PTadmin] Official Update 2004-01
// !HISTORY 2007-06-30 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
// Blade
	object { _1_dash_4con0_dot_dat matrix <0,-6,0,2,0,0,0,0,6,0,-52,0> }
	object { _1_dash_4con0_dot_dat matrix <0,0,-6,2,0,0,0,-6,0,0,-52,0> }
	object { _1_dash_4con0_dot_dat matrix <0,-6,0,-2,0,0,0,0,-6,0,-52,0> }
	object { _1_dash_4con0_dot_dat matrix <0,0,6,-2,0,0,0,-6,0,0,-52,0> }
	mesh {
		triangle { <0,-4,6>, <0,-52,6>, <2,-52,0> }
		triangle { <2,-52,0>, <2,-4,0>, <0,-4,6> }
		triangle { <-2,-52,0>, <0,-52,6>, <0,-4,6> }
		triangle { <0,-4,6>, <-2,-4,0>, <-2,-52,0> }
		triangle { <2,-52,0>, <0,-52,-6>, <0,-4,-6> }
		triangle { <0,-4,-6>, <2,-4,0>, <2,-52,0> }
		triangle { <0,-4,-6>, <0,-52,-6>, <-2,-52,0> }
		triangle { <-2,-52,0>, <-2,-4,0>, <0,-4,-6> }
		triangle { <-2,-4,0>, <-1.5308,-3.6956,-1.4076>, <0,-4,-6> }
		triangle { <-2,-3.382,0>, <-1.5308,-3.6956,-1.4076>, <-2,-4,0> }
		triangle { <2,-4,0>, <1.5308,-3.6956,1.4076>, <0,-4,6> }
		triangle { <2,-3.382,0>, <1.5308,-3.6956,1.4076>, <2,-4,0> }
		triangle { <0,-4,-6>, <1.5308,-3.6956,-1.4076>, <2,-4,0> }
		triangle { <2,-4,0>, <1.5308,-3.6956,-1.4076>, <2,-3.382,0> }
		triangle { <0,-4,6>, <-1.5308,-3.6956,1.4076>, <-2,-4,0> }
		triangle { <-2,-4,0>, <-1.5308,-3.6956,1.4076>, <-2,-3.382,0> }
// Hilt
	}
	object { _1_dash_4cyls_dot_dat matrix <0,4,0,0,0,4,4,0,0,0,0,-4> }
	object { _1_dash_4cyls_dot_dat matrix <0,4,0,0,0,4,-4,0,0,0,0,-4> }
	object { _1_dash_4cyls_dot_dat matrix <0,4,0,0,0,-4,4,0,0,0,0,4> }
	object { _1_dash_4cyls_dot_dat matrix <0,4,0,0,0,-4,-4,0,0,0,0,4> }
	object { _1_dash_4cyls_dot_dat matrix <0,0,4,0,-4,0,4,0,0,0,4,0> }
	object { _1_dash_4cyls_dot_dat matrix <0,0,-4,0,-4,0,4,0,0,0,4,0> }
	object { _1_dash_4cyls_dot_dat matrix <0,0,4,0,-4,0,-4,0,0,0,4,0> }
	object { _1_dash_4cyls_dot_dat matrix <0,0,-4,0,-4,0,-4,0,0,0,4,0> }
	object { _2_dash_4cyli_dot_dat matrix <4,0,0,0,0,20,0,-4,0,0,0,-10> }
	object { _2_dash_4cyli_dot_dat matrix <4,0,0,0,0,6,0,4,0,0,0,-10> }
	object { _2_dash_4cyli_dot_dat matrix <4,0,0,0,0,-6,0,4,0,0,0,10> }
	object { _4_dash_4disc_dot_dat matrix <-4,0,0,0,0,-1,0,4,0,0,0,10> }
	object { _4_dash_4disc_dot_dat matrix <4,0,0,0,0,1,0,4,0,0,0,-10> }
	object { _8_dash_8sphe_dot_dat matrix <4,0,0,0,4,0,0,0,4,0,0,12> }
	object { _8_dash_8sphe_dot_dat matrix <4,0,0,0,4,0,0,0,4,0,0,-12> }
	object { _4_dash_4cyli_dot_dat matrix <4,0,0,0,12,0,0,0,4,0,4,0> }
	object { _4_dash_4disc_dot_dat matrix <-4,0,0,0,-1,0,0,0,4,0,16,0> }
	object { _8_dash_8sphe_dot_dat matrix <4,0,0,0,4,0,0,0,4,0,18,0> }
// end of file
}
#end
#end // ifndef (_3847_dot_dat)


//// Model weapon_040_shortsword.ldr
#ifndef (weapon__040__shortsword_dot_ldr)
#declare weapon__040__shortsword_dot_ldr = object {
// Untitled
// Name: weapon_040_shortsword.ldr
// Author: MLCad
// Unofficial Model
// ROTATION CENTER 0 0 0 1 "Custom"
// ROTATION CONFIG 0 0
	// 1 7  0 18 0  0 0 -1  0 1 0  1 0 0 3847.dat
	object {
		_3847_dot_dat
		matrix <1-L3SW/8,0,0,0,1-L3SW/80,0,0,0,1-L3SW/32,0,L3SW/-4.44444,0>
		matrix <0,0,1,0,1,0,-1,0,0,0,18,0>
		material { L3Color7 }
	}
}
#end // ifndef (weapon__040__shortsword_dot_ldr)


//// ModelData
#declare L3ModelBBoxMin = <-16,-40,-4>;
#declare L3ModelBBoxMax = <16,40,4>;
#declare L3ModelBBoxCenter = (L3ModelBBoxMin+L3ModelBBoxMax)/2; // <0,0,0>
#declare L3ModelBBoxSize = L3ModelBBoxMax-L3ModelBBoxMin; // <32,80,8>
#declare L3FloorY = L3ModelBBoxMax.y;

//// ModelObject weapon_040_shortsword.ldr
object { weapon__040__shortsword_dot_ldr }



//// Statistics
//               PARTS             P         Total
// DAT files:        2             8            11
// POV Equivs:       -             6 (75%)
// Model has 2 parts (0 studs)

//// IncludeFile AtEnd
#include "weapons_camera.inc"

//// End
