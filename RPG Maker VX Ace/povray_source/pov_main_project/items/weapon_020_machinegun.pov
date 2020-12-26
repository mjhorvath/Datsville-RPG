// Generated by L3P v1.4 BETA 20131202 (Win32)  (C) 1998-2013 Lars C. Hassing SP.lars@AM.hassings.dk
// L3P website:  http://www.hassings.dk/l3/l3p.html
// LDraw.org:    http://www.ldraw.org
// Date:         Fri Aug 22 22:42:09 2014
// Input file:   D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_020_machinegun.ldr
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
// Commandline:  "E:\Programs Windows\l3p14beta\l3p.exe" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_020_machinegun.ldr" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\weapon_020_machinegun.pov" -o -ic -il -ibitems.inc -ieweapons_camera.inc

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


//// Primitive 5-16cyli.dat
#ifndef (_5_dash_16cyli_dot_dat)
#declare _5_dash_16cyli_dot_dat = object {
// Cylinder 0.3125
// Name: 5-16cyli.dat
// Author: Philippe Hurbain [Philo]
// !LDRAW_ORG Primitive UPDATE 2009-03
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2009-12-29 [PTadmin] Official Update 2009-03
	mesh {
		triangle { <0.9239,0,0.3827>, <1,0,0>, <1,1,0> }
		triangle { <1,1,0>, <0.9239,1,0.3827>, <0.9239,0,0.3827> }
		triangle { <0.7071,0,0.7071>, <0.9239,0,0.3827>, <0.9239,1,0.3827> }
		triangle { <0.9239,1,0.3827>, <0.7071,1,0.7071>, <0.7071,0,0.7071> }
		triangle { <0.3827,0,0.9239>, <0.7071,0,0.7071>, <0.7071,1,0.7071> }
		triangle { <0.7071,1,0.7071>, <0.3827,1,0.9239>, <0.3827,0,0.9239> }
		triangle { <0,0,1>, <0.3827,0,0.9239>, <0.3827,1,0.9239> }
		triangle { <0.3827,1,0.9239>, <0,1,1>, <0,0,1> }
		triangle { <-0.3827,0,0.9239>, <0,0,1>, <0,1,1> }
		triangle { <0,1,1>, <-0.3827,1,0.9239>, <-0.3827,0,0.9239> }
// conditional lines
// end of file
	}
}
#end // ifndef (_5_dash_16cyli_dot_dat)


//// Primitive 5-16chrd.dat
#ifndef (_5_dash_16chrd_dot_dat)
#declare _5_dash_16chrd_dot_dat = object {
// Chord 0.3125
// Name: 5-16chrd.dat
// Author: Niels Karsdorp [nielsk]
// !LDRAW_ORG Primitive UPDATE 2010-01
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2010-04-05 [PTadmin] Official Update 2010-01
	mesh {
		triangle { <1,0,0>, <0.9239,0,0.3827>, <0,0,1> }
		triangle { <0,0,1>, <-0.3827,0,0.9239>, <1,0,0> }
		triangle { <0.9239,0,0.3827>, <0.7071,0,0.7071>, <0.3827,0,0.9239> }
		triangle { <0.3827,0,0.9239>, <0,0,1>, <0.9239,0,0.3827> }
	}
}
#end // ifndef (_5_dash_16chrd_dot_dat)


//// Part 55707b.dat
#ifndef (_55707b_dot_dat)
#declare _55707b_dot_dat = #if (L3Quality = 0) box { <-9.5,-30.109,-53.221>, <9.5,21.563,9.721> } #else union {
// Minifig Machine Gun with Drum Magazine
// Name: 55707b.dat
// Author: Michael Heidemann [mikeheide]
// !LDRAW_ORG Part UPDATE 2011-02
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// !HELP Angle of handle/housing is 26.8136
// BFC CERTIFY CW
// !CATEGORY Minifig Accessory
// !HISTORY 2011-12-29 [PTadmin] Official Update 2011-02
	object { _4_dash_4disc_dot_dat matrix <0,0,4,0,-1,0,4,0,0,0,21.563,-0.167> }
	object { _4_dash_4cyli_dot_dat matrix <0,0,4,0,-17.5,0,-4,0,0,0,21.563,-0.167> }
// 
	object { _5_dash_16cyli_dot_dat matrix <0,1.784,-0.902,3,0,0,0,-0.902,-1.784,-1.5,7.182,-9.092> }
	object { _5_dash_16chrd_dot_dat matrix <0,1.784,-0.902,3,0,0,0,-0.902,-1.784,-1.5,7.182,-9.092> }
// BFC INVERTNEXT
	object { _5_dash_16chrd_dot_dat matrix <0,1.784,-0.902,3,0,0,0,-0.902,-1.784,1.5,7.182,-9.092> }
	mesh {
		triangle { <1.5,8.966,-9.994>, <1.5,12.123,-3.75>, <-1.5,12.123,-3.75> }
		triangle { <-1.5,12.123,-3.75>, <-1.5,8.966,-9.994>, <1.5,8.966,-9.994> }
		triangle { <-1.5,5.666,-10.395>, <-1.5,0.664,-3.746>, <1.5,0.664,-3.746> }
		triangle { <1.5,0.664,-3.746>, <1.5,5.666,-10.395>, <-1.5,5.666,-10.395> }
		triangle { <1.5,5.666,-10.395>, <1.5,0.664,-3.746>, <1.5,12.123,-3.75> }
		triangle { <1.5,12.123,-3.75>, <1.5,8.966,-9.994>, <1.5,5.666,-10.395> }
		triangle { <-1.5,8.966,-9.994>, <-1.5,12.123,-3.75>, <-1.5,0.664,-3.746> }
		triangle { <-1.5,0.664,-3.746>, <-1.5,5.666,-10.395>, <-1.5,8.966,-9.994> }
// 
// 
// 
		triangle { <-5,-3.473,9.721>, <-5,8.123,3.858>, <5,8.123,3.858> }
		triangle { <5,8.123,3.858>, <5,-3.473,9.721>, <-5,-3.473,9.721> }
		triangle { <5,-19.258,-21.499>, <5,-7.662,-27.362>, <-5,-7.662,-27.362> }
		triangle { <-5,-7.662,-27.362>, <-5,-19.258,-21.499>, <5,-19.258,-21.499> }
		triangle { <-5,-6.159,8.839>, <-5,-3.473,9.721>, <5,-3.473,9.721> }
		triangle { <5,-3.473,9.721>, <5,-6.159,8.839>, <-5,-6.159,8.839> }
		triangle { <5,-9.767,1.703>, <4,-7.983,0.801>, <-4,-7.983,0.801> }
		triangle { <-4,-7.983,0.801>, <-5,-9.767,1.703>, <5,-9.767,1.703> }
		triangle { <5,-9.767,1.703>, <5,-0.847,-2.807>, <4,-0.847,-2.807> }
		triangle { <4,-0.847,-2.807>, <4,-7.983,0.801>, <5,-9.767,1.703> }
		triangle { <4,-9.336,-1.875>, <4,-5.768,-3.679>, <5,-5.768,-3.679> }
		triangle { <5,-5.768,-3.679>, <5,-9.336,-1.875>, <4,-9.336,-1.875> }
		triangle { <5,-10.709,-9.021>, <5,-8.925,-9.923>, <4,-8.925,-9.923> }
		triangle { <4,-8.925,-9.923>, <4,-10.709,-9.021>, <5,-10.709,-9.021> }
		triangle { <-4,-10.709,-9.021>, <-4,-8.925,-9.923>, <-5,-8.925,-9.923> }
		triangle { <-5,-8.925,-9.923>, <-5,-10.709,-9.021>, <-4,-10.709,-9.021> }
		triangle { <-5,-15.219,-17.941>, <-5,-9.867,-20.647>, <-4,-9.867,-20.647> }
		triangle { <-4,-9.867,-20.647>, <-4,-15.219,-17.941>, <-5,-15.219,-17.941> }
		triangle { <4,-15.219,-17.941>, <4,-9.867,-20.647>, <5,-9.867,-20.647> }
		triangle { <5,-9.867,-20.647>, <5,-15.219,-17.941>, <4,-15.219,-17.941> }
		triangle { <-5,-9.336,-1.875>, <-5,-5.768,-3.679>, <-4,-5.768,-3.679> }
		triangle { <-4,-5.768,-3.679>, <-4,-9.336,-1.875>, <-5,-9.336,-1.875> }
		triangle { <-4,-7.983,0.801>, <-4,-0.847,-2.807>, <-5,-0.847,-2.807> }
		triangle { <-5,-0.847,-2.807>, <-5,-9.767,1.703>, <-4,-7.983,0.801> }
		triangle { <5,-15.219,-17.941>, <5,-9.867,-20.647>, <5,-7.662,-27.362> }
		triangle { <5,-7.662,-27.362>, <5,-19.258,-21.499>, <5,-15.219,-17.941> }
		triangle { <5,-9.336,-1.875>, <5,-10.709,-9.021>, <5,-15.219,-17.941> }
		triangle { <5,-15.219,-17.941>, <5,-19.258,-21.499>, <5,-9.336,-1.875> }
		triangle { <5,-9.336,-1.875>, <5,-5.768,-3.679>, <5,-8.925,-9.923> }
		triangle { <5,-8.925,-9.923>, <5,-10.709,-9.021>, <5,-9.336,-1.875> }
		triangle { <5,-0.847,-2.807>, <5,8.123,3.858>, <5,-7.662,-27.362> }
		triangle { <5,-7.662,-27.362>, <5,-9.867,-20.647>, <5,-0.847,-2.807> }
		triangle { <-5,-9.867,-20.647>, <-5,-7.662,-27.362>, <-5,8.123,3.858> }
		triangle { <-5,8.123,3.858>, <-5,-0.847,-2.807>, <-5,-9.867,-20.647> }
		triangle { <-5,-9.767,1.703>, <-5,-0.847,-2.807>, <-5,8.123,3.858> }
		triangle { <-5,8.123,3.858>, <-5,-3.473,9.721>, <-5,-9.767,1.703> }
		triangle { <5,-3.473,9.721>, <5,8.123,3.858>, <5,-0.847,-2.807> }
		triangle { <5,-0.847,-2.807>, <5,-9.767,1.703>, <5,-3.473,9.721> }
		triangle { <5,-6.159,8.839>, <5,-3.473,9.721>, <5,-9.767,1.703> }
		triangle { <-5,-9.767,1.703>, <-5,-3.473,9.721>, <-5,-6.159,8.839> }
		triangle { <-5,-10.709,-9.021>, <-5,-8.925,-9.923>, <-5,-5.768,-3.679> }
		triangle { <-5,-5.768,-3.679>, <-5,-9.336,-1.875>, <-5,-10.709,-9.021> }
		triangle { <-5,-19.258,-21.499>, <-5,-15.219,-17.941>, <-5,-10.709,-9.021> }
		triangle { <-5,-10.709,-9.021>, <-5,-9.336,-1.875>, <-5,-19.258,-21.499> }
		triangle { <4,-10.709,-9.021>, <4,-8.925,-9.923>, <4,-9.867,-20.647> }
		triangle { <4,-9.867,-20.647>, <4,-15.219,-17.941>, <4,-10.709,-9.021> }
		triangle { <4,-5.768,-3.679>, <4,-0.847,-2.807>, <4,-9.867,-20.647> }
		triangle { <4,-9.867,-20.647>, <4,-8.925,-9.923>, <4,-5.768,-3.679> }
		triangle { <4,-7.983,0.801>, <4,-0.847,-2.807>, <4,-5.768,-3.679> }
		triangle { <4,-5.768,-3.679>, <4,-9.336,-1.875>, <4,-7.983,0.801> }
		triangle { <-4,-9.336,-1.875>, <-4,-5.768,-3.679>, <-4,-0.847,-2.807> }
		triangle { <-4,-0.847,-2.807>, <-4,-7.983,0.801>, <-4,-9.336,-1.875> }
		triangle { <-4,-8.925,-9.923>, <-4,-9.867,-20.647>, <-4,-0.847,-2.807> }
		triangle { <-4,-0.847,-2.807>, <-4,-5.768,-3.679>, <-4,-8.925,-9.923> }
		triangle { <-4,-15.219,-17.941>, <-4,-9.867,-20.647>, <-4,-8.925,-9.923> }
		triangle { <-4,-8.925,-9.923>, <-4,-10.709,-9.021>, <-4,-15.219,-17.941> }
		triangle { <-5,-19.258,-21.499>, <-5,-7.662,-27.362>, <-5,-9.867,-20.647> }
		triangle { <-5,-9.867,-20.647>, <-5,-15.219,-17.941>, <-5,-19.258,-21.499> }
		triangle { <-5,-9.867,-20.647>, <-5,-0.847,-2.807>, <-4,-0.847,-2.807> }
		triangle { <-4,-0.847,-2.807>, <-4,-9.867,-20.647>, <-5,-9.867,-20.647> }
		triangle { <4,-9.867,-20.647>, <4,-0.847,-2.807>, <5,-0.847,-2.807> }
		triangle { <5,-0.847,-2.807>, <5,-9.867,-20.647>, <4,-9.867,-20.647> }
		triangle { <5,-8.925,-9.923>, <5,-5.768,-3.679>, <4,-5.768,-3.679> }
		triangle { <4,-5.768,-3.679>, <4,-8.925,-9.923>, <5,-8.925,-9.923> }
		triangle { <-4,-8.925,-9.923>, <-4,-5.768,-3.679>, <-5,-5.768,-3.679> }
		triangle { <-5,-5.768,-3.679>, <-5,-8.925,-9.923>, <-4,-8.925,-9.923> }
		triangle { <-4,-15.219,-17.941>, <-4,-10.709,-9.021>, <-5,-10.709,-9.021> }
		triangle { <-5,-10.709,-9.021>, <-5,-15.219,-17.941>, <-4,-15.219,-17.941> }
		triangle { <5,-15.219,-17.941>, <5,-10.709,-9.021>, <4,-10.709,-9.021> }
		triangle { <4,-10.709,-9.021>, <4,-15.219,-17.941>, <5,-15.219,-17.941> }
		triangle { <5,-7.662,-27.362>, <5,8.123,3.858>, <-5,8.123,3.858> }
		triangle { <-5,8.123,3.858>, <-5,-7.662,-27.362>, <5,-7.662,-27.362> }
		triangle { <-5,-19.258,-21.499>, <-4,-9.336,-1.875>, <4,-9.336,-1.875> }
		triangle { <4,-9.336,-1.875>, <5,-19.258,-21.499>, <-5,-19.258,-21.499> }
		triangle { <4,-7.983,0.801>, <4,-9.336,-1.875>, <-4,-9.336,-1.875> }
		triangle { <-4,-9.336,-1.875>, <-4,-7.983,0.801>, <4,-7.983,0.801> }
		triangle { <4,-9.336,-1.875>, <5,-9.336,-1.875>, <5,-19.258,-21.499> }
		triangle { <-5,-19.258,-21.499>, <-5,-9.336,-1.875>, <-4,-9.336,-1.875> }
		triangle { <-5,-9.767,1.703>, <-5,-6.159,8.839>, <5,-6.159,8.839> }
		triangle { <5,-6.159,8.839>, <5,-9.767,1.703>, <-5,-9.767,1.703> }
// 
// 
	}
	object { _4_dash_4cyli_dot_dat matrix <0,-3.568,1.804,0,-13.53,-26.76,4,0,0,0,-13.011,-24.657> }
	object { _4_dash_4disc_dot_dat matrix <0,-3.568,1.804,0,13.53,26.76,-4,0,0,0,-26.541,-51.417> }
// 
	object { _4_dash_4cyli_dot_dat matrix <0,-8.474,4.285,0,-3.608,-7.136,9.5,0,0,0,3.122,-17.124> }
	object { _4_dash_4disc_dot_dat matrix <0,-8.474,4.285,0,3.608,7.136,-9.5,0,0,0,-0.486,-24.26> }
	object { _4_dash_4disc_dot_dat matrix <0,-8.474,4.285,0,-3.608,-7.136,9.5,0,0,0,3.122,-17.124> }
}
#end
#end // ifndef (_55707b_dot_dat)


//// Model weapon_020_machinegun.ldr
#ifndef (weapon__020__machinegun_dot_ldr)
#declare weapon__020__machinegun_dot_ldr = object {
// Untitled
// Name: weapon_020_machinegun.ldr
// Author: MLCad
// Unofficial Model
// ROTATION CENTER 0 0 0 1 "Custom"
// ROTATION CONFIG 0 0
	// 1 7  -21.84 -7.886 0  0 -0.5 -0.866025  0 0.866025 -0.5  1 0 0 55707b.dat
	object {
		_55707b_dot_dat
		matrix <1-L3SW/19,0,0,0,1-L3SW/51.672,0,0,0,1-L3SW/62.942,0,L3SW/-12.0927,L3SW/-2.89389>
		matrix <0,0,1,-0.5,0.866025,0,-0.866025,-0.5,0,-21.84,-7.886,0>
		material { L3Color7 }
	}
}
#end // ifndef (weapon__020__machinegun_dot_ldr)


//// ModelData
#declare L3ModelBBoxMin = <-41.0401,-38.8216,-9.5>;
#declare L3ModelBBoxMax = <39.3052,37.3986,9.5>;
#declare L3ModelBBoxCenter = (L3ModelBBoxMin+L3ModelBBoxMax)/2; // <-0.867455,-0.711525,0>
#declare L3ModelBBoxSize = L3ModelBBoxMax-L3ModelBBoxMin; // <80.3453,76.2202,19>
#declare L3FloorY = L3ModelBBoxMax.y;

//// ModelObject weapon_020_machinegun.ldr
object { weapon__020__machinegun_dot_ldr }



//// Statistics
//               PARTS             P         Total
// DAT files:        2             6             9
// POV Equivs:       -             2 (33%)
// Model has 2 parts (0 studs)

//// IncludeFile AtEnd
#include "weapons_camera.inc"

//// End
