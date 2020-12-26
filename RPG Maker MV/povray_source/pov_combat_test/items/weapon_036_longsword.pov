// Generated by L3P v1.4 BETA 20131202 (Win32)  (C) 1998-2013 Lars C. Hassing SP.lars@AM.hassings.dk
// L3P website:  http://www.hassings.dk/l3/l3p.html
// LDraw.org:    http://www.ldraw.org
// Date:         Fri Aug 22 22:42:10 2014
// Input file:   D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_036_longsword.ldr
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
// Commandline:  "E:\Programs Windows\l3p14beta\l3p.exe" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_036_longsword.ldr" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_036_longsword.pov" -o -ic -il -ibitems.inc -ieweapons_camera.inc

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


//// Primitive 4-4ring2.dat
#ifndef (_4_dash_4ring2_dot_dat)
#declare _4_dash_4ring2_dot_dat = disc { <0,0,0>, <0,1,0>, 3, 2 }
#end // ifndef (_4_dash_4ring2_dot_dat)


//// Primitive 4-8sphe.dat
#ifndef (_4_dash_8sphe_dot_dat)
#declare _4_dash_8sphe_dot_dat = sphere { <0,0,0>, 1 clipped_by { box { <-1,0,-1>, <2,2,2> } } }
#end // ifndef (_4_dash_8sphe_dot_dat)


//// Part s\98370s01.dat
#ifndef (s_slash_98370s01_dot_dat)
#declare s_slash_98370s01_dot_dat = #if (L3Quality = 0) box { <0,-73.5,-4>, <15,0,4> } #else object {
// ~Minifig Sword Longsword - Half
// Name: s\98370s01.dat
// Author: Christian Neumann [Wesley]
// !LDRAW_ORG Subpart UPDATE 2013-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2013-07-21 [PTadmin] Official Update 2013-01
	mesh {
		triangle { <0,-5.5,-4>, <0,0,-4>, <4,0,-3.75> }
		triangle { <4,0,-3.75>, <4,-5.5,-3.75>, <0,-5.5,-4> }
		triangle { <4,-5.5,-3.75>, <4,0,-3.75>, <10,-0.65,-3.2> }
		triangle { <10,-0.65,-3.2>, <10,-4.85,-3.2>, <4,-5.5,-3.75> }
		triangle { <14.15,-4,-2.6>, <10,-4.85,-3.2>, <10,-0.65,-3.2> }
		triangle { <10,-0.65,-3.2>, <14.15,-1.5,-2.6>, <14.15,-4,-2.6> }
		triangle { <14.15,-4,-2.6>, <14.15,-1.5,-2.6>, <14.55,-1.65,-2.45> }
		triangle { <14.55,-1.65,-2.45>, <14.55,-3.85,-2.45>, <14.15,-4,-2.6> }
		triangle { <14.55,-3.85,-2.45>, <14.55,-1.65,-2.45>, <14.85,-2,-2.1> }
		triangle { <14.85,-2,-2.1>, <14.85,-3.5,-2.1>, <14.55,-3.85,-2.45> }
		triangle { <14.85,-3.5,-2.1>, <14.85,-2,-2.1>, <15,-2.4,-1.7> }
		triangle { <15,-2.4,-1.7>, <15,-3.1,-1.7>, <14.85,-3.5,-2.1> }
		triangle { <4,-5.5,-3.75>, <4,-5.5,-0.72>, <0,-5.5,-2> }
		triangle { <0,-5.5,-2>, <0,-5.5,-4>, <4,-5.5,-3.75> }
		triangle { <4,-5.5,3.75>, <0,-5.5,4>, <0,-5.5,2> }
		triangle { <0,-5.5,2>, <4,-5.5,0.72>, <4,-5.5,3.75> }
		triangle { <5,-5.392,0.4>, <4,-5.5,3.75>, <4,-5.5,0.72> }
		triangle { <4,-5.5,-0.72>, <4,-5.5,-3.75>, <5,-5.392,-0.4> }
		triangle { <10,-4.85,-3.2>, <5,-5.392,-0.4>, <4,-5.5,-3.75> }
		triangle { <4,-5.5,3.75>, <5,-5.392,0.4>, <10,-4.85,3.2> }
		triangle { <5,-5.392,-0.4>, <10,-4.85,-3.2>, <10,-4.85,3.2> }
		triangle { <10,-4.85,3.2>, <5,-5.392,0.4>, <5,-5.392,-0.4> }
		triangle { <14.15,-4,-2.6>, <14.15,-4,2.6>, <10,-4.85,3.2> }
		triangle { <10,-4.85,3.2>, <10,-4.85,-3.2>, <14.15,-4,-2.6> }
		triangle { <14.55,-3.85,-2.45>, <14.55,-3.85,2.45>, <14.15,-4,2.6> }
		triangle { <14.15,-4,2.6>, <14.15,-4,-2.6>, <14.55,-3.85,-2.45> }
		triangle { <14.85,-3.5,-2.1>, <14.85,-3.5,2.1>, <14.55,-3.85,2.45> }
		triangle { <14.55,-3.85,2.45>, <14.55,-3.85,-2.45>, <14.85,-3.5,-2.1> }
		triangle { <15,-3.1,-1.7>, <15,-3.1,1.7>, <14.85,-3.5,2.1> }
		triangle { <14.85,-3.5,2.1>, <14.85,-3.5,-2.1>, <15,-3.1,-1.7> }
		triangle { <15,-2.4,-1.7>, <15,-2.4,1.7>, <15,-3.1,1.7> }
		triangle { <15,-3.1,1.7>, <15,-3.1,-1.7>, <15,-2.4,-1.7> }
		triangle { <14.85,-2,-2.1>, <14.85,-2,2.1>, <15,-2.4,1.7> }
		triangle { <15,-2.4,1.7>, <15,-2.4,-1.7>, <14.85,-2,-2.1> }
		triangle { <14.55,-1.65,-2.45>, <14.55,-1.65,2.45>, <14.85,-2,2.1> }
		triangle { <14.85,-2,2.1>, <14.85,-2,-2.1>, <14.55,-1.65,-2.45> }
		triangle { <14.15,-1.5,-2.6>, <14.15,-1.5,2.6>, <14.55,-1.65,2.45> }
		triangle { <14.55,-1.65,2.45>, <14.55,-1.65,-2.45>, <14.15,-1.5,-2.6> }
		triangle { <10,-0.65,-3.2>, <10,-0.65,3.2>, <14.15,-1.5,2.6> }
		triangle { <14.15,-1.5,2.6>, <14.15,-1.5,-2.6>, <10,-0.65,-3.2> }
		triangle { <4,0,-3.75>, <4,0,3.75>, <10,-0.65,3.2> }
		triangle { <10,-0.65,3.2>, <10,-0.65,-3.2>, <4,0,-3.75> }
		triangle { <0,0,-4>, <0,0,4>, <4,0,3.75> }
		triangle { <4,0,3.75>, <4,0,-3.75>, <0,0,-4> }
		triangle { <4,-5.5,3.75>, <4,0,3.75>, <0,0,4> }
		triangle { <0,0,4>, <0,-5.5,4>, <4,-5.5,3.75> }
		triangle { <10,-4.85,3.2>, <10,-0.65,3.2>, <4,0,3.75> }
		triangle { <4,0,3.75>, <4,-5.5,3.75>, <10,-4.85,3.2> }
		triangle { <14.15,-1.5,2.6>, <10,-0.65,3.2>, <10,-4.85,3.2> }
		triangle { <10,-4.85,3.2>, <14.15,-4,2.6>, <14.15,-1.5,2.6> }
		triangle { <14.55,-3.85,2.45>, <14.55,-1.65,2.45>, <14.15,-1.5,2.6> }
		triangle { <14.15,-1.5,2.6>, <14.15,-4,2.6>, <14.55,-3.85,2.45> }
		triangle { <14.85,-3.5,2.1>, <14.85,-2,2.1>, <14.55,-1.65,2.45> }
		triangle { <14.55,-1.65,2.45>, <14.55,-3.85,2.45>, <14.85,-3.5,2.1> }
		triangle { <15,-3.1,1.7>, <15,-2.4,1.7>, <14.85,-2,2.1> }
		triangle { <14.85,-2,2.1>, <14.85,-3.5,2.1>, <15,-3.1,1.7> }
// blade
		triangle { <0,-5.5,-2>, <4,-5.5,-0.72>, <5,-57.5,-0.4> }
		triangle { <5,-57.5,-0.4>, <0,-57.5,-2>, <0,-5.5,-2> }
		triangle { <5,-5.392,-0.4>, <5,-57.5,-0.4>, <4,-5.5,-0.72> }
		triangle { <5,-5.392,0.4>, <5,-57.5,0.4>, <5,-57.5,-0.4> }
		triangle { <5,-57.5,-0.4>, <5,-5.392,-0.4>, <5,-5.392,0.4> }
		triangle { <0,-57.5,2>, <5,-57.5,0.4>, <4,-5.5,0.72> }
		triangle { <4,-5.5,0.72>, <0,-5.5,2>, <0,-57.5,2> }
		triangle { <4,-5.5,0.72>, <5,-57.5,0.4>, <5,-5.392,0.4> }
		triangle { <0,-57.5,-2>, <5,-57.5,-0.4>, <2,-71.5,-0.4> }
		triangle { <0,-57.5,-2>, <0.75,-73.32,-0.4>, <0,-73.5,-0.4> }
		triangle { <0,-57.5,-2>, <1.2,-73,-0.4>, <0.75,-73.32,-0.4> }
		triangle { <0,-57.5,-2>, <1.7,-72.25,-0.4>, <1.2,-73,-0.4> }
		triangle { <0,-57.5,-2>, <2,-71.5,-0.4>, <1.7,-72.25,-0.4> }
		triangle { <2,-71.5,0.4>, <5,-57.5,0.4>, <0,-57.5,2> }
		triangle { <0,-73.5,0.4>, <0.75,-73.32,0.4>, <0,-57.5,2> }
		triangle { <0.75,-73.32,0.4>, <1.2,-73,0.4>, <0,-57.5,2> }
		triangle { <1.2,-73,0.4>, <1.7,-72.25,0.4>, <0,-57.5,2> }
		triangle { <1.7,-72.25,0.4>, <2,-71.5,0.4>, <0,-57.5,2> }
		triangle { <5,-57.5,0.4>, <2,-71.5,0.4>, <2,-71.5,-0.4> }
		triangle { <2,-71.5,-0.4>, <5,-57.5,-0.4>, <5,-57.5,0.4> }
		triangle { <2,-71.5,0.4>, <1.7,-72.25,0.4>, <1.7,-72.25,-0.4> }
		triangle { <1.7,-72.25,-0.4>, <2,-71.5,-0.4>, <2,-71.5,0.4> }
		triangle { <1.7,-72.25,0.4>, <1.2,-73,0.4>, <1.2,-73,-0.4> }
		triangle { <1.2,-73,-0.4>, <1.7,-72.25,-0.4>, <1.7,-72.25,0.4> }
		triangle { <1.2,-73,0.4>, <0.75,-73.32,0.4>, <0.75,-73.32,-0.4> }
		triangle { <0.75,-73.32,-0.4>, <1.2,-73,-0.4>, <1.2,-73,0.4> }
		triangle { <0.75,-73.32,0.4>, <0,-73.5,0.4>, <0,-73.5,-0.4> }
		triangle { <0,-73.5,-0.4>, <0.75,-73.32,-0.4>, <0.75,-73.32,0.4> }
// conditional lines
	}
}
#end
#end // ifndef (s_slash_98370s01_dot_dat)


//// Part 98370.dat
#ifndef (_98370_dot_dat)
#declare _98370_dot_dat = #if (L3Quality = 0) box { <-6,-73.5,-15>, <6,22,15> } #else union {
// Minifig Sword Longsword
// Name: 98370.dat
// Author: Christian Neumann [Wesley]
// !LDRAW_ORG Part UPDATE 2013-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !CATEGORY Minifig Accessory
// !KEYWORDS Weapon
// !HISTORY 2013-07-21 [PTadmin] Official Update 2013-01
	object { _4_dash_4cylo_dot_dat matrix <4,0,0,0,16,0,0,0,4,0,0,0> }
	object { _4_dash_4ring2_dot_dat matrix <2,0,0,0,1,0,0,0,2,0,16,0> }
	object { _4_dash_8sphe_dot_dat matrix <6,0,0,0,6,0,0,0,6,0,16,0> }
	object { s_slash_98370s01_dot_dat matrix <0,0,1,0,1,0,-1,0,0,0,0,0> }
	object { s_slash_98370s01_dot_dat matrix <0,0,-1,0,1,0,-1,0,0,0,0,0> }
}
#end
#end // ifndef (_98370_dot_dat)


//// Model weapon_036_longsword.ldr
#ifndef (weapon__036__longsword_dot_ldr)
#declare weapon__036__longsword_dot_ldr = object {
// Untitled
// Name: weapon_036_longsword.ldr
// Author: MLCad
// Unofficial Model
// ROTATION CENTER 0 0 0 1 "Custom"
// ROTATION CONFIG 0 0
	// 1 7  0 25 0  0 0 -1  0 1 0  1 0 0 98370.dat
	object {
		_98370_dot_dat
		matrix <1-L3SW/12,0,0,0,1-L3SW/95.5,0,0,0,1-L3SW/30,0,L3SW/-3.70874,0>
		matrix <0,0,1,0,1,0,-1,0,0,0,25,0>
		material { L3Color7 }
	}
}
#end // ifndef (weapon__036__longsword_dot_ldr)


//// ModelData
#declare L3ModelBBoxMin = <-15,-48.5,-6>;
#declare L3ModelBBoxMax = <15,47,6>;
#declare L3ModelBBoxCenter = (L3ModelBBoxMin+L3ModelBBoxMax)/2; // <0,-0.75,0>
#declare L3ModelBBoxSize = L3ModelBBoxMax-L3ModelBBoxMin; // <30,95.5,12>
#declare L3FloorY = L3ModelBBoxMax.y;

//// ModelObject weapon_036_longsword.ldr
object { weapon__036__longsword_dot_ldr }



//// Statistics
//               PARTS             P         Total
// DAT files:        3             5             9
// POV Equivs:       -             3 (60%)
// Model has 2 parts (0 studs)

//// IncludeFile AtEnd
#include "weapons_camera.inc"

//// End
