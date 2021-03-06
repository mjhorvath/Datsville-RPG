// Generated by L3P v1.4 BETA 20131202 (Win32)  (C) 1998-2013 Lars C. Hassing SP.lars@AM.hassings.dk
// L3P website:  http://www.hassings.dk/l3/l3p.html
// LDraw.org:    http://www.ldraw.org
// Date:         Fri Aug 22 22:42:09 2014
// Input file:   D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_031_speargun.ldr
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
// Commandline:  "E:\Programs Windows\l3p14beta\l3p.exe" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_031_speargun.ldr" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_031_speargun.pov" -o -ic -il -ibitems.inc -ieweapons_camera.inc

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


//// Color 1 Blue (from ldconfig.ldr)
#ifndef (L3Texture1)
#declare L3Texture1 = L3TextureOpaqueRGB(0,85,191)
#end
#ifndef (L3Texture1_slope)
#declare L3Texture1_slope = L3TextureSlope(L3Texture1)
#end
#ifndef (L3Color1)
#declare L3Color1 = L3Material(L3Texture1)
#end
#ifndef (L3Color1_slope)
#declare L3Color1_slope = L3Material(L3Texture1_slope)
#end


//// Primitive 4-4disc.dat
#ifndef (_4_dash_4disc_dot_dat)
#declare _4_dash_4disc_dot_dat = disc { <0,0,0>, <0,1,0>, 1 }
#end // ifndef (_4_dash_4disc_dot_dat)


//// Primitive 4-4cyli.dat
#ifndef (_4_dash_4cyli_dot_dat)
#declare _4_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open }
#end // ifndef (_4_dash_4cyli_dot_dat)


//// Primitive 4-4ring4.dat
#ifndef (_4_dash_4ring4_dot_dat)
#declare _4_dash_4ring4_dot_dat = disc { <0,0,0>, <0,1,0>, 5, 4 }
#end // ifndef (_4_dash_4ring4_dot_dat)


//// Primitive t04o2500.dat
#ifndef (t04o2500_dot_dat)
#declare t04o2500_dot_dat = torus {
	1, 2500/9999
	clipped_by {
		difference {
			box { <0,0,0>, <2,1,2> }
			cylinder { <0,0,0>, <0,1,0>, 1 open }
		}
	}
}
#end // ifndef (t04o2500_dot_dat)


//// Primitive 2-4disc.dat
#ifndef (_2_dash_4disc_dot_dat)
#declare _2_dash_4disc_dot_dat = disc { <0,0,0>, <0,1,0>, 1 clipped_by { box { <-2,-1,0>, <2,1,2> } } }
#end // ifndef (_2_dash_4disc_dot_dat)


//// Primitive 2-4cyli.dat
#ifndef (_2_dash_4cyli_dot_dat)
#declare _2_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open clipped_by { plane { -z, 0 } } }
#end // ifndef (_2_dash_4cyli_dot_dat)


//// Primitive 1-4disc.dat
#ifndef (_1_dash_4disc_dot_dat)
#declare _1_dash_4disc_dot_dat = disc { <0,0,0>, <0,1,0>, 1 clipped_by { plane { -x, 0 } plane { -z, 0 } } }
#end // ifndef (_1_dash_4disc_dot_dat)


//// Primitive 1-4cyli.dat
#ifndef (_1_dash_4cyli_dot_dat)
#declare _1_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open clipped_by { plane { <-1,0,-1>, -sqrt(1/2) } } }
#end // ifndef (_1_dash_4cyli_dot_dat)


//// Part 30088.dat
#ifndef (_30088_dot_dat)
#declare _30088_dot_dat = #if (L3Quality = 0) box { <-5.0001,-41.9219,-78.5479>, <5.0001,24,14.3041> } #else union {
// Minifig Speargun
// Name: 30088.dat
// Author: Matthew J. Chiles [mchiles]
// !LDRAW_ORG Part UPDATE 2009-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !CATEGORY Minifig Accessory
// !KEYWORDS diver, spear, gun, harpoon, speargun
// !HISTORY 2009-05-02 [PTadmin] Official Update 2009-01
// BFC INVERTNEXT
	object { _4_dash_4disc_dot_dat matrix <-4,0,0,0,-0.4511,-0.8925,0,-3.5699,1.8044,0,-25.487,-50.425> }
	object { _4_dash_4cyli_dot_dat matrix <-4,0,0,0,-19.8479,-39.2691,0,-3.5699,1.8044,0,-5.639,-11.156> }
// ribbed area
// BFC INVERTNEXT
	object { _4_dash_4ring4_dot_dat matrix <-1,0,0,0,-0.4511,-0.8925,0,-0.8925,0.4511,0,-5.639,-11.156> }
	object { _4_dash_4cyli_dot_dat matrix <-5,0,0,0,-1.8044,-3.5699,0,-4.4624,2.2554,0,-3.834,-7.586> }
	object { _4_dash_4ring4_dot_dat matrix <-1,0,0,0,-0.4511,-0.8925,0,-0.8925,0.4511,0,-3.834,-7.586> }
// BFC INVERTNEXT
	object { _4_dash_4ring4_dot_dat matrix <-1,0,0,0,-0.4511,-0.8925,0,-0.8925,0.4511,0,-3.158,-6.247> }
	object { _4_dash_4cyli_dot_dat matrix <-4,0,0,0,-0.6766,-1.3387,0,-3.5699,1.8044,0,-3.158,-6.247> }
	object { _4_dash_4ring4_dot_dat matrix <-1,0,0,0,-0.4511,-0.8925,0,-0.8925,0.4511,0,-1.353,-2.677> }
	object { _4_dash_4cyli_dot_dat matrix <-5,0,0,0,-1.8044,-3.5699,0,-4.4624,2.2554,0,-1.353,-2.677> }
// BFC INVERTNEXT
	object { _4_dash_4ring4_dot_dat matrix <-1,0,0,0,-0.4511,-0.8925,0,-0.8925,0.4511,0,-0.677,-1.339> }
	object { _4_dash_4cyli_dot_dat matrix <-4,0,0,0,-0.6766,-1.3387,0,-3.5699,1.8044,0,-0.677,-1.339> }
	object { _4_dash_4ring4_dot_dat matrix <-1,0,0,0,-0.4511,-0.8925,0,-0.8925,0.4511,0,1.128,2.231> }
	object { _4_dash_4cyli_dot_dat matrix <-5,0,0,0,-1.8044,-3.5699,0,-4.4624,2.2554,0,1.128,2.231> }
// BFC INVERTNEXT
	object { _4_dash_4ring4_dot_dat matrix <-1,0,0,0,-0.4511,-0.8925,0,-0.8925,0.4511,0,1.804,3.57> }
	object { _4_dash_4cyli_dot_dat matrix <-4,0,0,0,-0.6766,-1.3387,0,-3.5699,1.8044,0,1.804,3.57> }
	object { _4_dash_4ring4_dot_dat matrix <-1,0,0,0,-0.4511,-0.8925,0,-0.8925,0.4511,0,3.609,7.14> }
	object { _4_dash_4cyli_dot_dat matrix <-5,0,0,0,-1.8044,-3.5699,0,-4.4624,2.2554,0,3.609,7.14> }
// BFC INVERTNEXT
	object { _4_dash_4ring4_dot_dat matrix <-1,0,0,0,-0.4511,-0.8925,0,-0.8925,0.4511,0,4.285,8.479> }
	object { _4_dash_4cyli_dot_dat matrix <-4,0,0,0,-0.6766,-1.3387,0,-3.5699,1.8044,0,4.285,8.479> }
	object { _4_dash_4cyli_dot_dat matrix <-5,0,0,0,-1.3533,-2.6774,0,-4.4624,2.2554,0,5.639,11.156> }
	object { _4_dash_4disc_dot_dat matrix <-4,0,0,0,-0.4511,-0.8925,0,-3.5699,1.8044,0,6.09,12.048> }
	object { t04o2500_dot_dat matrix <-4,0,0,0,1.8044,3.5699,0,-3.5699,1.8044,0,5.639,11.156> }
	object { t04o2500_dot_dat matrix <4,0,0,0,1.8044,3.5699,0,-3.5699,1.8044,0,5.639,11.156> }
	object { t04o2500_dot_dat matrix <4,0,0,0,1.8044,3.5699,0,3.5699,-1.8044,0,5.639,11.156> }
	object { t04o2500_dot_dat matrix <-4,0,0,0,1.8044,3.5699,0,3.5699,-1.8044,0,5.639,11.156> }
// Spear shaft and point
	mesh {
		triangle { <-2,-36.2933,-67.3725>, <2,-27.2715,-49.5229>, <-2,-27.2715,-49.5229> }
		triangle { <-2,-36.2933,-67.3725>, <2,-36.2933,-67.3725>, <2,-27.2715,-49.5229> }
		triangle { <-2,-23.7016,-51.3272>, <2,-23.7016,-51.3272>, <2,-36.3321,-76.3167> }
		triangle { <2,-36.3321,-76.3167>, <-2,-36.3321,-76.3167>, <-2,-23.7016,-51.3272> }
		triangle { <-2,-27.2715,-49.5229>, <-2,-23.7016,-51.3272>, <-2,-36.3321,-76.3167> }
		triangle { <-2,-36.3321,-76.3167>, <-2,-37.1954,-69.1574>, <-2,-27.2715,-49.5229> }
		triangle { <2,-36.3321,-76.3167>, <2,-23.7016,-51.3272>, <2,-27.2715,-49.5229> }
		triangle { <2,-27.2715,-49.5229>, <2,-37.1954,-69.1574>, <2,-36.3321,-76.3167> }
		triangle { <-2,-36.3321,-76.3167>, <-2,-38.9804,-68.2552>, <-2,-37.1954,-69.1574> }
		triangle { <2,-37.1954,-69.1574>, <2,-38.9804,-68.2552>, <2,-36.3321,-76.3167> }
		triangle { <2,-38.9804,-68.2552>, <2,-40.7945,-74.0612>, <2,-36.3321,-76.3167> }
		triangle { <-2,-36.3321,-76.3167>, <-2,-40.7945,-74.0612>, <-2,-38.9804,-68.2552> }
		triangle { <-2,-40.7945,-74.0612>, <2,-40.7945,-74.0612>, <-2,-38.9804,-68.2552> }
		triangle { <-2,-38.9804,-68.2552>, <2,-40.7945,-74.0612>, <2,-38.9804,-68.2552> }
// spear point curve
// BFC INVERTNEXT
	}
	object { _2_dash_4disc_dot_dat matrix <0,-2.2312,1.1277,-1,0,0,0,-1.1277,-2.2312,-2,-38.563,-75.189> }
	object { _2_dash_4disc_dot_dat matrix <0,-2.2312,1.1277,-1,0,0,0,-1.1277,-2.2312,2,-38.563,-75.189> }
// BFC INVERTNEXT
	object { _2_dash_4cyli_dot_dat matrix <0,-2.2312,1.1277,-4,0,0,0,-1.1277,-2.2312,2,-38.563,-75.189> }
// spear barb curve
// BFC INVERTNEXT
	object { _1_dash_4disc_dot_dat matrix <0,-1.785,0.9022,-1,0,0,0,0.9022,1.785,-2,-37.195,-69.157> }
	object { _1_dash_4disc_dot_dat matrix <0,-1.785,0.9022,-1,0,0,0,0.9022,1.785,2,-37.195,-69.157> }
	object { _1_dash_4cyli_dot_dat matrix <0,-1.785,0.9022,-4,0,0,0,0.9022,1.785,2,-37.195,-69.157> }
// Trigger (3 ldu thick)  Trigger sides done as 2 big triangles to core of barrel
// purpose was to avoid many little triangles which will be non-planer to each other
// after barrel is rotated to 26.8136 in ldraw before handle is installed.
	mesh {
		triangle { <1.5,0,0>, <1.5,-4.0598,-8.0323>, <1.5,3.08,-11.641> }
		triangle { <1.5,3.08,-11.641>, <1.5,7.1398,-3.6087>, <1.5,0,0> }
		triangle { <-1.5,3.08,-11.641>, <-1.5,-4.0598,-8.0323>, <-1.5,0,0> }
		triangle { <-1.5,0,0>, <-1.5,7.1398,-3.6087>, <-1.5,3.08,-11.641> }
		triangle { <1.5,2.1875,-11.1899>, <1.5,-4.0598,-8.0323>, <1.5,-4.5109,-8.9248> }
		triangle { <1.5,-4.5109,-8.9248>, <1.5,1.7365,-12.0824>, <1.5,2.1875,-11.1899> }
		triangle { <-1.5,-4.5109,-8.9248>, <-1.5,-4.0598,-8.0323>, <-1.5,2.1875,-11.1899> }
		triangle { <-1.5,2.1875,-11.1899>, <-1.5,1.7365,-12.0824>, <-1.5,-4.5109,-8.9248> }
		triangle { <1.5,-4.5109,-8.9248>, <-1.5,-4.5109,-8.9248>, <1.5,1.7365,-12.0824> }
		triangle { <1.5,1.7365,-12.0824>, <-1.5,-4.5109,-8.9248>, <-1.5,1.7365,-12.0824> }
		triangle { <-1.5,7.1398,-3.6087>, <1.5,7.1398,-3.6087>, <1.5,3.08,-11.641> }
		triangle { <1.5,3.08,-11.641>, <-1.5,3.08,-11.641>, <-1.5,7.1398,-3.6087> }
// BFC INVERTNEXT
	}
	object { _1_dash_4disc_dot_dat matrix <0,-0.4511,-0.8925,1,0,0,0,0.8925,-0.4511,1.5,2.188,-11.19> }
	object { _1_dash_4disc_dot_dat matrix <0,-0.4511,-0.8925,1,0,0,0,0.8925,-0.4511,-1.5,2.188,-11.19> }
	object { _1_dash_4cyli_dot_dat matrix <0,-0.4511,-0.8925,3,0,0,0,0.8925,-0.4511,-1.5,2.188,-11.19> }
// lines between trigger and barrel (thanks philo for isecalc)
// lines computed after rotation of barrel in mlcad
// Handle - handle added after rotation of shaft assembly in mlcad
	object { _4_dash_4cyli_dot_dat matrix <4,0,0,0,24,0,0,0,4,0,0,0> }
// BFC INVERTNEXT
	object { _4_dash_4disc_dot_dat matrix <-4,0,0,0,1,0,0,0,4,0,24,0> }
// Edge lines between handle and rest of speargun (thanks again philo for isecalc)
}
#end
#end // ifndef (_30088_dot_dat)


//// Model weapon_031_speargun.ldr
#ifndef (weapon__031__speargun_dot_ldr)
#declare weapon__031__speargun_dot_ldr = object {
// Untitled
// Name: weapon_031_speargun.ldr
// Author: MLCad
// Unofficial Model
// ROTATION CENTER 0 0 0 1 "Custom"
// ROTATION CONFIG 0 0
	// 1 1  -31.244 -8.179 0  0 -0.5 -0.866025  0 0.866025 -0.5  1 0 0 30088.dat
	object {
		_30088_dot_dat
		matrix <1-L3SW/10.0002,0,0,0,1-L3SW/65.9219,0,0,0,1-L3SW/92.852,0,L3SW/-7.35658,L3SW/-2.89061>
		matrix <0,0,1,-0.5,0.866025,0,-0.866025,-0.5,0,-31.244,-8.179,0>
		material { L3Color1 }
	}
}
#end // ifndef (weapon__031__speargun_dot_ldr)


//// ModelData
#declare L3ModelBBoxMin = <-55.6317,-51.6365,-5.0001>;
#declare L3ModelBBoxMax = <57.7414,51.8796,5.0001>;
#declare L3ModelBBoxCenter = (L3ModelBBoxMin+L3ModelBBoxMax)/2; // <1.05484,0.121542,0>
#declare L3ModelBBoxSize = L3ModelBBoxMax-L3ModelBBoxMin; // <113.373,103.516,10.0002>
#declare L3FloorY = L3ModelBBoxMax.y;

//// ModelObject weapon_031_speargun.ldr
object { weapon__031__speargun_dot_ldr }



//// Statistics
//               PARTS             P         Total
// DAT files:        2            11            14
// POV Equivs:       -             8 (73%)
// Model has 2 parts (0 studs)

//// IncludeFile AtEnd
#include "weapons_camera.inc"

//// End
