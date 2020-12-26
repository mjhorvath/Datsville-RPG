// Generated by L3P v1.4 BETA 20131202 (Win32)  (C) 1998-2013 Lars C. Hassing SP.lars@AM.hassings.dk
// L3P website:  http://www.hassings.dk/l3/l3p.html
// LDraw.org:    http://www.ldraw.org
// Date:         Mon Apr 09 00:29:35 2018
// Input file:   D:\Datsville RPG\povray_source_mv\pov_combat_test\items\weapon_022_pickaxe.ldr
// Title:        Untitled
// Author:       MLCad
// ModelDir:     D:\Datsville RPG\povray_source_mv\pov_combat_test\items
// WorkDir:      D:\Datsville RPG\povray_source_mv\pov_combat_test\items
// LDRAWDIR:     C:\Users\Public\Documents\LDraw (LDRAWDIR environment variable)
// SearchDirs:   (Default)
// SearchDir1:   D:\Datsville RPG\povray_source_mv\pov_combat_test\items\ (0x10)
// SearchDir2:   C:\Users\Public\Documents\LDraw\P\ (0x9)
// SearchDir3:   C:\Users\Public\Documents\LDraw\PARTS\ (0x4)
// SearchDir4:   C:\Users\Public\Documents\LDraw\MODELS\ (0x0)
// ldconfig.ldr: C:\Users\Public\Documents\LDraw\ldconfig.ldr
// Commandline:  "E:\Programs Windows\LDraw\l3p14beta\L3P20131202.EXE" "D:\Datsville RPG\povray_source_mv\pov_combat_test\items\weapon_022_pickaxe.ldr" "D:\Datsville RPG\povray_source_mv\pov_combat_test\items\weapon_022_pickaxe.pov" -o -ic -il -ibitems.inc -ieweapons_camera.inc

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



//// Color 7 Light_Grey (from ldconfig.ldr)
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


//// Primitive box.dat
#ifndef (box_dot_dat)
#declare box_dot_dat = box { <-1,-1,-1>, <1,1,1> }
#end // ifndef (box_dot_dat)


//// Primitive 4-4cyli.dat
#ifndef (_4_dash_4cyli_dot_dat)
#declare _4_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open }
#end // ifndef (_4_dash_4cyli_dot_dat)


//// Primitive 4-8sphe.dat
#ifndef (_4_dash_8sphe_dot_dat)
#declare _4_dash_8sphe_dot_dat = sphere { <0,0,0>, 1 clipped_by { box { <-1,0,-1>, <2,2,2> } } }
#end // ifndef (_4_dash_8sphe_dot_dat)


//// Part 3841.dat
#ifndef (_3841_dot_dat)
#declare _3841_dot_dat = #if (L3Quality = 0) box { <-4,-40,-30>, <4,42,30> } #else union {
// Minifig Pickaxe
// Name: 3841.dat
// Author: Imre Papp [ampi]
// !LDRAW_ORG Part UPDATE 2003-03
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !CATEGORY Minifig Accessory
// !KEYWORDS minifig, tool, pickaxe, adventure
// !HISTORY 1999-07-05 [PTadmin] Official Update 1999-05
// !HISTORY 2003-06-08 [jriley] BFC compliant
// !HISTORY 2003-12-19 [PTadmin] Official Update 2003-03
// !HISTORY 2007-10-12 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
	object { box_dot_dat matrix <3,0,0,0,6,0,0,0,5,0,-34,0> }
// Axe blade edges
// Axe blade curved surface hidden lines & cross sections
// Axe blade surfaces
	mesh {
		triangle { <2,-39,-5>, <2.4,-39,-10>, <2,-30,-5> }
		triangle { <2.4,-39,-10>, <2.64,-38.7,-13>, <2,-30,-5> }
		triangle { <2.64,-38.7,-13>, <2.8,-38.5,-15>, <2,-30,-5> }
		triangle { <2.8,-38.5,-15>, <2.96,-38.2,-17>, <2,-30,-5> }
		triangle { <2.96,-38.2,-17>, <3.12,-37.8,-19>, <2,-30,-5> }
		triangle { <3.12,-37.8,-19>, <3.28,-37.2,-21>, <2,-30,-5> }
		triangle { <3.28,-37.2,-21>, <3.44,-36.4,-23>, <2,-30,-5> }
		triangle { <3.44,-36.4,-23>, <3.6,-35.3,-25>, <2,-30,-5> }
		triangle { <3.6,-35.3,-25>, <3.68,-34.7,-26>, <2,-30,-5> }
		triangle { <3.68,-34.7,-26>, <3.76,-33.7,-27>, <2,-30,-5> }
		triangle { <3.76,-33.7,-27>, <3.84,-32.5,-28>, <2,-30,-5> }
		triangle { <3.84,-32.5,-28>, <3.92,-31,-29>, <2,-30,-5> }
		triangle { <3.92,-31,-29>, <4,-29,-30>, <2,-30,-5> }
		triangle { <-2,-39,-5>, <-2,-30,-5>, <-2.4,-39,-10> }
		triangle { <-2.4,-39,-10>, <-2,-30,-5>, <-2.64,-38.7,-13> }
		triangle { <-2.64,-38.7,-13>, <-2,-30,-5>, <-2.8,-38.5,-15> }
		triangle { <-2.8,-38.5,-15>, <-2,-30,-5>, <-2.96,-38.2,-17> }
		triangle { <-2.96,-38.2,-17>, <-2,-30,-5>, <-3.12,-37.8,-19> }
		triangle { <-3.12,-37.8,-19>, <-2,-30,-5>, <-3.28,-37.2,-21> }
		triangle { <-3.28,-37.2,-21>, <-2,-30,-5>, <-3.44,-36.4,-23> }
		triangle { <-3.44,-36.4,-23>, <-2,-30,-5>, <-3.6,-35.3,-25> }
		triangle { <-3.6,-35.3,-25>, <-2,-30,-5>, <-3.68,-34.7,-26> }
		triangle { <-3.68,-34.7,-26>, <-2,-30,-5>, <-3.76,-33.7,-27> }
		triangle { <-3.76,-33.7,-27>, <-2,-30,-5>, <-3.84,-32.5,-28> }
		triangle { <-3.84,-32.5,-28>, <-2,-30,-5>, <-3.92,-31,-29> }
		triangle { <-3.92,-31,-29>, <-2,-30,-5>, <-4,-29,-30> }
		triangle { <2,-39,5>, <2,-30,5>, <1.8,-38.75,10> }
		triangle { <1.8,-38.75,10>, <2,-30,5>, <1.68,-38.25,13> }
		triangle { <1.68,-38.25,13>, <2,-30,5>, <1.6,-37.75,15> }
		triangle { <1.6,-37.75,15>, <2,-30,5>, <1.52,-37.2,17> }
		triangle { <1.52,-37.2,17>, <2,-30,5>, <1.44,-36.5,19> }
		triangle { <1.44,-36.5,19>, <2,-30,5>, <1.36,-35.75,21> }
		triangle { <1.36,-35.75,21>, <2,-30,5>, <1.28,-34.75,23> }
		triangle { <1.28,-34.75,23>, <2,-30,5>, <1.2,-33.65,25> }
		triangle { <1.2,-33.65,25>, <2,-30,5>, <1.16,-33.1,26> }
		triangle { <1.16,-33.1,26>, <2,-30,5>, <1.12,-32.4,27> }
		triangle { <1.12,-32.4,27>, <2,-30,5>, <1.08,-31.75,28> }
		triangle { <1.08,-31.75,28>, <2,-30,5>, <1.04,-30.75,29> }
		triangle { <1.04,-30.75,29>, <2,-30,5>, <1,-29,30> }
		triangle { <-2,-39,5>, <-1.8,-38.75,10>, <-2,-30,5> }
		triangle { <-1.8,-38.75,10>, <-1.68,-38.25,13>, <-2,-30,5> }
		triangle { <-1.68,-38.25,13>, <-1.6,-37.75,15>, <-2,-30,5> }
		triangle { <-1.6,-37.75,15>, <-1.52,-37.2,17>, <-2,-30,5> }
		triangle { <-1.52,-37.2,17>, <-1.44,-36.5,19>, <-2,-30,5> }
		triangle { <-1.44,-36.5,19>, <-1.36,-35.75,21>, <-2,-30,5> }
		triangle { <-1.36,-35.75,21>, <-1.28,-34.75,23>, <-2,-30,5> }
		triangle { <-1.28,-34.75,23>, <-1.2,-33.65,25>, <-2,-30,5> }
		triangle { <-1.2,-33.65,25>, <-1.16,-33.1,26>, <-2,-30,5> }
		triangle { <-1.16,-33.1,26>, <-1.12,-32.4,27>, <-2,-30,5> }
		triangle { <-1.12,-32.4,27>, <-1.08,-31.75,28>, <-2,-30,5> }
		triangle { <-1.08,-31.75,28>, <-1.04,-30.75,29>, <-2,-30,5> }
		triangle { <-1.04,-30.75,29>, <-1,-29,30>, <-2,-30,5> }
		triangle { <2,-39,-5>, <-2,-39,-5>, <-2.4,-39,-10> }
		triangle { <-2.4,-39,-10>, <2.4,-39,-10>, <2,-39,-5> }
		triangle { <2.4,-39,-10>, <-2.4,-39,-10>, <-2.64,-38.7,-13> }
		triangle { <-2.64,-38.7,-13>, <2.64,-38.7,-13>, <2.4,-39,-10> }
		triangle { <2.64,-38.7,-13>, <-2.64,-38.7,-13>, <-2.8,-38.5,-15> }
		triangle { <-2.8,-38.5,-15>, <2.8,-38.5,-15>, <2.64,-38.7,-13> }
		triangle { <2.8,-38.5,-15>, <-2.8,-38.5,-15>, <-2.96,-38.2,-17> }
		triangle { <-2.96,-38.2,-17>, <2.96,-38.2,-17>, <2.8,-38.5,-15> }
		triangle { <2.96,-38.2,-17>, <-2.96,-38.2,-17>, <-3.12,-37.8,-19> }
		triangle { <-3.12,-37.8,-19>, <3.12,-37.8,-19>, <2.96,-38.2,-17> }
		triangle { <3.12,-37.8,-19>, <-3.12,-37.8,-19>, <-3.28,-37.2,-21> }
		triangle { <-3.28,-37.2,-21>, <3.28,-37.2,-21>, <3.12,-37.8,-19> }
		triangle { <3.28,-37.2,-21>, <-3.28,-37.2,-21>, <-3.44,-36.4,-23> }
		triangle { <-3.44,-36.4,-23>, <3.44,-36.4,-23>, <3.28,-37.2,-21> }
		triangle { <3.44,-36.4,-23>, <-3.44,-36.4,-23>, <-3.6,-35.3,-25> }
		triangle { <-3.6,-35.3,-25>, <3.6,-35.3,-25>, <3.44,-36.4,-23> }
		triangle { <3.6,-35.3,-25>, <-3.6,-35.3,-25>, <-3.68,-34.7,-26> }
		triangle { <-3.68,-34.7,-26>, <3.68,-34.7,-26>, <3.6,-35.3,-25> }
		triangle { <3.68,-34.7,-26>, <-3.68,-34.7,-26>, <-3.76,-33.7,-27> }
		triangle { <-3.76,-33.7,-27>, <3.76,-33.7,-27>, <3.68,-34.7,-26> }
		triangle { <3.76,-33.7,-27>, <-3.76,-33.7,-27>, <-3.84,-32.5,-28> }
		triangle { <-3.84,-32.5,-28>, <3.84,-32.5,-28>, <3.76,-33.7,-27> }
		triangle { <3.84,-32.5,-28>, <-3.84,-32.5,-28>, <-3.92,-31,-29> }
		triangle { <-3.92,-31,-29>, <3.92,-31,-29>, <3.84,-32.5,-28> }
		triangle { <3.92,-31,-29>, <-3.92,-31,-29>, <-4,-29,-30> }
		triangle { <-4,-29,-30>, <4,-29,-30>, <3.92,-31,-29> }
		triangle { <4,-29,-30>, <-4,-29,-30>, <-2,-30,-5> }
		triangle { <-2,-30,-5>, <2,-30,-5>, <4,-29,-30> }
		triangle { <-2,-39,5>, <2,-39,5>, <1.8,-38.75,10> }
		triangle { <1.8,-38.75,10>, <-1.8,-38.75,10>, <-2,-39,5> }
		triangle { <-1.8,-38.75,10>, <1.8,-38.75,10>, <1.68,-38.25,13> }
		triangle { <1.68,-38.25,13>, <-1.68,-38.25,13>, <-1.8,-38.75,10> }
		triangle { <-1.68,-38.25,13>, <1.68,-38.25,13>, <1.6,-37.75,15> }
		triangle { <1.6,-37.75,15>, <-1.6,-37.75,15>, <-1.68,-38.25,13> }
		triangle { <-1.6,-37.75,15>, <1.6,-37.75,15>, <1.52,-37.2,17> }
		triangle { <1.52,-37.2,17>, <-1.52,-37.2,17>, <-1.6,-37.75,15> }
		triangle { <-1.52,-37.2,17>, <1.52,-37.2,17>, <1.44,-36.5,19> }
		triangle { <1.44,-36.5,19>, <-1.44,-36.5,19>, <-1.52,-37.2,17> }
		triangle { <-1.44,-36.5,19>, <1.44,-36.5,19>, <1.36,-35.75,21> }
		triangle { <1.36,-35.75,21>, <-1.36,-35.75,21>, <-1.44,-36.5,19> }
		triangle { <-1.36,-35.75,21>, <1.36,-35.75,21>, <1.28,-34.75,23> }
		triangle { <1.28,-34.75,23>, <-1.28,-34.75,23>, <-1.36,-35.75,21> }
		triangle { <-1.28,-34.75,23>, <1.28,-34.75,23>, <1.2,-33.65,25> }
		triangle { <1.2,-33.65,25>, <-1.2,-33.65,25>, <-1.28,-34.75,23> }
		triangle { <-1.2,-33.65,25>, <1.2,-33.65,25>, <1.16,-33.1,26> }
		triangle { <1.16,-33.1,26>, <-1.16,-33.1,26>, <-1.2,-33.65,25> }
		triangle { <-1.16,-33.1,26>, <1.16,-33.1,26>, <1.12,-32.4,27> }
		triangle { <1.12,-32.4,27>, <-1.12,-32.4,27>, <-1.16,-33.1,26> }
		triangle { <-1.12,-32.4,27>, <1.12,-32.4,27>, <1.08,-31.75,28> }
		triangle { <1.08,-31.75,28>, <-1.08,-31.75,28>, <-1.12,-32.4,27> }
		triangle { <-1.08,-31.75,28>, <1.08,-31.75,28>, <1.04,-30.75,29> }
		triangle { <1.04,-30.75,29>, <-1.04,-30.75,29>, <-1.08,-31.75,28> }
		triangle { <-1.04,-30.75,29>, <1.04,-30.75,29>, <1,-29,30> }
		triangle { <1,-29,30>, <-1,-29,30>, <-1.04,-30.75,29> }
		triangle { <-1,-29,30>, <1,-29,30>, <2,-30,5> }
		triangle { <2,-30,5>, <-2,-30,5>, <-1,-29,30> }
// Blade & handle joint edges
// Handle surfaces
		triangle { <-4,-8,0>, <-3.6955,-10.4662,1.5307>, <-3.6955,-8,1.5307> }
		triangle { <-3.6955,-10.4662,1.5307>, <-2.8284,-17.4892,2.8284>, <-2.8284,-8,2.8284> }
		triangle { <-2.8284,-8,2.8284>, <-3.6955,-8,1.5307>, <-3.6955,-10.4662,1.5307> }
		triangle { <-2.8284,-17.4892,2.8284>, <-1.5307,-28,3.6955>, <-1.5307,-8,3.6955> }
		triangle { <-1.5307,-8,3.6955>, <-2.8284,-8,2.8284>, <-2.8284,-17.4892,2.8284> }
		triangle { <-1.5307,-28,3.6955>, <0,-28,4>, <0,-8,4> }
		triangle { <0,-8,4>, <-1.5307,-8,3.6955>, <-1.5307,-28,3.6955> }
		triangle { <0,-28,4>, <1.5307,-28,3.6955>, <1.5307,-8,3.6955> }
		triangle { <1.5307,-8,3.6955>, <0,-8,4>, <0,-28,4> }
		triangle { <1.5307,-28,3.6955>, <2.8284,-17.4892,2.8284>, <2.8284,-8,2.8284> }
		triangle { <2.8284,-8,2.8284>, <1.5307,-8,3.6955>, <1.5307,-28,3.6955> }
		triangle { <2.8284,-17.4892,2.8284>, <3.6955,-10.4662,1.5307>, <3.6955,-8,1.5307> }
		triangle { <3.6955,-8,1.5307>, <2.8284,-8,2.8284>, <2.8284,-17.4892,2.8284> }
		triangle { <3.6955,-10.4662,1.5307>, <4,-8,0>, <3.6955,-8,1.5307> }
		triangle { <4,-8,0>, <3.6955,-10.4662,-1.5307>, <3.6955,-8,-1.5307> }
		triangle { <3.6955,-10.4662,-1.5307>, <2.8284,-17.4892,-2.8284>, <2.8284,-8,-2.8284> }
		triangle { <2.8284,-8,-2.8284>, <3.6955,-8,-1.5307>, <3.6955,-10.4662,-1.5307> }
		triangle { <2.8284,-17.4892,-2.8284>, <1.5307,-28,-3.6955>, <1.5307,-8,-3.6955> }
		triangle { <1.5307,-8,-3.6955>, <2.8284,-8,-2.8284>, <2.8284,-17.4892,-2.8284> }
		triangle { <1.5307,-28,-3.6955>, <0,-28,-4>, <0,-8,-4> }
		triangle { <0,-8,-4>, <1.5307,-8,-3.6955>, <1.5307,-28,-3.6955> }
		triangle { <0,-28,-4>, <-1.5307,-28,-3.6955>, <-1.5307,-8,-3.6955> }
		triangle { <-1.5307,-8,-3.6955>, <0,-8,-4>, <0,-28,-4> }
		triangle { <-1.5307,-28,-3.6955>, <-2.8284,-17.4892,-2.8284>, <-2.8284,-8,-2.8284> }
		triangle { <-2.8284,-8,-2.8284>, <-1.5307,-8,-3.6955>, <-1.5307,-28,-3.6955> }
		triangle { <-2.8284,-17.4892,-2.8284>, <-3.6955,-10.4662,-1.5307>, <-3.6955,-8,-1.5307> }
		triangle { <-3.6955,-8,-1.5307>, <-2.8284,-8,-2.8284>, <-2.8284,-17.4892,-2.8284> }
		triangle { <-3.6955,-10.4662,-1.5307>, <-4,-8,0>, <-3.6955,-8,-1.5307> }
		triangle { <-4,-8,0>, <-1.5307,-28,-3.6955>, <-1.5307,-28,3.6955> }
		triangle { <4,-8,0>, <1.5307,-28,3.6955>, <1.5307,-28,-3.6955> }
		triangle { <-4,-8,0>, <-1.5307,-28,3.6955>, <-2.8284,-17.4892,2.8284> }
		triangle { <-4,-8,0>, <-2.8284,-17.4892,2.8284>, <-3.6955,-10.4662,1.5307> }
		triangle { <4,-8,0>, <3.6955,-10.4662,1.5307>, <2.8284,-17.4892,2.8284> }
		triangle { <4,-8,0>, <2.8284,-17.4892,2.8284>, <1.5307,-28,3.6955> }
		triangle { <4,-8,0>, <1.5307,-28,-3.6955>, <2.8284,-17.4892,-2.8284> }
		triangle { <4,-8,0>, <2.8284,-17.4892,-2.8284>, <3.6955,-10.4662,-1.5307> }
		triangle { <-4,-8,0>, <-3.6955,-10.4662,-1.5307>, <-2.8284,-17.4892,-2.8284> }
		triangle { <-4,-8,0>, <-2.8284,-17.4892,-2.8284>, <-1.5307,-28,-3.6955> }
// Handle hidden lines
// Handle end
	}
	object { _4_dash_4cyli_dot_dat matrix <4,0,0,0,48,0,0,0,4,0,-8,0> }
	object { _4_dash_8sphe_dot_dat matrix <4,0,0,0,2,0,0,0,4,0,40,0> }
}
#end
#end // ifndef (_3841_dot_dat)


//// Model weapon_022_pickaxe.ldr
#ifndef (weapon__022__pickaxe_dot_ldr)
#declare weapon__022__pickaxe_dot_ldr = object {
// Untitled
// Name: weapon_022_pickaxe.ldr
// Author: MLCad
// Unofficial Model
// ROTATION CENTER 0 0 0 1 "Custom"
// ROTATION CONFIG 0 0
	// 1 7  0 7 0  0 0 -1  0 1 0  1 0 0 3841.dat
	object {
		_3841_dot_dat
		matrix <1-L3SW/8,0,0,0,1-L3SW/82,0,0,0,1-L3SW/60,0,L3SW/82,0>
		matrix <0,0,1,0,1,0,-1,0,0,0,7,0>
		material { L3Color7 }
	}
}
#end // ifndef (weapon__022__pickaxe_dot_ldr)


//// ModelData
#declare L3ModelBBoxMin = <-30,-33,-4>;
#declare L3ModelBBoxMax = <30,49,4>;
#declare L3ModelBBoxCenter = (L3ModelBBoxMin+L3ModelBBoxMax)/2; // <0,8,0>
#declare L3ModelBBoxSize = L3ModelBBoxMax-L3ModelBBoxMin; // <60,82,8>
#declare L3FloorY = L3ModelBBoxMax.y;

//// ModelObject weapon_022_pickaxe.ldr
object { weapon__022__pickaxe_dot_ldr }



//// Statistics
//               PARTS             P         Total
// DAT files:        2             3             6
// POV Equivs:       -             3 (100%)
// Model has 2 parts (0 studs)

//// IncludeFile AtEnd
#include "weapons_camera.inc"

//// End
