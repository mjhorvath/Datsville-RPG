#version 3.7

/*******************************************************************************/
/*                                                                             */
/* LGEO Libray Include File     (C) lgeo@digitalbricks.org (Lutz Uhlmann)      */
/*                                                                             */
/* 19970623 Lutz Uhlmann                                                       */
/* 20070929 Lutz Uhlmann changed to use predefined finishes                    */
/* 20070929 Lutz Uhlmann changed to use RGB values from ldconfig.ldr           */
/* 20071124 Lutz Uhlmann added lg_quality for L3P compatibility                */
/*                                                                             */
/* This file is in no way related to the LEGO(tm) Group.                       */
/* It is provided for private non-commercial use only.                         */
/*                                                                             */
/* lg_color: Color Definitions for LGEO POV-Ray Library                        */
/*                                                                             */ 
/*******************************************************************************/
#ifndef(lg_quality)
 #declare lg_quality = 2
#end
#ifdef(LG_COLOR_INC)
#else
#declare LG_COLOR_INC = 1;
#include "colors.inc"

#declare lg_solid_finish =
 finish {
  ambient 0.1
  #if (lg_quality > 1)
   phong 0.2
   phong_size 20
  #end
 }

#declare lg_chrome_finish =
 finish {
  ambient 0.25
  #if (lg_quality > 1)
   brilliance 5
   diffuse 0.6
   metallic
   specular 0.70
   roughness 1/100
   reflection 0.6
  #end
 }

#declare lg_pearl_finish =
 finish {
  ambient 0.22
  #if (lg_quality > 1)
   brilliance 2
   diffuse 0.6
   metallic
   specular 0.1
   roughness 32/100
   reflection 0.07
   irid { 0.2 thickness 0.5 turbulence 2.5}
  #end
 }

#declare lg_transparent_finish =
 finish {
  ambient 0.3
  #if (lg_quality > 1)
   diffuse 0.2
   reflection 0.25
   phong 0.3
   phong_size 60
  #end
 }

#declare lg_ior =
 interior {
  ior 1.4
 }


// 0
#declare lg_black = texture {
 pigment { color srgb <33/255, 33/255, 33/255> }
 finish { lg_solid_finish }
}

// 1
#declare lg_blue = texture {
 pigment { color srgb <0/255, 51/255, 178/255> }
 finish { lg_solid_finish }
}

// 2
#declare lg_green = texture {
 pigment { color srgb <0/255, 140/255, 20/255> }
 finish { lg_solid_finish }
}

// 3
#declare lg_teal = texture {
 pigment { color srgb <0/255, 153/255, 159/255> }
 finish { lg_solid_finish }
}
#declare lg_cyan = lg_teal

// 4
#declare lg_red = texture {
 pigment { color srgb <196/255, 0/255, 38/255> }
 finish { lg_solid_finish }
}

// 5
#declare lg_dark_pink = texture {
 pigment { color srgb <223/255, 102/255, 149/255> }
 finish { lg_solid_finish }
}

// 6
#declare lg_brown = texture {
 pigment { color srgb <92/255, 32/255, 0/255> }
 finish { lg_solid_finish }
}

// 7
#declare lg_grey = texture {
 pigment { color srgb <193/255, 194/255, 193/255> }
 finish { lg_solid_finish }
}

// 8
#declare lg_dark_grey = texture {
 pigment { color srgb <99/255, 89/255, 82/255> }
 finish { lg_solid_finish }
}

// 9
#declare lg_light_blue = texture {
 pigment { color srgb <107/255, 172/255, 220/255> }
 finish { lg_solid_finish }
}

// 10
#declare lg_bright_green = texture {
 pigment { color srgb <97/255, 238/255, 104/255> }
 finish { lg_solid_finish }
}

// 11
#declare lg_turquoise = texture {
 pigment { color srgb <51/255, 166/255, 167/255> }
 finish { lg_solid_finish }
}
#declare lg_blue_green = lg_turquoise

// 12
#declare lg_salmon = texture {
 pigment { color srgb <255/255, 133/255, 122/255> }
 finish { lg_solid_finish }
}
#declare lg_light_red = lg_salmon

// 13
#declare lg_pink = texture {
 pigment { color srgb <249/255, 163/255, 198/255> }
 finish { lg_solid_finish }
}
#declare lg_rose = lg_pink

// 14
#declare lg_yellow = texture {
 pigment { color srgb <255/255, 220/255, 0/255> }
 finish { lg_solid_finish }
}

// 15
#declare lg_white = texture {
 pigment { color srgb <255/255, 255/255, 255/255> }
 finish { lg_solid_finish }
}

// 17
#declare lg_light_green = texture {
 pigment { color srgb <186/255, 255/255, 206/255> }
 finish { lg_solid_finish }
}

// 18
#declare lg_light_yellow = texture {
 pigment { color srgb <253/255, 232/255, 150/255> }
 finish { lg_solid_finish }
}

// 19
#declare lg_tan = texture {
 pigment { color srgb <232/255, 207/255, 161/255> }
 finish { lg_solid_finish }
}

// 20
#declare lg_light_violet = texture {
 pigment { color srgb <215/255, 196/255, 230/255> }
 finish { lg_solid_finish }
}

// 22
#declare lg_purple = texture {
 pigment { color srgb <129/255, 0/255, 124/255> }
 finish { lg_solid_finish }
}
#declare lg_violet = lg_purple

// 23
#declare lg_violet_blue = texture {
 pigment { color srgb <71/255, 50/255, 176/255> }
 finish { lg_solid_finish }
}

// 25
#declare lg_orange = texture {
 pigment { color srgb <249/255, 96/255, 0/255> }
 finish { lg_solid_finish }
}

// 26
#declare lg_magenta = texture {
 pigment { color srgb <232/255, 27/255, 109/255> }
 finish { lg_solid_finish }
}

// 27
#declare lg_lime = texture {
 pigment { color srgb <231/255, 240/255, 0/255> }
 finish { lg_solid_finish }
}

// 27
#declare lg_dark_tan = texture {
 pigment { color srgb <187/255, 141/255, 75/255> }
 finish { lg_solid_finish }
}

// 29
#declare lg_light_purple = texture {
 pigment { color srgb <205/255, 173/255, 200/255> }
 finish { lg_solid_finish }
}

// 33
#declare lg_clear_blue = texture {
 pigment { color srgb <0/255, 32/255, 160/255>
  #if (lg_quality > 1)
   filter 0.9
  #end
 }
 finish { lg_transparent_finish }
}

// 34
#declare lg_clear_green = texture {
 pigment { color srgb <6/255, 98/255, 50/255>
  #if (lg_quality > 1)
   filter 0.9
  #end
 }
 finish { lg_transparent_finish }
}

// 36
#declare lg_clear_red = texture {
 pigment { color srgb <196/255, 0/255, 38/255>
  #if (lg_quality > 1)
   filter 0.9
  #end
 }
 finish { lg_transparent_finish }
}

// 37
#declare lg_clear_violet = texture {
 pigment { color srgb <100/255, 0/255, 97/255>
  #if (lg_quality > 1)
   filter 0.9
  #end
 }
 finish { lg_transparent_finish }
}

// 40
#declare lg_clear_brown = texture {
 pigment { color srgb <99/255, 89/255, 82/255>
  #if (lg_quality > 1)
   filter 0.9
  #end
 }
 finish { lg_transparent_finish }
}

// 41
#declare lg_clear_cyan = texture {
 pigment { color srgb <174/255, 239/255, 237/255>
  #if (lg_quality > 1)
   filter 0.9
  #end
 }
 finish { lg_transparent_finish }
}

// 42
#declare lg_clear_neon_yellow = texture {
 pigment { color srgb <192/255, 255/255, 0/255>
  #if (lg_quality > 1)
   filter 0.85
  #end
 }
 finish { lg_transparent_finish }
}

// 45
#declare lg_clear_pink = texture {
 pigment { color srgb <223/255, 102/255, 149/255>
  #if (lg_quality > 1)
   filter 0.9
  #end
 }
 finish { lg_transparent_finish }
}

// 46
#declare lg_clear_yellow = texture {
 pigment { color srgb <202/255, 176/255, 0/255>
  #if (lg_quality > 1)
   filter 0.9
  #end
 }
 finish { lg_transparent_finish }
}

// 47
#declare lg_clear = texture {
 pigment { color srgb <255/255, 255/255, 255/255>
  #if (lg_quality > 1)
   filter 0.9
  #end
 }
 finish { lg_transparent_finish }
}

// 57
#declare lg_clear_neon_orange = texture {
 pigment { color srgb <249/255, 96/255, 0/255>
  #if (lg_quality > 1)
   filter 0.8
  #end
 }
 finish { lg_transparent_finish }
}

// 69
#declare lg_bright_purple = texture {
 pigment { color srgb <205/255, 98/255, 152/255> }
 finish { lg_solid_finish }
}

// 70
#declare lg_reddish_brown = texture {
 pigment { color srgb <105/255, 64/255, 39/255> }
 finish { lg_solid_finish }
}

// 71
#declare lg_bluish_grey = texture {
 pigment { color srgb <163/255, 162/255, 164/255> }
 finish { lg_solid_finish }
}

// 72
#declare lg_dark_bluish_grey = texture {
 pigment { color srgb <99/255, 95/255, 97/255> }
 finish { lg_solid_finish }
}

// 73
#declare lg_medium_blue = texture {
 pigment { color srgb <110/255, 153/255, 201/255> }
 finish { lg_solid_finish }
}

// 74
#declare lg_medium_green = texture {
 pigment { color srgb <161/255, 196/255, 139/255> }
 finish { lg_solid_finish }
}

// 77
#declare lg_paradisa_pink = texture {
 pigment { color srgb <254/255, 204/255, 204/255> }
 finish { lg_solid_finish }
}

// 78
#declare lg_light_flesh = texture {
 pigment { color srgb <250/255, 215/255, 195/255> }
 finish { lg_solid_finish }
}

// 85
#declare lg_medium_violet = texture {
 pigment { color srgb <52/255, 43/255, 117/255> }
 finish { lg_solid_finish }
}

// 86
#declare lg_dark_flesh = texture {
 pigment { color srgb <124/255, 92/255, 69/255> }
 finish { lg_solid_finish }
}

// 89
#declare lg_royal_blue = texture {
 pigment { color srgb <155/255, 178/255, 239/255> }
 finish { lg_solid_finish }
}

// 92
#declare lg_flesh = texture {
 pigment { color srgb <204/255, 142/255, 104/255> }
 finish { lg_solid_finish }
}

// 134
#declare lg_pearl_copper = texture {
 pigment { color srgb <147/255, 135/255, 103/255> }
 finish { lg_pearl_finish }
}

// 135
#declare lg_pearl_grey = texture {
 pigment { color srgb <171/255, 173/255, 172/255> }
 finish { lg_pearl_finish }
}

// 137
#declare lg_pearl_blue = texture {
 pigment { color srgb <106/255, 122/255, 150/255> }
 finish { lg_pearl_finish }
}

// 142
#declare lg_pearl_gold = texture {
 pigment { color srgb <215/255, 169/255, 75/255> }
 finish { lg_pearl_finish }
}

// 151
#declare lg_very_light_bluish_grey = texture {
 pigment { color srgb <229/255, 228/255, 222/255> }
 finish { lg_solid_finish }
}

// 272
#declare lg_dark_blue = texture {
 pigment { color srgb <0/255, 29/255, 104/255> }
 finish { lg_solid_finish }
}

// 288
#declare lg_dark_green = texture {
 pigment { color srgb <39/255, 70/255, 44/255> }
 finish { lg_solid_finish }
}

// 320
#declare lg_dark_red = texture {
 pigment { color srgb <120/255, 0/255, 28/255> }
 finish { lg_solid_finish }
}

// 313
#declare lg_maersk_blue = texture {
 pigment { color srgb <53/255, 162/255, 189/255> }
 finish { lg_solid_finish }
}

// 334
#declare lg_gold_chrome = texture {
 pigment { color srgb <233/255, 110/255, 19/255> }
 finish { lg_chrome_finish }
}

// 373
#declare lg_sand_purple = texture {
 pigment { color srgb <132/255, 94/255, 132/255> }
 finish { lg_solid_finish }
}

// 335
#declare lg_sand_red = texture {
 pigment { color srgb <191/255, 135/255, 130/255> }
 finish { lg_solid_finish }
}

// 366
#declare lg_earth_orange = texture {
 pigment { color srgb <209/255, 131/255, 4/255> }
 finish { lg_solid_finish }
}

// 373
#declare lg_sand_purple = texture {
 pigment { color srgb <132/255, 94/255, 132/255> }
 finish { lg_solid_finish }
}

// 378
#declare lg_sand_green = texture {
 pigment { color srgb <160/255, 188/255, 172/255> }
 finish { lg_solid_finish }
}

// 379
#declare lg_sand_blue = texture {
 pigment { color srgb <106/255, 122/255, 150/255> }
 finish { lg_solid_finish }
}

// 383
#declare lg_chrome = texture {
 pigment { color srgb <232/255, 232/255, 232/255> }
 finish { lg_chrome_finish }
}

// 462
#declare lg_light_orange = texture {
 pigment { color srgb <254/255, 159/255, 6/255> }
 finish { lg_solid_finish }
}

// 484
#declare lg_dark_orange = texture {
 pigment { color srgb <179/255, 62/255, 0/255> }
 finish { lg_solid_finish }
}

// 503
#declare lg_very_light_grey = texture {
 pigment { color srgb <230/255, 227/255, 219/255> }
 finish { lg_solid_finish }
}

// 999
#declare lg_undefined = texture {
 pigment { color srgb <0.5, 0.7, 0.9> }
}

// 998 (no code known)
#declare lg_medium_orange = texture {
 pigment { color srgb <224/255, 129/255, 6/255> }
 finish { lg_solid_finish }
}

#end

















// MISSING COLORS //



// BASED ON LUGNET
#declare lg_transparent_neon_finish =
  finish {
    ambient 0.05 #if (version >= 3.7) emission 0.05 #end
    #if (lg_quality > 1)
      diffuse 2
      brilliance 1
      reflection { 0.01 falloff 1 exponent 1 }
      phong 1
      phong_size 40
    #end
    conserve_energy
  }

#declare lg_metallic_finish =
  finish {
    ambient 0
    #if (lg_quality > 1)
      brilliance 1
      diffuse 1
      phong 1
      phong_size 10
      metallic 0.5
      reflection { 0.1 metallic 0.25 falloff 1 exponent 1 }
      roughness 0.1
      specular 1
    #end
    conserve_energy
  }

#declare lg_pearl_normal =
  normal {
    bumps 0.05
    scale 0.01
    turbulence 0
  }

#declare lg_rubber_finish = 
  finish {
    ambient 0
    diffuse 1
    phong 0.5
    phong_size 20
    reflection 0
    conserve_energy
  }

#declare lg_rubber_normal =
  normal {
    bumps 0.1
    scale 0.1
    turbulence 0
  }

#declare lg_chrome_normal =
  normal {
    bumps 0.05
    scale 50
    turbulence 0
  }

// 32 TRANSPARENT BLACK IR LENS / 109 BLACK IR
#declare lg_black_ir = texture {
  pigment { color srgb <0,20,20>/255
    #if (lg_quality > 1)
      filter 0.14
    #end
  }
  finish  { lg_transparent_finish }
}


// 35 TRANSPARENT BRIGHT GREEN / 311 TRANSPARENT BRIGHT GREEN [LDRAW]
// LDRAW                     <217/255, 228/255, 167/255>
#declare lg_clear_bright_green = texture {
  pigment { color srgb <217/255, 228/255, 167/255>
    #if (lg_quality > 1)
      filter TransFilter
      transmit TransTransmit
    #end
  }
  finish  { lg_transparent_finish }
}

// 42 TRANS-NEON GREEN / 49 TRANSPARENT FLUORESCENT GREEN [LUGNET]
// LUGNET                    <198,255,0>
// PEERON                    <248,241,132>
#declare lg_clear_neon_green = texture {
  pigment { color srgb <198/255, 255/255, 0/255>
    #if (lg_quality > 1)
      filter NeonFilter
      transmit NeonTransmit
    #end
  }
  finish  { lg_transparent_neon_finish }
}

// 43 TRANSPARENT VERY LIGHT BLUE [LDRAW]
#declare lg_clear_light_blue = texture {
  pigment { color srgb <193,223,240>/255
    #if (lg_quality > 1)
      filter TransFilter
      transmit TransTransmit
    #end
  }
  finish  { lg_transparent_finish }
}

// 44 TRANSPARENT LIGHT PURPLE [LDRAW]
// LDRAW                     <150/255, 112/255, 159/255>
#declare lg_clear_light_purple = texture {
  pigment { color srgb <150/255, 112/255, 159/255>
    #if (lg_quality > 1)
      filter TransFilter
      transmit TransTransmit
    #end
  }
  finish  { lg_transparent_finish }
}

// 57 TRANSPARENT ORANGE / 182 TRANSPARENT BRIGHT ORANGE [LDRAW]
// LDRAW                     <240,143,28>
// LEGO DIGITAL DESIGNER     <226,176,96>
// LEGO COLOUR PALETTE 2011  <236,118,14>
#declare lg_clear_orange = texture {
  pigment { color srgb <226,176,96>/255
    #if (lg_quality > 1)
      filter TransFilter
      transmit TransTransmit
    #end
  }
  finish  { lg_transparent_finish }
}

// 80 METALLIC SILVER [LEGO DIGITAL DESIGNER]
// LDRAW                     <165,169,180>/255
// LEGO COLOUR PALETTE 2011  <141,148,150>/255
// LEGO DIGITAL DESIGNER     <140,140,140>/255
#declare lg_metallic_silver = texture {
  pigment { color srgb <140,140,140>/255 }
  finish  { lg_metallic_finish }
  normal  { lg_pearl_normal }
}

// 256 RUBBER BLACK [LDRAW]
#declare lg_rubber_black = texture {
  pigment { color srgb <33/255, 33/255, 33/255> }
  finish  { lg_rubber_finish }
  normal  { lg_rubber_normal }
}

// 334 CHROME GOLD [LDRAW]
#declare lg_chrome_gold = texture {
  pigment { color srgb <187,165,61>/255 }
  finish  { lg_chrome_finish }
  normal  { lg_chrome_normal }
}

// 494 ELECTRIC CONTACT ALLOY [LDRAW]
#declare lg_electric_contact_alloy = texture {
  pigment { color srgb <208,208,208>/255 }
  finish  { lg_metallic_finish }
}
