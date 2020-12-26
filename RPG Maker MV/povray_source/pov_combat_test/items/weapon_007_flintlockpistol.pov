// Generated by L3P v1.4 BETA 20131202 (Win32)  (C) 1998-2013 Lars C. Hassing SP.lars@AM.hassings.dk
// L3P website:  http://www.hassings.dk/l3/l3p.html
// LDraw.org:    http://www.ldraw.org
// Date:         Fri Aug 22 22:42:08 2014
// Input file:   D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_007_flintlockpistol.ldr
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
// Commandline:  "E:\Programs Windows\l3p14beta\l3p.exe" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_007_flintlockpistol.ldr" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_007_flintlockpistol.pov" -o -ic -il -ibitems.inc -ieweapons_camera.inc

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


//// Color 6 Brown (from ldconfig.ldr)
#ifndef (L3Texture6)
#declare L3Texture6 = L3TextureOpaqueRGB(88,57,39)
#end
#ifndef (L3Texture6_slope)
#declare L3Texture6_slope = L3TextureSlope(L3Texture6)
#end
#ifndef (L3Color6)
#declare L3Color6 = L3Material(L3Texture6)
#end
#ifndef (L3Color6_slope)
#declare L3Color6_slope = L3Material(L3Texture6_slope)
#end


//// Primitive 4-4disc.dat
#ifndef (_4_dash_4disc_dot_dat)
#declare _4_dash_4disc_dot_dat = disc { <0,0,0>, <0,1,0>, 1 }
#end // ifndef (_4_dash_4disc_dot_dat)


//// Primitive 1-4con1.dat
#ifndef (_1_dash_4con1_dot_dat)
#declare _1_dash_4con1_dot_dat = cone {
	<0,0,0>, 2, <0,1,0>, 1 open
	clipped_by { plane { -x, 0 } plane { -z, 0 } }
}
#end // ifndef (_1_dash_4con1_dot_dat)


//// Primitive 4-4cyli.dat
#ifndef (_4_dash_4cyli_dot_dat)
#declare _4_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open }
#end // ifndef (_4_dash_4cyli_dot_dat)


//// Primitive ring2.dat
#ifndef (ring2_dot_dat)
#declare ring2_dot_dat = disc { <0,0,0>, <0,1,0>, 3, 2 }
#end // ifndef (ring2_dot_dat)


//// Primitive 1-4con2.dat
#ifndef (_1_dash_4con2_dot_dat)
#declare _1_dash_4con2_dot_dat = cone {
	<0,0,0>, 3, <0,1,0>, 2 open
	clipped_by { plane { -x, 0 } plane { -z, 0 } }
}
#end // ifndef (_1_dash_4con2_dot_dat)


//// Primitive 2-4cyli.dat
#ifndef (_2_dash_4cyli_dot_dat)
#declare _2_dash_4cyli_dot_dat = cylinder { <0,0,0>, <0,1,0>, 1 open clipped_by { plane { -z, 0 } } }
#end // ifndef (_2_dash_4cyli_dot_dat)


//// Primitive 1-4ndis.dat
#ifndef (_1_dash_4ndis_dot_dat)
#declare _1_dash_4ndis_dot_dat = disc { <0,0,0>, <0,1,0>, 2, 1 clipped_by { box { <0,-1,0>, <1,1,1> } } }
#end // ifndef (_1_dash_4ndis_dot_dat)


//// Primitive 2-4disc.dat
#ifndef (_2_dash_4disc_dot_dat)
#declare _2_dash_4disc_dot_dat = disc { <0,0,0>, <0,1,0>, 1 clipped_by { box { <-2,-1,0>, <2,1,2> } } }
#end // ifndef (_2_dash_4disc_dot_dat)


//// Primitive 4-8sphe.dat
#ifndef (_4_dash_8sphe_dot_dat)
#declare _4_dash_8sphe_dot_dat = sphere { <0,0,0>, 1 clipped_by { box { <-1,0,-1>, <2,2,2> } } }
#end // ifndef (_4_dash_8sphe_dot_dat)


//// Part 2562.dat
#ifndef (_2562_dot_dat)
#declare _2562_dot_dat = #if (L3Quality = 0) box { <-6,-32.391,-33.712>, <6,10,5> } #else union {
// Minifig Gun Flintlock Pistol
// Name: 2562.dat
// Author: Franklin W. Cain [fwcain]
// !LDRAW_ORG Part UPDATE 2000-02
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// !CATEGORY Minifig Accessory
// !KEYWORDS minifig, weapon, firearm, musket, pirates
// !KEYWORDS blackpowder, wheellock
// !HISTORY 1998-05-21 [PTadmin] Official Update 1998-05
// !HISTORY 1998-07-15 [PTadmin] Official Update 1998-07
// !HISTORY 2000-09-30 [PTadmin] Official Update 2000-02
// !HISTORY 2007-05-14 [PTadmin] Header formatted for Contributor Agreement
// !HISTORY 2008-07-01 [PTadmin] Official Update 2008-01
// FWIW: I used an angle of 75 degrees for the bend between the barrel and the grip.
// muzzle
	object { _4_dash_4disc_dot_dat matrix <2,0,0,0,0.5,0.866,0,1.732,-1,0,-23.195,-23.784> }
// 
	object { _1_dash_4con1_dot_dat matrix <-2,0,0,0,2,3.464,0,-1.732,1,0,-27.195,-30.712> }
	object { _1_dash_4con1_dot_dat matrix <2,0,0,0,2,3.464,0,-1.732,1,0,-27.195,-30.712> }
	object { _1_dash_4con1_dot_dat matrix <-2,0,0,0,2,3.464,0,1.732,-1,0,-27.195,-30.712> }
	object { _1_dash_4con1_dot_dat matrix <2,0,0,0,2,3.464,0,1.732,-1,0,-27.195,-30.712> }
// 
	object { _4_dash_4cyli_dot_dat matrix <2,0,0,0,2,3.464,0,1.732,-1,0,-25.195,-27.248> }
	object { ring2_dot_dat matrix <2,0,0,0,0.5,0.866,0,1.732,-1,0,-27.195,-30.712> }
// 
	object { _1_dash_4con2_dot_dat matrix <-2,0,0,0,2,3.464,0,-1.732,1,0,-27.195,-30.712> }
	object { _1_dash_4con2_dot_dat matrix <2,0,0,0,2,3.464,0,-1.732,1,0,-27.195,-30.712> }
	object { _1_dash_4con2_dot_dat matrix <-2,0,0,0,2,3.464,0,1.732,-1,0,-27.195,-30.712> }
	object { _1_dash_4con2_dot_dat matrix <2,0,0,0,2,3.464,0,1.732,-1,0,-27.195,-30.712> }
// 
// 
// barrel
// 
	object { _4_dash_4cyli_dot_dat matrix <4,0,0,0,-9.999,-17.32,0,3.464,-2,0,-15.196,-9.928> }
// 
	object { _2_dash_4cyli_dot_dat matrix <4,0,0,0,4,6.928,0,3.464,-2,0,-15.196,-9.928> }
// 
// wheel-lock and hammer
// 
	object { _4_dash_4cyli_dot_dat matrix <0,3.464,-2,-4,0,0,0,2,3.464,0,-16.66,-4.464> }
	object { _4_dash_4cyli_dot_dat matrix <0,3.464,-2,4,0,0,0,2,3.464,0,-16.66,-4.464> }
// 
	object { _4_dash_4disc_dot_dat matrix <0,3.464,-2,1,0,0,0,2,3.464,-4,-16.66,-4.464> }
	object { _4_dash_4disc_dot_dat matrix <0,3.464,-2,1,0,0,0,2,3.464,4,-16.66,-4.464> }
// 
	object { _1_dash_4ndis_dot_dat matrix <0,-3.464,2,1,0,0,0,2,3.464,0,-16.66,-4.464> }
	object { _1_dash_4ndis_dot_dat matrix <0,-3.464,2,1,0,0,0,2,3.464,-4,-16.66,-4.464> }
// 
	mesh {
		triangle { <0,-20.124,-2.465>, <0,-18.124,0.999>, <0,-21.588,2.999> }
		triangle { <-4,-20.124,-2.465>, <-4,-18.124,0.999>, <-4,-21.588,2.999> }
// 
		triangle { <0,-20.124,-2.465>, <-4,-20.124,-2.465>, <-4,-21.588,2.999> }
		triangle { <-4,-21.588,2.999>, <0,-21.588,2.999>, <0,-20.124,-2.465> }
// 
		triangle { <0,-14.66,-1>, <-4,-14.66,-1>, <-4,-21.588,2.999> }
		triangle { <-4,-21.588,2.999>, <0,-21.588,2.999>, <0,-14.66,-1> }
// 
// 
// 
// 
// 
// 
// intersection of wheel-lock and barrel
// 
		triangle { <0,-18.66,-7.928>, <-1.531,-18.397,-8.08>, <-1.531,-18.321,-7.95> }
		triangle { <0,-18.66,-7.928>, <1.531,-18.397,-8.08>, <1.531,-18.321,-7.95> }
		triangle { <0,-14.66,-1>, <-1.531,-14.397,-1.152>, <-1.531,-14.472,-1.282> }
		triangle { <0,-14.66,-1>, <1.531,-14.397,-1.152>, <1.531,-14.472,-1.282> }
// 
		triangle { <-1.531,-18.397,-8.08>, <-2.828,-17.645,-8.514>, <-2.828,-17.47,-8.211> }
		triangle { <-2.828,-17.47,-8.211>, <-1.531,-18.321,-7.95>, <-1.531,-18.397,-8.08> }
		triangle { <1.531,-18.397,-8.08>, <2.828,-17.645,-8.514>, <2.828,-17.47,-8.211> }
		triangle { <2.828,-17.47,-8.211>, <1.531,-18.321,-7.95>, <1.531,-18.397,-8.08> }
		triangle { <-1.531,-14.397,-1.152>, <-2.828,-13.645,-1.586>, <-2.828,-13.82,-1.889> }
		triangle { <-2.828,-13.82,-1.889>, <-1.531,-14.472,-1.282>, <-1.531,-14.397,-1.152> }
		triangle { <1.531,-14.397,-1.152>, <2.828,-13.645,-1.586>, <2.828,-13.82,-1.889> }
		triangle { <2.828,-13.82,-1.889>, <1.531,-14.472,-1.282>, <1.531,-14.397,-1.152> }
// 
		triangle { <-2.828,-17.645,-8.514>, <-3.696,-16.522,-9.163>, <-3.696,-16.022,-8.297> }
		triangle { <-3.696,-16.022,-8.297>, <-2.828,-17.47,-8.211>, <-2.828,-17.645,-8.514> }
		triangle { <2.828,-17.645,-8.514>, <3.696,-16.522,-9.163>, <3.696,-16.022,-8.297> }
		triangle { <3.696,-16.022,-8.297>, <2.828,-17.47,-8.211>, <2.828,-17.645,-8.514> }
		triangle { <-2.828,-13.645,-1.586>, <-3.696,-12.522,-2.235>, <-3.696,-13.022,-3.101> }
		triangle { <-3.696,-13.022,-3.101>, <-2.828,-13.82,-1.889>, <-2.828,-13.645,-1.586> }
		triangle { <2.828,-13.645,-1.586>, <3.696,-12.522,-2.235>, <3.696,-13.022,-3.101> }
		triangle { <3.696,-13.022,-3.101>, <2.828,-13.82,-1.889>, <2.828,-13.645,-1.586> }
// 
		triangle { <-3.696,-16.522,-9.163>, <-4,-15.196,-9.928>, <-4,-13.196,-6.464> }
		triangle { <-4,-13.196,-6.464>, <-3.696,-16.022,-8.297>, <-3.696,-16.522,-9.163> }
		triangle { <3.696,-16.522,-9.163>, <4,-15.196,-9.928>, <4,-13.196,-6.464> }
		triangle { <4,-13.196,-6.464>, <3.696,-16.022,-8.297>, <3.696,-16.522,-9.163> }
		triangle { <-3.696,-12.522,-2.235>, <-4,-11.196,-3>, <-4,-13.196,-6.464> }
		triangle { <-4,-13.196,-6.464>, <-3.696,-13.022,-3.101>, <-3.696,-12.522,-2.235> }
		triangle { <3.696,-12.522,-2.235>, <4,-11.196,-3>, <4,-13.196,-6.464> }
		triangle { <4,-13.196,-6.464>, <3.696,-13.022,-3.101>, <3.696,-12.522,-2.235> }
// 
// 
// 
// 
// 
// 
// trigger
// 
	}
	object { _2_dash_4cyli_dot_dat matrix <0,2,3.464,-1,0,0,0,3.464,-2,0,-11.732,-11.928> }
	object { _2_dash_4cyli_dot_dat matrix <0,2,3.464,1,0,0,0,3.464,-2,0,-11.732,-11.928> }
// 
	object { _2_dash_4disc_dot_dat matrix <0,2,3.464,1,0,0,0,3.464,-2,-1,-11.732,-11.928> }
	object { _2_dash_4disc_dot_dat matrix <0,2,3.464,1,0,0,0,3.464,-2,1,-11.732,-11.928> }
// 
	mesh {
		triangle { <-1,-13.731,-15.392>, <1,-13.731,-15.392>, <1,-9.732,-8.464> }
		triangle { <1,-9.732,-8.464>, <-1,-9.732,-8.464>, <-1,-13.731,-15.392> }
// 
		triangle { <-1,-13.731,-15.392>, <1,-13.731,-15.392>, <1,-14.597,-14.892> }
		triangle { <1,-14.597,-14.892>, <-1,-14.597,-14.892>, <-1,-13.731,-15.392> }
		triangle { <-1,-9.732,-8.464>, <1,-9.732,-8.464>, <1,-10.598,-7.964> }
		triangle { <1,-10.598,-7.964>, <-1,-10.598,-7.964>, <-1,-9.732,-8.464> }
// 
		triangle { <-1,-13.731,-15.392>, <-1,-9.732,-8.464>, <-1,-10.598,-7.964> }
		triangle { <-1,-10.598,-7.964>, <-1,-14.597,-14.892>, <-1,-13.731,-15.392> }
		triangle { <1,-13.731,-15.392>, <1,-9.732,-8.464>, <1,-10.598,-7.964> }
		triangle { <1,-10.598,-7.964>, <1,-14.597,-14.892>, <1,-13.731,-15.392> }
// 
// 
// 
// 
// bend - first half
// 
		triangle { <0,-7.732,-5>, <-1.531,-7.884,-4.737>, <-1.531,-7.947,-4.785> }
		triangle { <0,-7.732,-5>, <1.531,-7.884,-4.737>, <1.531,-7.947,-4.785> }
		triangle { <-1.531,-7.884,-4.737>, <-1.531,-7.947,-4.785>, <-2.828,-8.56,-4.171> }
		triangle { <-2.828,-8.56,-4.171>, <-2.828,-8.318,-3.985>, <-1.531,-7.884,-4.737> }
		triangle { <1.531,-7.884,-4.737>, <1.531,-7.947,-4.785>, <2.828,-8.56,-4.171> }
		triangle { <2.828,-8.56,-4.171>, <2.828,-8.318,-3.985>, <1.531,-7.884,-4.737> }
		triangle { <-2.828,-8.318,-3.985>, <-2.828,-8.56,-4.171>, <-3.696,-9.479,-3.255> }
		triangle { <-3.696,-9.479,-3.255>, <-3.696,-8.967,-2.862>, <-2.828,-8.318,-3.985> }
		triangle { <2.828,-8.318,-3.985>, <2.828,-8.56,-4.171>, <3.696,-9.479,-3.255> }
		triangle { <3.696,-9.479,-3.255>, <3.696,-8.967,-2.862>, <2.828,-8.318,-3.985> }
		triangle { <-3.696,-8.967,-2.862>, <-3.696,-9.479,-3.255>, <-4,-10.561,-2.172> }
		triangle { <-4,-10.561,-2.172>, <-4,-9.732,-1.536>, <-3.696,-8.967,-2.862> }
		triangle { <3.696,-8.967,-2.862>, <3.696,-9.479,-3.255>, <4,-10.561,-2.172> }
		triangle { <4,-10.561,-2.172>, <4,-9.732,-1.536>, <3.696,-8.967,-2.862> }
		triangle { <-3.696,-10.497,-0.21>, <-3.696,-11.644,-1.089>, <-4,-10.561,-2.172> }
		triangle { <-4,-10.561,-2.172>, <-4,-9.732,-1.536>, <-3.696,-10.497,-0.21> }
		triangle { <3.696,-10.497,-0.21>, <3.696,-11.644,-1.089>, <4,-10.561,-2.172> }
		triangle { <4,-10.561,-2.172>, <4,-9.732,-1.536>, <3.696,-10.497,-0.21> }
		triangle { <-2.828,-11.146,0.913>, <-2.828,-12.562,-0.172>, <-3.696,-11.644,-1.089> }
		triangle { <-3.696,-11.644,-1.089>, <-3.696,-10.497,-0.21>, <-2.828,-11.146,0.913> }
		triangle { <2.828,-11.146,0.913>, <2.828,-12.562,-0.172>, <3.696,-11.644,-1.089> }
		triangle { <3.696,-11.644,-1.089>, <3.696,-10.497,-0.21>, <2.828,-11.146,0.913> }
		triangle { <-1.531,-11.58,1.665>, <-1.531,-13.175,0.441>, <-2.828,-12.562,-0.172> }
		triangle { <-2.828,-12.562,-0.172>, <-2.828,-11.146,0.913>, <-1.531,-11.58,1.665> }
		triangle { <1.531,-11.58,1.665>, <1.531,-13.175,0.441>, <2.828,-12.562,-0.172> }
		triangle { <2.828,-12.562,-0.172>, <2.828,-11.146,0.913>, <1.531,-11.58,1.665> }
		triangle { <0,-11.732,1.928>, <0,-13.39,0.656>, <-1.531,-13.175,0.441> }
		triangle { <-1.531,-13.175,0.441>, <-1.531,-11.58,1.665>, <0,-11.732,1.928> }
		triangle { <0,-11.732,1.928>, <0,-13.39,0.656>, <1.531,-13.175,0.441> }
		triangle { <1.531,-13.175,0.441>, <1.531,-11.58,1.665>, <0,-11.732,1.928> }
// 
		triangle { <0,-7.732,-5>, <-1.531,-7.947,-4.785>, <-1.531,-7.996,-4.847> }
		triangle { <0,-7.732,-5>, <1.531,-7.947,-4.785>, <1.531,-7.996,-4.847> }
		triangle { <-1.531,-7.947,-4.785>, <-1.531,-7.996,-4.847>, <-2.828,-8.747,-4.414> }
		triangle { <-2.828,-8.747,-4.414>, <-2.828,-8.56,-4.171>, <-1.531,-7.947,-4.785> }
		triangle { <1.531,-7.947,-4.785>, <1.531,-7.996,-4.847>, <2.828,-8.747,-4.414> }
		triangle { <2.828,-8.747,-4.414>, <2.828,-8.56,-4.171>, <1.531,-7.947,-4.785> }
		triangle { <-2.828,-8.56,-4.171>, <-2.828,-8.747,-4.414>, <-3.696,-9.871,-3.766> }
		triangle { <-3.696,-9.871,-3.766>, <-3.696,-9.479,-3.255>, <-2.828,-8.56,-4.171> }
		triangle { <2.828,-8.56,-4.171>, <2.828,-8.747,-4.414>, <3.696,-9.871,-3.766> }
		triangle { <3.696,-9.871,-3.766>, <3.696,-9.479,-3.255>, <2.828,-8.56,-4.171> }
		triangle { <-3.696,-9.479,-3.255>, <-3.696,-9.871,-3.766>, <-4,-11.196,-3> }
		triangle { <-4,-11.196,-3>, <-4,-10.561,-2.172>, <-3.696,-9.479,-3.255> }
		triangle { <3.696,-9.479,-3.255>, <3.696,-9.871,-3.766>, <4,-11.196,-3> }
		triangle { <4,-11.196,-3>, <4,-10.561,-2.172>, <3.696,-9.479,-3.255> }
		triangle { <-3.696,-11.644,-1.089>, <-3.696,-12.521,-2.234>, <-4,-11.196,-3> }
		triangle { <-4,-11.196,-3>, <-4,-10.561,-2.172>, <-3.696,-11.644,-1.089> }
		triangle { <3.696,-11.644,-1.089>, <3.696,-12.521,-2.234>, <4,-11.196,-3> }
		triangle { <4,-11.196,-3>, <4,-10.561,-2.172>, <3.696,-11.644,-1.089> }
		triangle { <-2.828,-12.562,-0.172>, <-2.828,-13.645,-1.586>, <-3.696,-12.521,-2.234> }
		triangle { <-3.696,-12.521,-2.234>, <-3.696,-11.644,-1.089>, <-2.828,-12.562,-0.172> }
		triangle { <2.828,-12.562,-0.172>, <2.828,-13.645,-1.586>, <3.696,-12.521,-2.234> }
		triangle { <3.696,-12.521,-2.234>, <3.696,-11.644,-1.089>, <2.828,-12.562,-0.172> }
		triangle { <-1.531,-13.175,0.441>, <-1.531,-14.396,-1.153>, <-2.828,-13.645,-1.586> }
		triangle { <-2.828,-13.645,-1.586>, <-2.828,-12.562,-0.172>, <-1.531,-13.175,0.441> }
		triangle { <1.531,-13.175,0.441>, <1.531,-14.396,-1.153>, <2.828,-13.645,-1.586> }
		triangle { <2.828,-13.645,-1.586>, <2.828,-12.562,-0.172>, <1.531,-13.175,0.441> }
		triangle { <0,-13.39,0.656>, <0,-14.66,-1>, <-1.531,-14.396,-1.153> }
		triangle { <-1.531,-14.396,-1.153>, <-1.531,-13.175,0.441>, <0,-13.39,0.656> }
		triangle { <0,-13.39,0.656>, <0,-14.66,-1>, <1.531,-14.396,-1.153> }
		triangle { <1.531,-14.396,-1.153>, <1.531,-13.175,0.441>, <0,-13.39,0.656> }
// 
// 
// 
// 
// short extension in the middle of the bend
// 
	}
	object { _4_dash_4cyli_dot_dat matrix <4,0,0,0,-1.732,-1,0,-2,3.464,0,-8,-0.536> }
// 
// bend
// 
	mesh {
		triangle { <0,-6,-4>, <-1.531,-6,-3.696>, <-1.531,-6.079,-3.706> }
		triangle { <0,-6,-4>, <1.531,-6,-3.696>, <1.531,-6.079,-3.706> }
		triangle { <-1.531,-6,-3.696>, <-1.531,-6.079,-3.706>, <-2.828,-6.303,-2.868> }
		triangle { <-2.828,-6.303,-2.868>, <-2.828,-6,-2.828>, <-1.531,-6,-3.696> }
		triangle { <1.531,-6,-3.696>, <1.531,-6.079,-3.706>, <2.828,-6.303,-2.868> }
		triangle { <2.828,-6.303,-2.868>, <2.828,-6,-2.828>, <1.531,-6,-3.696> }
		triangle { <-2.828,-6,-2.828>, <-2.828,-6.303,-2.868>, <-3.696,-6.64,-1.615> }
		triangle { <-3.696,-6.64,-1.615>, <-3.696,-6,-1.531>, <-2.828,-6,-2.828> }
		triangle { <2.828,-6,-2.828>, <2.828,-6.303,-2.868>, <3.696,-6.64,-1.615> }
		triangle { <3.696,-6.64,-1.615>, <3.696,-6,-1.531>, <2.828,-6,-2.828> }
		triangle { <-3.696,-6,-1.531>, <-3.696,-6.64,-1.615>, <-4,-7.036,-0.136> }
		triangle { <-4,-7.036,-0.136>, <-4,-6,0>, <-3.696,-6,-1.531> }
		triangle { <3.696,-6,-1.531>, <3.696,-6.64,-1.615>, <4,-7.036,-0.136> }
		triangle { <4,-7.036,-0.136>, <4,-6,0>, <3.696,-6,-1.531> }
		triangle { <-3.696,-6,1.531>, <-3.696,-7.432,1.343>, <-4,-7.036,-0.136> }
		triangle { <-4,-7.036,-0.136>, <-4,-6,0>, <-3.696,-6,1.531> }
		triangle { <3.696,-6,1.531>, <3.696,-7.432,1.343>, <4,-7.036,-0.136> }
		triangle { <4,-7.036,-0.136>, <4,-6,0>, <3.696,-6,1.531> }
		triangle { <-2.828,-6,2.828>, <-2.828,-7.769,2.596>, <-3.696,-7.432,1.343> }
		triangle { <-3.696,-7.432,1.343>, <-3.696,-6,1.531>, <-2.828,-6,2.828> }
		triangle { <2.828,-6,2.828>, <2.828,-7.769,2.596>, <3.696,-7.432,1.343> }
		triangle { <3.696,-7.432,1.343>, <3.696,-6,1.531>, <2.828,-6,2.828> }
		triangle { <-1.531,-6,3.696>, <-1.531,-7.993,3.434>, <-2.828,-7.769,2.596> }
		triangle { <-2.828,-7.769,2.596>, <-2.828,-6,2.828>, <-1.531,-6,3.696> }
		triangle { <1.531,-6,3.696>, <1.531,-7.993,3.434>, <2.828,-7.769,2.596> }
		triangle { <2.828,-7.769,2.596>, <2.828,-6,2.828>, <1.531,-6,3.696> }
		triangle { <0,-6,4>, <0,-8.072,3.728>, <-1.531,-7.993,3.434> }
		triangle { <-1.531,-7.993,3.434>, <-1.531,-6,3.696>, <0,-6,4> }
		triangle { <0,-6,4>, <0,-8.072,3.728>, <1.531,-7.993,3.434> }
		triangle { <1.531,-7.993,3.434>, <1.531,-6,3.696>, <0,-6,4> }
// 
		triangle { <0,-6,-4>, <-1.531,-6.079,-3.706>, <-1.531,-6.152,-3.736> }
		triangle { <0,-6,-4>, <1.531,-6.079,-3.706>, <1.531,-6.152,-3.736> }
		triangle { <-1.531,-6.079,-3.706>, <-1.531,-6.152,-3.736>, <-2.828,-6.586,-2.985> }
		triangle { <-2.828,-6.586,-2.985>, <-2.828,-6.303,-2.868>, <-1.531,-6.079,-3.706> }
		triangle { <1.531,-6.079,-3.706>, <1.531,-6.152,-3.736>, <2.828,-6.586,-2.985> }
		triangle { <2.828,-6.586,-2.985>, <2.828,-6.303,-2.868>, <1.531,-6.079,-3.706> }
		triangle { <-2.828,-6.303,-2.868>, <-2.828,-6.586,-2.985>, <-3.696,-7.235,-1.862> }
		triangle { <-3.696,-7.235,-1.862>, <-3.696,-6.64,-1.615>, <-2.828,-6.303,-2.868> }
		triangle { <2.828,-6.303,-2.868>, <2.828,-6.586,-2.985>, <3.696,-7.235,-1.862> }
		triangle { <3.696,-7.235,-1.862>, <3.696,-6.64,-1.615>, <2.828,-6.303,-2.868> }
		triangle { <-3.696,-6.64,-1.615>, <-3.696,-7.235,-1.862>, <-4,-8,-0.536> }
		triangle { <-4,-8,-0.536>, <-4,-7.036,-0.136>, <-3.696,-6.64,-1.615> }
		triangle { <3.696,-6.64,-1.615>, <3.696,-7.235,-1.862>, <4,-8,-0.536> }
		triangle { <4,-8,-0.536>, <4,-7.036,-0.136>, <3.696,-6.64,-1.615> }
		triangle { <-3.696,-7.432,1.343>, <-3.696,-8.765,0.79>, <-4,-8,-0.536> }
		triangle { <-4,-8,-0.536>, <-4,-7.036,-0.136>, <-3.696,-7.432,1.343> }
		triangle { <3.696,-7.432,1.343>, <3.696,-8.765,0.79>, <4,-8,-0.536> }
		triangle { <4,-8,-0.536>, <4,-7.036,-0.136>, <3.696,-7.432,1.343> }
		triangle { <-2.828,-7.769,2.596>, <-2.828,-9.414,1.913>, <-3.696,-8.765,0.79> }
		triangle { <-3.696,-8.765,0.79>, <-3.696,-7.432,1.343>, <-2.828,-7.769,2.596> }
		triangle { <2.828,-7.769,2.596>, <2.828,-9.414,1.913>, <3.696,-8.765,0.79> }
		triangle { <3.696,-8.765,0.79>, <3.696,-7.432,1.343>, <2.828,-7.769,2.596> }
		triangle { <-1.531,-7.993,3.434>, <-1.531,-9.848,2.664>, <-2.828,-9.414,1.913> }
		triangle { <-2.828,-9.414,1.913>, <-2.828,-7.769,2.596>, <-1.531,-7.993,3.434> }
		triangle { <1.531,-7.993,3.434>, <1.531,-9.848,2.664>, <2.828,-9.414,1.913> }
		triangle { <2.828,-9.414,1.913>, <2.828,-7.769,2.596>, <1.531,-7.993,3.434> }
		triangle { <0,-8.072,3.728>, <0,-10,2.928>, <-1.531,-9.848,2.664> }
		triangle { <-1.531,-9.848,2.664>, <-1.531,-7.993,3.434>, <0,-8.072,3.728> }
		triangle { <0,-8.072,3.728>, <0,-10,2.928>, <1.531,-9.848,2.664> }
		triangle { <1.531,-9.848,2.664>, <1.531,-7.993,3.434>, <0,-8.072,3.728> }
// 
// 
// 
// 
// grip
// 
	}
	object { _4_dash_4cyli_dot_dat matrix <4,0,0,0,-6,0,0,0,4,0,0,0> }
	object { _4_dash_4cyli_dot_dat matrix <4,0,0,0,6,0,0,0,4,0,0,0> }
// 
// buttstock
// 
	object { _4_dash_4disc_dot_dat matrix <5,0,0,0,1,0,0,0,5,0,6,0> }
	object { _4_dash_8sphe_dot_dat matrix <5,0,0,0,4,0,0,0,5,0,6,0> }
}
#end
#end // ifndef (_2562_dot_dat)


//// Model weapon_007_flintlockpistol.ldr
#ifndef (weapon__007__flintlockpistol_dot_ldr)
#declare weapon__007__flintlockpistol_dot_ldr = object {
// Untitled
// Name: weapon_007_flintlockpistol.ldr
// Author: MLCad
// Unofficial Model
// ROTATION CENTER 0 0 0 1 "Custom"
// ROTATION CONFIG 0 0
	// 1 6  -18 3 0  0 -0.5 -0.866025  0 0.866025 -0.5  1 0 0 2562.dat
	object {
		_2562_dot_dat
		matrix <1-L3SW/12,0,0,0,1-L3SW/42.391,0,0,0,1-L3SW/38.712,0,L3SW/-3.78643,L3SW/-2.69657>
		matrix <0,0,1,-0.5,0.866025,0,-0.866025,-0.5,0,-18,3,0>
		material { L3Color6 }
	}
}
#end // ifndef (weapon__007__flintlockpistol_dot_ldr)


//// ModelData
#declare L3ModelBBoxMin = <-27.3301,-27.5514,-6>;
#declare L3ModelBBoxMax = <27.3909,28.5162,6>;
#declare L3ModelBBoxCenter = (L3ModelBBoxMin+L3ModelBBoxMax)/2; // <0.0304041,0.482417,0>
#declare L3ModelBBoxSize = L3ModelBBoxMax-L3ModelBBoxMin; // <54.7211,56.0677,12>
#declare L3FloorY = L3ModelBBoxMax.y;

//// ModelObject weapon_007_flintlockpistol.ldr
object { weapon__007__flintlockpistol_dot_ldr }



//// Statistics
//               PARTS             P         Total
// DAT files:        2            13            16
// POV Equivs:       -             9 (69%)
// Model has 2 parts (0 studs)

//// IncludeFile AtEnd
#include "weapons_camera.inc"

//// End
