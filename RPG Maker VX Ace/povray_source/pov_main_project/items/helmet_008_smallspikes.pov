// Generated by L3P v1.4 BETA 20131202 (Win32)  (C) 1998-2013 Lars C. Hassing SP.lars@AM.hassings.dk
// L3P website:  http://www.hassings.dk/l3/l3p.html
// LDraw.org:    http://www.ldraw.org
// Date:         Sat Aug 23 20:53:39 2014
// Input file:   D:\Datsville RPG\trunk\povray_source\pov_main_project\items\helmet_008_smallspikes.ldr
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
// Commandline:  "E:\Programs Windows\l3p14beta\l3p.exe" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\helmet_008_smallspikes.ldr" "D:\Datsville RPG\trunk\povray_source\pov_main_project\items\helmet_008_smallspikes.pov" -o -ic -il -ibitems.inc -iearmor_camera.inc

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


//// Color 22 Purple (from ldconfig.ldr)
#ifndef (L3Texture22)
#declare L3Texture22 = L3TextureOpaqueRGB(129,0,123)
#end
#ifndef (L3Texture22_slope)
#declare L3Texture22_slope = L3TextureSlope(L3Texture22)
#end
#ifndef (L3Color22)
#declare L3Color22 = L3Material(L3Texture22)
#end
#ifndef (L3Color22_slope)
#declare L3Color22_slope = L3Material(L3Texture22_slope)
#end


//// Part s\60748s01.dat
#ifndef (s_slash_60748s01_dot_dat)
#declare s_slash_60748s01_dot_dat = #if (L3Quality = 0) box { <0,-10.5,-17.86>, <20.27,18.08,20.27> } #else object {
// ~Minifig Helmet Cap - Half
// Name: s\60748s01.dat
// Author: Andy Westrate [westrate]
// !LDRAW_ORG Subpart UPDATE 2012-02
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !HISTORY 2012-04-07 [MagFors] Improved inside design and edgelines around rivets
// !HISTORY 2012-08-09 [PTadmin] Official Update 2012-02
	mesh {
		triangle { <3.5,-0.43,14.77>, <3.5,2.77,15.48>, <3.5,2.77,16.37> }
		triangle { <3.5,2.77,16.37>, <3.5,-0.55,15.67>, <3.5,-0.43,14.77> }
		triangle { <3.5,-0.43,14.77>, <3.5,-0.55,15.67>, <3.5,-3.95,14.14> }
		triangle { <3.5,-3.95,14.14>, <3.5,-3.35,13.47>, <3.5,-0.43,14.77> }
		triangle { <3.5,3.03,-15.5>, <3.5,-0.43,-14.77>, <3.5,-0.55,-15.67> }
		triangle { <3.5,-0.55,-15.67>, <3.5,3.03,-16.4>, <3.5,3.03,-15.5> }
		triangle { <3.5,-0.43,-14.77>, <3.5,-3.35,-13.47>, <3.5,-3.95,-14.14> }
		triangle { <3.5,-3.95,-14.14>, <3.5,-0.55,-15.67>, <3.5,-0.43,-14.77> }
		triangle { <3.5,-6.44,12.09>, <3.5,-5.7,11.62>, <3.5,-3.35,13.47> }
		triangle { <3.5,-3.35,13.47>, <3.5,-3.95,14.14>, <3.5,-6.44,12.09> }
		triangle { <3.5,-3.35,-13.47>, <3.5,-5.7,-11.62>, <3.5,-6.38,-12.15> }
		triangle { <3.5,-6.38,-12.15>, <3.5,-3.95,-14.14>, <3.5,-3.35,-13.47> }
		triangle { <3.5,-7.66,10.2>, <3.5,-7.52,9.16>, <3.5,-5.7,11.62> }
		triangle { <3.5,-5.7,11.62>, <3.5,-6.44,12.09>, <3.5,-7.66,10.2> }
		triangle { <3.5,-5.7,-11.62>, <3.5,-7.52,-9.16>, <3.5,-7.87,-10.2> }
		triangle { <3.5,-7.87,-10.2>, <3.5,-6.38,-12.15>, <3.5,-5.7,-11.62> }
		triangle { <3.5,-7.52,9.16>, <3.5,-7.66,10.2>, <3.5,-8.87,5.8> }
		triangle { <3.5,-7.87,-10.2>, <3.5,-7.52,-9.16>, <3.5,-8.86,-5.81> }
		triangle { <3.5,-8.86,-5.81>, <3.5,-9.42,-6.68>, <3.5,-7.87,-10.2> }
		triangle { <3.5,-8.86,-5.81>, <3.5,-9.82,-5.05>, <3.5,-9.42,-6.68> }
		triangle { <3.5,-9.46,2.23>, <3.5,-9.12,4.51>, <3.5,-9.82,5.05> }
		triangle { <3.5,-9.82,5.05>, <3.5,-10.21,0>, <3.5,-9.46,2.23> }
		triangle { <3.5,-9.46,2.23>, <3.5,-10.21,0>, <3.5,-9.45,-2.29> }
		triangle { <3.5,-9.12,4.51>, <3.5,-8.87,5.8>, <3.5,-9.82,5.05> }
		triangle { <3.5,-9.82,-5.05>, <3.5,-8.86,-5.81>, <3.5,-9.45,-2.29> }
		triangle { <3.5,-9.45,-2.29>, <3.5,-10.21,0>, <3.5,-9.82,-5.05> }
		triangle { <3.5,-8.87,5.8>, <3.5,-7.66,10.2>, <3.5,-9.42,6.68> }
		triangle { <3.5,-9.42,6.68>, <3.5,-9.82,5.05>, <3.5,-8.87,5.8> }
		triangle { <1.96,10.78,-14.31>, <1.96,10.78,-17.13>, <0,10.78,-17.5> }
		triangle { <0,10.78,-17.5>, <0,10.78,-14.31>, <1.96,10.78,-14.31> }
		triangle { <15.9,18.08,6.59>, <12.17,18.08,12.17>, <14.33,18.08,14.33> }
		triangle { <14.33,18.08,14.33>, <18.72,18.08,7.76>, <15.9,18.08,6.59> }
		triangle { <14.33,18.08,14.33>, <12.17,18.08,12.17>, <6.59,18.08,15.9> }
		triangle { <6.59,18.08,15.9>, <7.76,18.08,18.72>, <14.33,18.08,14.33> }
		triangle { <0,18.08,20.27>, <7.76,18.08,18.72>, <6.59,18.08,15.9> }
		triangle { <6.59,18.08,15.9>, <0,18.08,17.21>, <0,18.08,20.27> }
		triangle { <18.72,18.08,7.76>, <20.27,18.08,0>, <17.21,18.08,0> }
		triangle { <17.21,18.08,0>, <15.9,18.08,6.59>, <18.72,18.08,7.76> }
		triangle { <11.94,18.08,-12.24>, <15.9,18.08,-6.59>, <18.72,18.08,-7.76> }
		triangle { <18.72,18.08,-7.76>, <14.29,18.08,-14.41>, <11.94,18.08,-12.24> }
		triangle { <15.9,18.08,-6.59>, <17.21,18.08,0>, <20.27,18.08,0> }
		triangle { <20.27,18.08,0>, <18.72,18.08,-7.76>, <15.9,18.08,-6.59> }
		triangle { <11.29,10.49,-9.85>, <10.9,10.64,-9.4>, <8.86,11.8,-11.87> }
		triangle { <8.86,11.8,-11.87>, <10.87,11.04,-14.01>, <11.29,10.49,-9.85> }
		triangle { <11.29,10.49,-9.85>, <10.87,11.04,-14.01>, <13.87,9.3,-10> }
		triangle { <14.02,4.73,-9.73>, <10.72,5.85,-9.51>, <11.29,10.49,-9.85> }
		triangle { <11.29,10.49,-9.85>, <13.87,9.3,-10>, <14.02,4.73,-9.73> }
		triangle { <14.53,9.74,-10.08>, <14.02,4.73,-9.73>, <13.87,9.3,-10> }
		triangle { <14.05,9.79,-10.05>, <14.53,9.74,-10.08>, <13.87,9.3,-10> }
		triangle { <2.3,9.54,-13.8>, <1.96,10.78,-17.13>, <1.96,10.78,-14.31> }
		triangle { <2.92,7.29,-17.23>, <2.68,8.17,-13.49>, <2.92,7.29,-13.44> }
		triangle { <2.92,7.29,-17.23>, <1.96,10.78,-17.13>, <2.3,9.54,-13.8> }
		triangle { <2.3,9.54,-13.8>, <2.68,8.17,-13.49>, <2.92,7.29,-17.23> }
		triangle { <10.93,5.81,-13.17>, <6.94,6.55,-11.78>, <10.32,5.92,-9.09> }
		triangle { <10.32,5.92,-9.09>, <10.72,5.85,-9.51>, <10.93,5.81,-13.17> }
		triangle { <6.94,6.55,-11.78>, <10.93,5.81,-13.17>, <8.54,6.25,-14.96> }
		triangle { <8.54,6.25,-14.96>, <5.83,6.75,-16.28>, <6.94,6.55,-11.78> }
		triangle { <2.92,7.29,-13.44>, <6.94,6.55,-11.78>, <5.83,6.75,-16.28> }
		triangle { <5.83,6.75,-16.28>, <2.92,7.29,-17.23>, <2.92,7.29,-13.44> }
		triangle { <3.14,3.33,-17.57>, <8.12,-0.83,-15.93>, <8.12,-0.83,-12.67> }
		triangle { <8.12,-0.83,-12.67>, <3.5,3.03,-15.5>, <3.14,3.33,-17.57> }
		triangle { <3.14,3.33,-17.57>, <3.5,3.03,-15.5>, <0,5.95,-16.57> }
		triangle { <0,5.95,-16.57>, <0,5.95,-17.86>, <3.14,3.33,-17.57> }
		triangle { <13.67,2.77,-9.81>, <11.9,1.08,-12.48>, <13.78,2.86,-10.07> }
		triangle { <13.74,2.77,-7.94>, <13.67,2.77,-9.81>, <15.58,2.77,-6.46> }
		triangle { <15.58,2.77,-6.46>, <14.75,2.77,-6.11>, <13.74,2.77,-7.94> }
		triangle { <11.93,2.77,11.93>, <6.46,2.77,15.58>, <6.11,2.77,14.75> }
		triangle { <6.11,2.77,14.75>, <11.29,2.77,11.29>, <11.93,2.77,11.93> }
		triangle { <11.29,2.77,11.29>, <14.75,2.77,6.11>, <15.58,2.77,6.45> }
		triangle { <15.58,2.77,6.45>, <11.93,2.77,11.93>, <11.29,2.77,11.29> }
		triangle { <15.96,2.77,0>, <16.87,2.77,0>, <15.58,2.77,6.45> }
		triangle { <15.58,2.77,6.45>, <14.75,2.77,6.11>, <15.96,2.77,0> }
		triangle { <14.75,2.77,-6.11>, <15.58,2.77,-6.46>, <16.87,2.77,0> }
		triangle { <16.87,2.77,0>, <15.96,2.77,0>, <14.75,2.77,-6.11> }
		triangle { <3.5,2.77,15.48>, <6.11,2.77,14.75>, <6.46,2.77,15.58> }
		triangle { <6.46,2.77,15.58>, <3.5,2.77,16.37>, <3.5,2.77,15.48> }
		triangle { <11.98,1.16,-9.97>, <12.95,-0.41,-7.93>, <9.95,-0.77,-11.31> }
		triangle { <12.95,-0.41,-7.93>, <14.75,2.77,-6.11>, <14.6,-0.41,-4.2> }
		triangle { <13.67,2.77,-9.81>, <14.12,3.4,-9.59>, <14.11,3.39,-9.3> }
		triangle { <14.11,3.39,-9.3>, <15.58,2.77,-6.46>, <13.67,2.77,-9.81> }
		triangle { <14,4.77,-9.82>, <13.78,2.86,-10.07>, <11.9,1.08,-12.48> }
		triangle { <13.78,2.86,-10.07>, <14,4.77,-9.82>, <14.21,4.14,-9.49> }
		triangle { <14.21,4.14,-9.49>, <14.12,3.4,-9.59>, <13.78,2.86,-10.07> }
		triangle { <9.39,-1.08,-15.03>, <9.95,-0.77,-14.54>, <9.95,-0.77,-11.31> }
		triangle { <9.95,-0.77,-11.31>, <9.41,-1.07,-11.64>, <9.39,-1.08,-15.03> }
		triangle { <8.36,-3.32,-10.99>, <8.65,-1.09,-12.2>, <9.41,-1.07,-11.64> }
		triangle { <9.95,-0.77,-11.31>, <12.05,-3.32,-7>, <8.36,-3.32,-10.99> }
		triangle { <8.36,-3.32,-10.99>, <9.41,-1.07,-11.64>, <9.95,-0.77,-11.31> }
		triangle { <6.11,2.77,14.75>, <3.5,2.77,15.48>, <3.5,-0.43,14.77> }
		triangle { <7.33,-0.41,13.3>, <11.29,2.77,11.29>, <6.11,2.77,14.75> }
		triangle { <10.6,-0.41,10.87>, <13.11,-0.41,7.66>, <11.29,2.77,11.29> }
		triangle { <13.11,-0.41,7.66>, <14.93,-0.41,1.87>, <14.75,2.77,6.11> }
		triangle { <14.93,-0.41,1.87>, <14.6,-0.41,-4.2>, <15.96,2.77,0> }
		triangle { <13.46,-3.32,-3.62>, <12.05,-3.32,-7>, <12.95,-0.41,-7.93> }
		triangle { <14.93,-0.41,1.87>, <13.7,-3.32,1.81>, <14.6,-0.41,-4.2> }
		triangle { <12.05,-3.32,6.99>, <13.7,-3.32,1.81>, <14.93,-0.41,1.87> }
		triangle { <14.93,-0.41,1.87>, <13.11,-0.41,7.66>, <12.05,-3.32,6.99> }
		triangle { <13.11,-0.41,7.66>, <10.6,-0.41,10.87>, <9.82,-3.32,9.89> }
		triangle { <9.82,-3.32,9.89>, <12.05,-3.32,6.99>, <13.11,-0.41,7.66> }
		triangle { <6.91,-3.32,12.1>, <9.82,-3.32,9.89>, <10.6,-0.41,10.87> }
		triangle { <10.6,-0.41,10.87>, <7.33,-0.41,13.3>, <6.91,-3.32,12.1> }
		triangle { <7.33,-0.41,13.3>, <3.5,-0.43,14.77>, <3.5,-3.35,13.47> }
		triangle { <8.36,-3.32,-10.99>, <8.12,-0.83,-12.67>, <8.65,-1.09,-12.2> }
		triangle { <8.12,-0.83,-15.93>, <8.64,-1.08,-15.6>, <8.65,-1.09,-12.2> }
		triangle { <8.65,-1.09,-12.2>, <8.12,-0.83,-12.67>, <8.12,-0.83,-15.93> }
		triangle { <3.5,-0.43,-14.77>, <8.12,-0.83,-12.67>, <3.5,-3.35,-13.47> }
		triangle { <8.12,-0.83,-12.67>, <3.5,-0.43,-14.77>, <3.5,3.03,-15.5> }
		triangle { <8.36,-3.32,-10.99>, <3.5,-3.35,-13.47>, <8.12,-0.83,-12.67> }
		triangle { <3.5,-5.7,-11.62>, <8.36,-3.32,-10.99>, <7.56,-5.7,-9.37> }
		triangle { <7.56,-5.7,-9.37>, <12.05,-3.32,-7>, <10.59,-5.7,-5.93> }
		triangle { <11.75,-5.7,-3.06>, <10.59,-5.7,-5.93>, <12.05,-3.32,-7> }
		triangle { <12.05,-3.32,-7>, <13.46,-3.32,-3.62>, <11.75,-5.7,-3.06> }
		triangle { <11.75,-5.7,-3.06>, <13.46,-3.32,-3.62>, <13.7,-3.32,1.81> }
		triangle { <13.7,-3.32,1.81>, <11.94,-5.7,1.53>, <11.75,-5.7,-3.06> }
		triangle { <10.6,-5.7,5.92>, <11.94,-5.7,1.53>, <13.7,-3.32,1.81> }
		triangle { <8.76,-5.7,8.4>, <10.6,-5.7,5.92>, <12.05,-3.32,6.99> }
		triangle { <6.36,-5.7,10.34>, <8.76,-5.7,8.4>, <9.82,-3.32,9.89> }
		triangle { <3.5,-3.35,13.47>, <3.5,-5.7,11.62>, <6.91,-3.32,12.1> }
		triangle { <7.56,-5.7,-9.37>, <6.79,-7.53,-6.95>, <3.5,-7.52,-9.16> }
		triangle { <7.56,-5.7,-9.37>, <10.59,-5.7,-5.93>, <6.79,-7.53,-6.95> }
		triangle { <11.94,-5.7,1.53>, <9.72,-7.53,1.29>, <9.37,-7.53,-2.55> }
		triangle { <10.6,-5.7,5.92>, <8.38,-7.53,4.92>, <11.94,-5.7,1.53> }
		triangle { <8.76,-5.7,8.4>, <8.38,-7.53,4.92>, <10.6,-5.7,5.92> }
		triangle { <6.36,-5.7,10.34>, <5.86,-7.53,7.85>, <8.76,-5.7,8.4> }
		triangle { <3.5,-7.52,9.16>, <5.86,-7.53,7.85>, <6.36,-5.7,10.34> }
		triangle { <6.79,-7.53,-6.95>, <4.98,-8.82,-4.81>, <3.5,-8.86,-5.81> }
		triangle { <6.42,-8.82,-2.14>, <4.98,-8.82,-4.81>, <6.79,-7.53,-6.95> }
		triangle { <6.42,-8.82,-2.14>, <9.37,-7.53,-2.55>, <9.72,-7.53,1.29> }
		triangle { <9.72,-7.53,1.29>, <6.7,-8.82,1.74>, <6.42,-8.82,-2.14> }
		triangle { <8.38,-7.53,4.92>, <5.51,-8.82,4.09>, <6.7,-8.82,1.74> }
		triangle { <8.38,-7.53,4.92>, <5.86,-7.53,7.85>, <5.51,-8.82,4.09> }
		triangle { <5.86,-7.53,7.85>, <3.5,-7.52,9.16>, <3.5,-8.87,5.8> }
		triangle { <3.5,-9.45,-2.29>, <3.5,-8.86,-5.81>, <4.98,-8.82,-4.81> }
		triangle { <6.42,-8.82,-2.14>, <6.7,-8.82,1.74>, <3.5,-9.46,2.23> }
		triangle { <6.7,-8.82,1.74>, <5.51,-8.82,4.09>, <3.5,-9.46,2.23> }
		triangle { <3.5,2.77,16.37>, <6.73,9.74,16.24>, <0,9.74,17.57> }
		triangle { <0,9.74,17.57>, <0,2.77,16.83>, <3.5,2.77,16.37> }
		triangle { <6.73,9.74,16.24>, <6.46,2.77,15.58>, <11.93,2.77,11.93> }
		triangle { <11.93,2.77,11.93>, <12.43,9.74,12.43>, <6.73,9.74,16.24> }
		triangle { <15.58,2.77,6.45>, <16.24,9.74,6.72>, <12.43,9.74,12.43> }
		triangle { <12.43,9.74,12.43>, <11.93,2.77,11.93>, <15.58,2.77,6.45> }
		triangle { <16.24,9.74,6.72>, <15.58,2.77,6.45>, <16.87,2.77,0> }
		triangle { <16.87,2.77,0>, <17.57,9.74,0>, <16.24,9.74,6.72> }
		triangle { <16.87,2.77,0>, <15.58,2.77,-6.46>, <16.24,9.74,-6.73> }
		triangle { <16.24,9.74,-6.73>, <17.57,9.74,0>, <16.87,2.77,0> }
		triangle { <15.58,2.77,-6.46>, <14.11,3.39,-9.3>, <14.21,4.15,-9.32> }
		triangle { <2.92,7.29,-17.23>, <3.14,3.33,-17.57>, <0,5.95,-17.86> }
		triangle { <8.12,-0.83,-15.93>, <3.14,3.33,-17.57>, <5.83,6.75,-16.28> }
		triangle { <14.11,3.39,-9.3>, <14.12,3.4,-9.59>, <14.21,4.14,-9.49> }
		triangle { <14.21,4.14,-9.49>, <14.21,4.15,-9.32>, <14.11,3.39,-9.3> }
		triangle { <14.21,4.14,-9.49>, <14,4.77,-9.82>, <14.02,4.73,-9.73> }
		triangle { <10.93,5.81,-13.17>, <10.72,5.85,-9.51>, <14.02,4.73,-9.73> }
		triangle { <14.21,4.15,-9.32>, <14.02,4.73,-9.73>, <16.24,9.74,-6.73> }
		triangle { <16.24,9.74,-6.73>, <14.53,9.74,-10.08>, <14.05,9.79,-10.05> }
		triangle { <6.66,9.81,16.08>, <0,9.81,17.4>, <0,9.74,17.57> }
		triangle { <0,9.74,17.57>, <6.73,9.74,16.24>, <6.66,9.81,16.08> }
		triangle { <12.43,9.74,12.43>, <12.3,9.81,12.3>, <6.66,9.81,16.08> }
		triangle { <6.66,9.81,16.08>, <6.73,9.74,16.24>, <12.43,9.74,12.43> }
		triangle { <16.08,9.81,6.66>, <12.3,9.81,12.3>, <12.43,9.74,12.43> }
		triangle { <12.43,9.74,12.43>, <16.24,9.74,6.72>, <16.08,9.81,6.66> }
		triangle { <17.57,9.74,0>, <17.4,9.81,0>, <16.08,9.81,6.66> }
		triangle { <16.08,9.81,6.66>, <16.24,9.74,6.72>, <17.57,9.74,0> }
		triangle { <17.57,9.74,0>, <16.24,9.74,-6.73>, <15.9,9.79,-6.75> }
		triangle { <2.92,7.29,-13.44>, <0,5.31,-13.75>, <6.87,5.31,-11.91> }
		triangle { <10.32,5.92,-9.09>, <6.94,6.55,-11.78>, <6.87,5.31,-11.91> }
		triangle { <10.83,0.88,-6.19>, <10.32,5.92,-9.09>, <6.87,5.31,-11.91> }
		triangle { <10.83,0.88,-6.19>, <12.48,0.88,0>, <13.98,9.54,0.66> }
		triangle { <12.48,0.88,0>, <11.41,0.88,4.77>, <12.59,9.54,5.84> }
		triangle { <4.31,0.88,11.49>, <0,0.88,12.47>, <0,9.54,13.99> }
		triangle { <8.21,0.88,9.22>, <4.31,0.88,11.49>, <4.82,9.54,12.77> }
		triangle { <11.41,0.88,4.77>, <8.21,0.88,9.22>, <9.54,9.54,10.24> }
		triangle { <10.9,10.64,-9.4>, <15.9,18.08,-6.59>, <11.94,18.08,-12.24> }
		triangle { <17.21,18.08,0>, <15.9,18.08,-6.59>, <12.49,9.54,-6.31> }
		triangle { <12.49,9.54,-6.31>, <13.98,9.54,0.66>, <17.21,18.08,0> }
		triangle { <13.98,9.54,0.66>, <12.59,9.54,5.84>, <15.9,18.08,6.59> }
		triangle { <12.59,9.54,5.84>, <9.54,9.54,10.24>, <12.17,18.08,12.17> }
		triangle { <9.54,9.54,10.24>, <4.82,9.54,12.77>, <6.59,18.08,15.9> }
		triangle { <4.82,9.54,12.77>, <0,9.54,13.99>, <0,18.08,17.21> }
		triangle { <10.9,10.64,-9.4>, <11.94,18.08,-12.24>, <8.86,11.8,-11.87> }
		triangle { <10.87,11.04,-14.01>, <8.86,11.8,-11.87>, <11.94,18.08,-12.24> }
		triangle { <11.94,18.08,-12.24>, <14.29,18.08,-14.41>, <10.87,11.04,-14.01> }
		triangle { <10.87,11.04,-14.01>, <14.05,9.79,-10.05>, <13.87,9.3,-10> }
		triangle { <18.72,18.08,-7.76>, <15.9,9.79,-6.75>, <14.05,9.79,-10.05> }
		triangle { <17.4,9.81,0>, <15.9,9.79,-6.75>, <18.72,18.08,-7.76> }
		triangle { <20.27,18.08,0>, <18.72,18.08,7.76>, <16.08,9.81,6.66> }
		triangle { <16.08,9.81,6.66>, <17.4,9.81,0>, <20.27,18.08,0> }
		triangle { <18.72,18.08,7.76>, <14.33,18.08,14.33>, <12.3,9.81,12.3> }
		triangle { <12.3,9.81,12.3>, <16.08,9.81,6.66>, <18.72,18.08,7.76> }
		triangle { <14.33,18.08,14.33>, <7.76,18.08,18.72>, <6.66,9.81,16.08> }
		triangle { <6.66,9.81,16.08>, <12.3,9.81,12.3>, <14.33,18.08,14.33> }
		triangle { <7.76,18.08,18.72>, <0,18.08,20.27>, <0,9.81,17.4> }
		triangle { <0,9.81,17.4>, <6.66,9.81,16.08>, <7.76,18.08,18.72> }
		triangle { <10.83,0.88,-6.19>, <6.87,5.31,-11.91>, <6.28,0.88,-10.78> }
		triangle { <0,0.88,-12.47>, <6.28,0.88,-10.78>, <6.87,5.31,-11.91> }
		triangle { <6.87,5.31,-11.91>, <0,5.31,-13.75>, <0,0.88,-12.47> }
		triangle { <8.21,0.88,9.22>, <9.72,-2.8,4.44>, <6.93,-2.8,8> }
		triangle { <10.37,-2.8,0.03>, <9.72,-2.8,4.44>, <11.41,0.88,4.77> }
		triangle { <5.78,-2.8,-8.99>, <9.72,-2.8,-4.44>, <10.83,0.88,-6.19> }
		triangle { <0,0.88,12.47>, <3.99,-2.8,9.69>, <0,-2.8,10.69> }
		triangle { <3.99,-2.8,9.69>, <4.31,0.88,11.49>, <8.21,0.88,9.22> }
		triangle { <8.21,0.88,9.22>, <6.93,-2.8,8>, <3.99,-2.8,9.69> }
		triangle { <0,-2.8,-10.69>, <5.78,-2.8,-8.99>, <6.28,0.88,-10.78> }
		triangle { <3.5,-9.12,4.51>, <5.51,-8.82,4.09>, <3.5,-8.87,5.8> }
		triangle { <14.05,9.79,-10.05>, <14.29,18.08,-14.41>, <18.72,18.08,-7.76> }
		triangle { <12.49,9.54,-6.31>, <10.32,5.92,-9.09>, <10.83,0.88,-6.19> }
		triangle { <12.48,0.88,0>, <9.72,-2.8,-4.44>, <10.37,-2.8,0.03> }
		triangle { <6.73,9.74,16.24>, <3.5,2.77,16.37>, <6.46,2.77,15.58> }
		triangle { <15.9,18.08,-6.59>, <10.9,10.64,-9.4>, <12.49,9.54,-6.31> }
		triangle { <10.72,5.85,-9.51>, <10.9,10.64,-9.4>, <11.29,10.49,-9.85> }
		triangle { <14.05,9.79,-10.05>, <10.87,11.04,-14.01>, <14.29,18.08,-14.41> }
		triangle { <18.72,18.08,-7.76>, <20.27,18.08,0>, <17.4,9.81,0> }
		triangle { <17.21,18.08,0>, <13.98,9.54,0.66>, <15.9,18.08,6.59> }
		triangle { <15.9,18.08,6.59>, <12.59,9.54,5.84>, <12.17,18.08,12.17> }
		triangle { <12.17,18.08,12.17>, <9.54,9.54,10.24>, <6.59,18.08,15.9> }
		triangle { <6.59,18.08,15.9>, <4.82,9.54,12.77>, <0,18.08,17.21> }
		triangle { <4.82,9.54,12.77>, <4.31,0.88,11.49>, <0,9.54,13.99> }
		triangle { <9.54,9.54,10.24>, <8.21,0.88,9.22>, <4.82,9.54,12.77> }
		triangle { <12.59,9.54,5.84>, <11.41,0.88,4.77>, <9.54,9.54,10.24> }
		triangle { <13.98,9.54,0.66>, <12.48,0.88,0>, <12.59,9.54,5.84> }
		triangle { <12.49,9.54,-6.31>, <10.83,0.88,-6.19>, <13.98,9.54,0.66> }
		triangle { <3.99,-2.8,9.69>, <0,0.88,12.47>, <4.31,0.88,11.49> }
		triangle { <9.72,-2.8,4.44>, <8.21,0.88,9.22>, <11.41,0.88,4.77> }
		triangle { <11.41,0.88,4.77>, <12.48,0.88,0>, <10.37,-2.8,0.03> }
		triangle { <12.48,0.88,0>, <10.83,0.88,-6.19>, <9.72,-2.8,-4.44> }
		triangle { <10.83,0.88,-6.19>, <6.28,0.88,-10.78>, <5.78,-2.8,-8.99> }
		triangle { <6.28,0.88,-10.78>, <0,0.88,-12.47>, <0,-2.8,-10.69> }
		triangle { <1.96,10.78,-17.13>, <2.92,7.29,-17.23>, <0,5.95,-17.86> }
		triangle { <0,5.95,-17.86>, <0,10.78,-17.5>, <1.96,10.78,-17.13> }
		triangle { <5.83,6.75,-16.28>, <3.14,3.33,-17.57>, <2.92,7.29,-17.23> }
		triangle { <8.64,-1.08,-15.6>, <8.12,-0.83,-15.93>, <9.95,-0.77,-14.54> }
		triangle { <9.95,-0.77,-14.54>, <9.39,-1.08,-15.03>, <8.64,-1.08,-15.6> }
		triangle { <11.98,1.16,-9.97>, <13.74,2.77,-7.94>, <12.95,-0.41,-7.93> }
		triangle { <3.5,-5.7,-11.62>, <3.5,-3.35,-13.47>, <8.36,-3.32,-10.99> }
		triangle { <3.5,-7.52,-9.16>, <3.5,-5.7,-11.62>, <7.56,-5.7,-9.37> }
		triangle { <3.5,-8.86,-5.81>, <3.5,-7.52,-9.16>, <6.79,-7.53,-6.95> }
		triangle { <4.98,-8.82,-4.81>, <6.42,-8.82,-2.14>, <3.5,-9.45,-2.29> }
		triangle { <6.79,-7.53,-6.95>, <9.37,-7.53,-2.55>, <6.42,-8.82,-2.14> }
		triangle { <6.79,-7.53,-6.95>, <10.59,-5.7,-5.93>, <9.37,-7.53,-2.55> }
		triangle { <7.56,-5.7,-9.37>, <8.36,-3.32,-10.99>, <12.05,-3.32,-7> }
		triangle { <12.05,-3.32,-7>, <9.95,-0.77,-11.31>, <12.95,-0.41,-7.93> }
		triangle { <9.37,-7.53,-2.55>, <10.59,-5.7,-5.93>, <11.75,-5.7,-3.06> }
		triangle { <14.6,-0.41,-4.2>, <13.46,-3.32,-3.62>, <12.95,-0.41,-7.93> }
		triangle { <14.75,2.77,-6.11>, <12.95,-0.41,-7.93>, <13.74,2.77,-7.94> }
		triangle { <3.5,-9.46,2.23>, <3.5,-9.45,-2.29>, <6.42,-8.82,-2.14> }
		triangle { <11.94,-5.7,1.53>, <9.37,-7.53,-2.55>, <11.75,-5.7,-3.06> }
		triangle { <13.7,-3.32,1.81>, <13.46,-3.32,-3.62>, <14.6,-0.41,-4.2> }
		triangle { <14.6,-0.41,-4.2>, <14.75,2.77,-6.11>, <15.96,2.77,0> }
		triangle { <8.38,-7.53,4.92>, <6.7,-8.82,1.74>, <9.72,-7.53,1.29> }
		triangle { <9.72,-7.53,1.29>, <11.94,-5.7,1.53>, <8.38,-7.53,4.92> }
		triangle { <10.6,-5.7,5.92>, <13.7,-3.32,1.81>, <12.05,-3.32,6.99> }
		triangle { <14.75,2.77,6.11>, <14.93,-0.41,1.87>, <15.96,2.77,0> }
		triangle { <3.5,-9.12,4.51>, <3.5,-9.46,2.23>, <5.51,-8.82,4.09> }
		triangle { <8.76,-5.7,8.4>, <12.05,-3.32,6.99>, <9.82,-3.32,9.89> }
		triangle { <11.29,2.77,11.29>, <13.11,-0.41,7.66>, <14.75,2.77,6.11> }
		triangle { <3.5,-8.87,5.8>, <5.51,-8.82,4.09>, <5.86,-7.53,7.85> }
		triangle { <8.38,-7.53,4.92>, <8.76,-5.7,8.4>, <5.86,-7.53,7.85> }
		triangle { <6.36,-5.7,10.34>, <9.82,-3.32,9.89>, <6.91,-3.32,12.1> }
		triangle { <7.33,-0.41,13.3>, <10.6,-0.41,10.87>, <11.29,2.77,11.29> }
		triangle { <3.5,-5.7,11.62>, <3.5,-7.52,9.16>, <6.36,-5.7,10.34> }
		triangle { <3.5,-5.7,11.62>, <6.36,-5.7,10.34>, <6.91,-3.32,12.1> }
		triangle { <3.5,-3.35,13.47>, <6.91,-3.32,12.1>, <7.33,-0.41,13.3> }
		triangle { <3.5,-0.43,14.77>, <7.33,-0.41,13.3>, <6.11,2.77,14.75> }
		triangle { <16.24,9.74,-6.73>, <14.05,9.79,-10.05>, <15.9,9.79,-6.75> }
		triangle { <17.57,9.74,0>, <15.9,9.79,-6.75>, <17.4,9.81,0> }
		triangle { <13.78,2.86,-10.07>, <14.12,3.4,-9.59>, <13.67,2.77,-9.81> }
		triangle { <14.21,4.14,-9.49>, <14.02,4.73,-9.73>, <14.21,4.15,-9.32> }
		triangle { <11.9,1.08,-12.48>, <10.93,5.81,-13.17>, <14,4.77,-9.82> }
		triangle { <14.02,4.73,-9.73>, <14.53,9.74,-10.08>, <16.24,9.74,-6.73> }
		triangle { <15.58,2.77,-6.46>, <14.21,4.15,-9.32>, <16.24,9.74,-6.73> }
		triangle { <2.92,7.29,-13.44>, <6.87,5.31,-11.91>, <6.94,6.55,-11.78> }
		triangle { <14.02,4.73,-9.73>, <14,4.77,-9.82>, <10.93,5.81,-13.17> }
		triangle { <8.54,6.25,-14.96>, <10.93,5.81,-13.17>, <11.9,1.08,-12.48> }
		triangle { <8.54,6.25,-14.96>, <8.12,-0.83,-15.93>, <5.83,6.75,-16.28> }
		triangle { <8.54,6.25,-14.96>, <9.95,-0.77,-14.54>, <8.12,-0.83,-15.93> }
		triangle { <8.54,6.25,-14.96>, <11.9,1.08,-12.48>, <9.95,-0.77,-14.54> }
		triangle { <0,5.31,-13.75>, <2.92,7.29,-13.44>, <2.68,8.17,-13.49> }
		triangle { <0,-10.5,8.96>, <1.79,-9.42,6.68>, <2.06,-7.66,10.2> }
		triangle { <0,-10.5,8.96>, <0.78,-9.82,5.05>, <1.79,-9.42,6.68> }
		triangle { <0,-2.96,16.62>, <1.89,-3.95,14.14>, <1.83,-0.55,15.67> }
		triangle { <0,-10.5,-8.96>, <1.79,-9.42,-6.68>, <0.78,-9.82,-5.05> }
		triangle { <0,-10.5,-8.96>, <2.06,-7.87,-10.2>, <1.79,-9.42,-6.68> }
		triangle { <0,-2.96,-16.62>, <1.83,-0.55,-15.67>, <1.89,-3.95,-14.14> }
// 
		triangle { <19.09,6.36,0>, <17.009,4.15,0>, <16.618,4.1571,-1.9736> }
		triangle { <19.09,6.36,0>, <16.618,4.1571,-1.9736>, <17.0122,8.0782,-1.9779> }
		triangle { <19.09,6.36,0>, <17.0116,8.0787,1.9785>, <16.6172,4.1564,1.9743> }
		triangle { <19.09,6.36,0>, <17.4021,8.0678,0>, <17.0116,8.0787,1.9785> }
		triangle { <19.09,6.36,0>, <16.6172,4.1564,1.9743>, <17.009,4.15,0> }
		triangle { <19.09,6.36,0>, <17.0122,8.0782,-1.9779>, <17.4021,8.0678,0> }
		triangle { <13.5,6.36,13.5>, <12.029,4.15,12.029>, <13.1412,4.1574,10.3605> }
		triangle { <13.5,6.36,13.5>, <13.1412,4.1574,10.3605>, <13.43,8.0792,10.6312> }
		triangle { <13.5,6.36,13.5>, <10.6359,8.0765,13.4301>, <10.3653,4.1607,13.1417> }
		triangle { <13.5,6.36,13.5>, <12.3099,8.0658,12.3099>, <10.6359,8.0765,13.4301> }
		triangle { <13.5,6.36,13.5>, <10.3653,4.1607,13.1417>, <12.029,4.15,12.029> }
		triangle { <13.5,6.36,13.5>, <13.43,8.0792,10.6312>, <12.3099,8.0658,12.3099> }
		triangle { <0,6.36,19.09>, <1.98,5.797,16.8911>, <1.98,8.08,17.0576> }
		triangle { <0,6.36,19.09>, <1.98,4.15,16.7163>, <1.98,5.797,16.8911> }
		triangle { <0,6.36,19.09>, <0,4.15,16.9765>, <1.98,4.15,16.7163> }
		triangle { <1.98,8.08,17.0576>, <0.8336,8.08,17.2842>, <0,6.36,19.09> }
		triangle { <0.8336,8.08,17.2842>, <0,8.08,17.3938>, <0,6.36,19.09> }
// 
		triangle { <0,9.54,-13.8>, <2.3,9.54,-13.8>, <1.96,10.78,-14.31> }
		triangle { <1.96,10.78,-14.31>, <0,10.78,-14.31>, <0,9.54,-13.8> }
		triangle { <0,8.17,-13.49>, <2.68,8.17,-13.49>, <2.3,9.54,-13.8> }
		triangle { <2.3,9.54,-13.8>, <0,9.54,-13.8>, <0,8.17,-13.49> }
		triangle { <0,5.31,-13.75>, <2.68,8.17,-13.49>, <0,8.17,-13.49> }
		triangle { <0,2.77,16.83>, <0,2.77,16.37>, <3.5,2.77,16.37> }
		triangle { <0,3.03,-16.4>, <3.5,3.03,-16.4>, <3.5,-0.55,-15.67> }
		triangle { <3.5,-0.55,-15.67>, <0,-0.55,-15.67>, <0,3.03,-16.4> }
		triangle { <0,-0.55,-15.67>, <3.5,-0.55,-15.67>, <3.5,-3.95,-14.14> }
		triangle { <3.5,-3.95,-14.14>, <0,-3.95,-14.14>, <0,-0.55,-15.67> }
		triangle { <0,-3.95,-14.14>, <3.5,-3.95,-14.14>, <3.5,-6.38,-12.15> }
		triangle { <3.5,-6.38,-12.15>, <0,-6.38,-12.15>, <0,-3.95,-14.14> }
		triangle { <0,-6.38,-12.15>, <3.5,-6.38,-12.15>, <3.5,-7.87,-10.2> }
		triangle { <3.5,-7.87,-10.2>, <0,-7.87,-10.2>, <0,-6.38,-12.15> }
		triangle { <0,-7.66,10.2>, <3.5,-7.66,10.2>, <3.5,-6.44,12.09> }
		triangle { <3.5,-6.44,12.09>, <0,-6.44,12.09>, <0,-7.66,10.2> }
		triangle { <0,-6.44,12.09>, <3.5,-6.44,12.09>, <3.5,-3.95,14.14> }
		triangle { <3.5,-3.95,14.14>, <0,-3.95,14.14>, <0,-6.44,12.09> }
		triangle { <0,-0.55,15.67>, <3.5,-0.55,15.67>, <3.5,2.77,16.37> }
		triangle { <3.5,2.77,16.37>, <0,2.77,16.37>, <0,-0.55,15.67> }
		triangle { <0,-3.95,14.14>, <3.5,-3.95,14.14>, <3.5,-0.55,15.67> }
		triangle { <3.5,-0.55,15.67>, <0,-0.55,15.67>, <0,-3.95,14.14> }
		triangle { <0,-9.42,6.68>, <3.5,-9.42,6.68>, <3.5,-7.66,10.2> }
		triangle { <3.5,-7.66,10.2>, <0,-7.66,10.2>, <0,-9.42,6.68> }
		triangle { <0,-9.82,5.05>, <3.5,-9.82,5.05>, <3.5,-9.42,6.68> }
		triangle { <3.5,-9.42,6.68>, <0,-9.42,6.68>, <0,-9.82,5.05> }
		triangle { <0,-9.42,-6.68>, <3.5,-9.42,-6.68>, <3.5,-9.82,-5.05> }
		triangle { <3.5,-9.82,-5.05>, <0,-9.82,-5.05>, <0,-9.42,-6.68> }
		triangle { <0,-7.87,-10.2>, <3.5,-7.87,-10.2>, <3.5,-9.42,-6.68> }
		triangle { <3.5,-9.42,-6.68>, <0,-9.42,-6.68>, <0,-7.87,-10.2> }
		triangle { <0,5.95,-16.57>, <3.5,3.03,-16.4>, <0,3.03,-16.4> }
		triangle { <0,-10.21,0>, <3.5,-10.21,0>, <3.5,-9.82,5.05> }
		triangle { <3.5,-9.82,5.05>, <0,-9.82,5.05>, <0,-10.21,0> }
		triangle { <0,-9.82,-5.05>, <3.5,-9.82,-5.05>, <3.5,-10.21,0> }
		triangle { <3.5,-10.21,0>, <0,-10.21,0>, <0,-9.82,-5.05> }
		triangle { <0,-10.5,8.96>, <2.06,-7.66,10.2>, <0,-7.66,10.2> }
		triangle { <0,-10.5,8.96>, <0,-9.82,5.05>, <0.78,-9.82,5.05> }
		triangle { <0,-2.96,16.62>, <0,-3.95,14.14>, <1.89,-3.95,14.14> }
		triangle { <0,-2.96,16.62>, <1.83,-0.55,15.67>, <0,-0.55,15.67> }
		triangle { <0,-10.5,-8.96>, <0,-7.87,-10.2>, <2.06,-7.87,-10.2> }
		triangle { <0,-10.5,-8.96>, <0.78,-9.82,-5.05>, <0,-9.82,-5.06> }
		triangle { <0,-2.96,-16.62>, <0,-0.55,-15.67>, <1.83,-0.55,-15.67> }
		triangle { <0,-2.96,-16.62>, <1.89,-3.95,-14.14>, <0,-3.95,-14.14> }
		triangle { <10.72,5.85,-9.51>, <10.32,5.92,-9.09>, <10.61,9.54,-9.24> }
		triangle { <10.72,5.85,-9.51>, <10.61,9.54,-9.24>, <10.9,10.64,-9.4> }
		triangle { <12.49,9.54,-6.31>, <10.9,10.64,-9.4>, <10.61,9.54,-9.24> }
		triangle { <12.49,9.54,-6.31>, <10.61,9.54,-9.24>, <10.32,5.92,-9.09> }
		triangle { <8.65,-1.09,-12.2>, <8.64,-1.08,-15.6>, <9.39,-1.08,-15.03> }
		triangle { <9.39,-1.08,-15.03>, <9.41,-1.07,-11.64>, <8.65,-1.09,-12.2> }
		triangle { <9.95,-0.77,-14.54>, <11.9,1.08,-12.48>, <11.98,1.16,-9.97> }
		triangle { <11.98,1.16,-9.97>, <9.95,-0.77,-11.31>, <9.95,-0.77,-14.54> }
		triangle { <11.9,1.08,-12.48>, <13.74,2.77,-7.94>, <11.98,1.16,-9.97> }
		triangle { <13.67,2.77,-9.81>, <13.74,2.77,-7.94>, <11.9,1.08,-12.48> }
// stud adapter
		triangle { <0,-2.8,-10.69>, <0,-4,-8>, <3.0616,-4,-7.3912> }
		triangle { <0,-2.8,-10.69>, <3.0616,-4,-7.3912>, <5.78,-2.8,-8.99> }
		triangle { <5.78,-2.8,-8.99>, <3.0616,-4,-7.3912>, <5.6568,-4,-5.6568> }
		triangle { <5.78,-2.8,-8.99>, <5.6568,-4,-5.6568>, <9.72,-2.8,-4.44> }
		triangle { <9.72,-2.8,-4.44>, <5.6568,-4,-5.6568>, <7.3912,-4,-3.0616> }
		triangle { <9.72,-2.8,-4.44>, <7.3912,-4,-3.0616>, <10.37,-2.8,0.03> }
		triangle { <10.37,-2.8,0.03>, <7.3912,-4,-3.0616>, <8,-4,0> }
		triangle { <10.37,-2.8,0.03>, <8,-4,0>, <7.3912,-4,3.0616> }
		triangle { <10.37,-2.8,0.03>, <7.3912,-4,3.0616>, <9.72,-2.8,4.44> }
		triangle { <9.72,-2.8,4.44>, <7.3912,-4,3.0616>, <5.6568,-4,5.6568> }
		triangle { <9.72,-2.8,4.44>, <5.6568,-4,5.6568>, <6.93,-2.8,8> }
		triangle { <6.93,-2.8,8>, <5.6568,-4,5.6568>, <3.0616,-4,7.3912> }
		triangle { <6.93,-2.8,8>, <3.0616,-4,7.3912>, <3.99,-2.8,9.69> }
		triangle { <3.99,-2.8,9.69>, <3.0616,-4,7.3912>, <0,-4,8> }
		triangle { <3.99,-2.8,9.69>, <0,-4,8>, <0,-2.8,10.69> }
// 
// new edge lines
// Added lines/Condlines
	}
}
#end
#end // ifndef (s_slash_60748s01_dot_dat)


//// Primitive stud4.dat
#ifndef (stud4_dot_dat)
#declare stud4_dot_dat = difference {
	cylinder { <0,0,0>, <0,-4,0>, 8 }
	cylinder { <0,1,0>, <0,-5,0>, 6 }
}
#end // ifndef (stud4_dot_dat)


//// Primitive 4-4disc.dat
#ifndef (_4_dash_4disc_dot_dat)
#declare _4_dash_4disc_dot_dat = disc { <0,0,0>, <0,1,0>, 1 }
#end // ifndef (_4_dash_4disc_dot_dat)


//// Part 60748.dat
#ifndef (_60748_dot_dat)
#declare _60748_dot_dat = #if (L3Quality = 0) box { <-20.27,-10.5,-17.86>, <20.27,18.08,20.27> } #else union {
// Minifig Helmet Cap
// Name: 60748.dat
// Author: Andy Westrate [westrate]
// !LDRAW_ORG Part UPDATE 2012-02
// !LICENSE Redistributable under CCAL version 2.0 : see CAreadme.txt
// BFC CERTIFY CCW
// !CATEGORY Minifig Headwear
// !KEYWORDS helm, dwarves, Castle
// !HISTORY 2009-10-13 {LEGO Universe Team} Original part shape
// !HISTORY 2010-10-02 [westrate] File preparation for LDraw Parts Tracker
// !HISTORY 2012-04-08 [MagFors] Improved inside design
// !HISTORY 2012-08-09 [PTadmin] Official Update 2012-02
	object { s_slash_60748s01_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,0,0> }
	object { s_slash_60748s01_dot_dat matrix <-1,0,0,0,1,0,0,0,1,0,0,0> }
	#if (L3Studs)
		object { stud4_dot_dat matrix <1,0,0,0,-1,0,0,0,1,0,-4,0> }
	#end
	object { _4_dash_4disc_dot_dat matrix <6,0,0,0,-1,0,0,0,-6,0,-4,0> }
}
#end
#end // ifndef (_60748_dot_dat)


//// Model helmet_008_smallspikes.ldr
#ifndef (helmet__008__smallspikes_dot_ldr)
#declare helmet__008__smallspikes_dot_ldr = object {
// Untitled
// Name: helmet_008_smallspikes.ldr
// Author: MLCad
// Unofficial Model
// ROTATION CENTER 0 0 0 1 "Custom"
// ROTATION CONFIG 0 0
	// 1 22  0 -4 0  1 0 0  0 1 0  0 0 1 60748.dat
	object {
		_60748_dot_dat
		matrix <1-L3SW/40.54,0,0,0,1-L3SW/28.58,0,0,0,1-L3SW/38.13,0,L3SW/7.5409,L3SW/31.6432>
		matrix <1,0,0,0,1,0,0,0,1,0,-4,0>
		material { L3Color22 }
	}
}
#end // ifndef (helmet__008__smallspikes_dot_ldr)


//// ModelData
#declare L3ModelBBoxMin = <-20.27,-14.5,-17.86>;
#declare L3ModelBBoxMax = <20.27,14.08,20.27>;
#declare L3ModelBBoxCenter = (L3ModelBBoxMin+L3ModelBBoxMax)/2; // <0,-0.21,1.205>
#declare L3ModelBBoxSize = L3ModelBBoxMax-L3ModelBBoxMin; // <40.54,28.58,38.13>
#declare L3FloorY = L3ModelBBoxMax.y;

//// ModelObject helmet_008_smallspikes.ldr
object { helmet__008__smallspikes_dot_ldr }



//// Statistics
//               PARTS             P         Total
// DAT files:        3             2             6
// POV Equivs:       -             2 (100%)
// Model has 2 parts (1 studs)

//// IncludeFile AtEnd
#include "armor_camera.inc"

//// End
