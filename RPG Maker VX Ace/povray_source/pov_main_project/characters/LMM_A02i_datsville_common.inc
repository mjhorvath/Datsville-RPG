#declare _animated_minifig = union {   //Creates an single object with the minifigs parts


//Skeletons
#ifdef (_6260_dot_dat)
#ifndef(M_Flesh_Color) #declare M_Flesh_Color=MWHite #end   
//left leg
object {_6266_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,0,0>rotate<L_Amplitude*sin( clock*2*pi),0, 0,> translate<10,44,0>material{ M_Flesh_Color }}
//right leg
object {_6266_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,0,0>rotate<-L_Amplitude*sin( clock*2*pi),0, 0,> translate<-10,44,0>material{ M_Flesh_Color }}
object {_6260_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,0,0> material{ M_Flesh_Color }}
//Torso
object {_6260_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,0,0> material{ M_Flesh_Color }}
//right arm
object {_6265_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,0,0>
rotate<(A_Amplitude*sin( clock*2*pi))+80,0,9.792>translate<-21,8,0>
material{ M_Flesh_Color  }}                                                                  
//left arm
object {_6265_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,0,0>
rotate<(-A_Amplitude*sin( clock*2*pi))+80,0,-9.792>translate<21,8,0>
material{ M_Flesh_Color  }}


//Non-Skeletons
#else
//hips
object {_3815_dot_dat matrix <1-SW/36,0,0,0,1-SW/32,0,0,0,1-SW/20,0,SW/6.4,0>
matrix <1,0,0,0,1,0,0,0,1,0,32,0> material{ M_Hips_Color }}
//right arm
object {_3818_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,0,0>
rotate<-A_Amplitude*sin( clock*2*pi)+30,0, 9.792>translate<-15.552,9,0>
material{ M_R_Arm_Color }}                                                                  
//left arm
object {_3819_dot_dat matrix <1,0,0,0,1,0,0,0,1,0,0,0>
rotate<A_Amplitude*sin( clock*2*pi)+30,0,-9.792>translate<15.552,9,0>
material{ M_L_Arm_Color }}
//right hand
object {_3820_dot_dat matrix <1,0,0,0,.707,.707,0,-.707,.707,-5.198,18.753,-10.321>
rotate<-A_Amplitude*sin( clock*2*pi)+30,0, 9.792>translate<-15.552,9,0>
material{ M_R_Hand_Color } }
//left hand
object {_3820_dot_dat matrix <1,0,0,0,.707,.707,0,-.707,.707,5.198,18.753,-10.321>
rotate<A_Amplitude*sin( clock*2*pi)+30,0, -9.792>translate<15.552,9,0>
material{ M_L_Hand_Color }  }

#end



//HEADS
//The code below identifies the head part used by the minifig and alters it according to the animation parameters

#ifdef (_3626a_dot_dat) #declare LMM_head = _3626a_dot_dat;  #end
#ifdef (_3626ap01_dot_dat) #declare LMM_head = _3626ap01_dot_dat;  #end
#ifdef (_3626bp01_dot_dat) #declare LMM_head = _3626bp01_dot_dat;  #end
#ifdef (_3626bpa2_dot_dat) #declare LMM_head = _3626bpa2_dot_dat;  #end
#ifdef (_3626bp7b_dot_dat) #declare LMM_head = _3626bp7b_dot_dat;  #end
#ifdef (_3626bp7a_dot_dat) #declare LMM_head = _3626bp7a_dot_dat;  #end
#ifdef (_3626bpa6_dot_dat) #declare LMM_head = _3626bpa6_dot_dat;  #end
#ifdef (_3626bp39_dot_dat) #declare LMM_head = _3626bp39_dot_dat;  #end
#ifdef (_3626bpa1_dot_dat) #declare LMM_head = _3626bpa1_dot_dat;  #end
#ifdef (_3626bp69_dot_dat) #declare LMM_head = _3626bp69_dot_dat;  #end
#ifdef (_3626bp65_dot_dat) #declare LMM_head = _3626bp65_dot_dat;  #end
#ifdef (_3626bp62_dot_dat) #declare LMM_head = _3626bp62_dot_dat;  #end
#ifdef (_3626bp61_dot_dat) #declare LMM_head = _3626bp61_dot_dat;  #end
#ifdef (_3626bp3k_dot_dat) #declare LMM_head = _3626bp3k_dot_dat;  #end
#ifdef (_3626bp3j_dot_dat) #declare LMM_head = _3626bp3j_dot_dat;  #end
#ifdef (_3626bp31_dot_dat) #declare LMM_head = _3626bp31_dot_dat;  #end
#ifdef (_3626bp30_dot_dat) #declare LMM_head = _3626bp30_dot_dat;  #end
#ifdef (_3626bp40_dot_dat) #declare LMM_head = _3626bp40_dot_dat;  #end
#ifdef (_3626bp34_dot_dat) #declare LMM_head = _3626bp34_dot_dat;  #end
#ifdef (_3626bp33_dot_dat) #declare LMM_head = _3626bp33_dot_dat;  #end
#ifdef (_3626bp32_dot_dat) #declare LMM_head = _3626bp32_dot_dat;  #end
#ifdef (_3626bpa7_dot_dat) #declare LMM_head = _3626bpa7_dot_dat;  #end
#ifdef (_3626bp3n_dot_dat) #declare LMM_head = _3626bp3n_dot_dat;  #end
#ifdef (_3626bp3q_dot_dat) #declare LMM_head = _3626bp3q_dot_dat;  #end
#ifdef (_3626bp63_dot_dat) #declare LMM_head = _3626bp63_dot_dat;  #end
#ifdef (_3626bpa3_dot_dat) #declare LMM_head = _3626bpa3_dot_dat;  #end
#ifdef (_3626bp05_dot_dat) #declare LMM_head = _3626bp05_dot_dat;  #end
#ifdef (_3626bp03_dot_dat) #declare LMM_head = _3626bp03_dot_dat;  #end
#ifdef (_3626bp04_dot_dat) #declare LMM_head = _3626bp04_dot_dat;  #end
#ifdef (_3626bp06_dot_dat) #declare LMM_head = _3626bp06_dot_dat;  #end
#ifdef (_3626bp02_dot_dat) #declare LMM_head = _3626bp02_dot_dat;  #end
#ifdef (_3626bpa5_dot_dat) #declare LMM_head = _3626bpa5_dot_dat;  #end
#ifdef (_3626bpq2_dot_dat) #declare LMM_head = _3626bpq2_dot_dat;  #end
#ifdef (_3626bpsb_dot_dat) #declare LMM_head = _3626bpsb_dot_dat;  #end
#ifdef (_3626bps7_dot_dat) #declare LMM_head = _3626bps7_dot_dat;  #end
#ifdef (_3626bps9_dot_dat) #declare LMM_head = _3626bps9_dot_dat;  #end
#ifdef (_3626bps2_dot_dat) #declare LMM_head = _3626bps2_dot_dat;  #end
#ifdef (_3626bps8_dot_dat) #declare LMM_head = _3626bps8_dot_dat;  #end
#ifdef (_3626bps4_dot_dat) #declare LMM_head = _3626bps4_dot_dat;  #end
#ifdef (_3626bpsc_dot_dat) #declare LMM_head = _3626bpsc_dot_dat;  #end
#ifdef (_3626bpse_dot_dat) #declare LMM_head = _3626bpse_dot_dat;  #end
#ifdef (_3626bps3_dot_dat) #declare LMM_head = _3626bps3_dot_dat;  #end
#ifdef (_3626bps5_dot_dat) #declare LMM_head = _3626bps5_dot_dat;  #end
#ifdef (_3626bpst_dot_dat) #declare LMM_head = _3626bpst_dot_dat;  #end
#ifdef (_3626bpac_dot_dat) #declare LMM_head = _3626bpac_dot_dat;  #end
#ifdef (_3626bpa4_dot_dat) #declare LMM_head = _3626bpa4_dot_dat;  #end
#ifdef (_3626bpa9_dot_dat) #declare LMM_head = _3626bpa9_dot_dat;  #end
#ifdef (_30378_dot_dat) #declare LMM_head = _30378_dot_dat;  #end
#ifdef (_82359_dot_dat) #declare LMM_head = _82359_dot_dat;  #end
#ifdef (_3626b_dot_dat) #declare LMM_head = _3626b_dot_dat;  #end
#ifdef (_3626bp81_dot_dat) #declare LMM_head = _3626bp81_dot_dat;  #end
#ifdef (_3626bph2_dot_dat) #declare LMM_head = _3626bph2_dot_dat;  #end
#ifdef (_3626bp35_dot_dat) #declare LMM_head = _3626bp35_dot_dat;  #end
#ifdef (_3626bpao_dot_dat) #declare LMM_head = _3626bpao_dot_dat;  #end

#ifdef (LMM_head)
        object {LMM_head matrix <1,0,0,0,1,0,0,0,1,0,0,0> rotate<0,H_Amplitude,0> translate<0,-24,0> material{ M_Head_Color }}
#end



//HATS
//The code below identifies the hat part used by the minifig and alters it according to the animation parameters
#ifdef (character__005__hatcomplete_dot_ldr) #declare LMM_hat = character__005__hatcomplete_dot_ldr;  #end
#ifdef (character__006__hatcomplete_dot_ldr) #declare LMM_hat = character__006__hatcomplete_dot_ldr;  #end
#ifdef (_4485_dot_dat) #declare LMM_hat = _4485_dot_dat;  #end
#ifdef (_30171_dot_dat) #declare LMM_hat = _30171_dot_dat;  #end
#ifdef (_3896_dot_dat) #declare LMM_hat = _3896_dot_dat;  #end
#ifdef (_3844_dot_dat) #declare LMM_hat = _3844_dot_dat;  #end
#ifdef (_3833_dot_dat) #declare LMM_hat = _3833_dot_dat;  #end
#ifdef (_3834_dot_dat) #declare LMM_hat = _3834_dot_dat;  #end
#ifdef (_3901_dot_dat) #declare LMM_hat = _3901_dot_dat;  #end
#ifdef (_6093_dot_dat) #declare LMM_hat = _6093_dot_dat;  #end
#ifdef (_6093a_dot_dat) #declare LMM_hat = _6093a_dot_dat;  #end
#ifdef (_2528_dot_dat) #declare LMM_hat = _2528_dot_dat;  #end
#ifdef (_3629_dot_dat) #declare LMM_hat = _3629_dot_dat;  #end
#ifdef (_71015_dot_dat) #declare LMM_hat = _71015_dot_dat;  #end
#ifdef (_2545_dot_dat) #declare LMM_hat = _2545_dot_dat;  #end
#ifdef (_2544_dot_dat) #declare LMM_hat = _2544_dot_dat;  #end
#ifdef (_2544c01_dot_dat) #declare LMM_hat = _2544c01_dot_dat;  #end
#ifdef (_2446_dot_dat) #declare LMM_hat = _2446_dot_dat;  #end
#ifdef (_193_dot_dat) #declare LMM_hat = _193_dot_dat;  #end
#ifdef (_3624_dot_dat) #declare LMM_hat = _3624_dot_dat;  #end
#ifdef (_3878_dot_dat) #declare LMM_hat = _3878_dot_dat;  #end
#ifdef (_6131_dot_dat) #declare LMM_hat = _6131_dot_dat;  #end
#ifdef (_4530_dot_dat) #declare LMM_hat = _4530_dot_dat;  #end
#ifdef (_95674_dot_dat) #declare LMM_hat = _95674_dot_dat;  #end
#ifdef (_87995_dot_dat) #declare LMM_hat = _87995_dot_dat;  #end
#ifdef (_62810_dot_dat) #declare LMM_hat = _62810_dot_dat;  #end
#ifdef (_40251_dot_dat) #declare LMM_hat = _40251_dot_dat;  #end
#ifdef (_85974_dot_dat) #declare LMM_hat = _85974_dot_dat;  #end

#ifdef (LMM_hat)
        object {LMM_hat matrix <1,0,0,0,1,0,0,0,1,0,0,0> rotate<0,H_Amplitude,0> translate<0,-24,0> material{ M_Hat_Color }}
#end

//TORSOS
//The code below identifies the torso part used by the minifig and alters it according to the animation parameters
#ifdef (character__005__torsocomplete_dot_ldr) #declare LMM_torso = character__005__torsocomplete_dot_ldr;  #end
#ifdef (character__006__torsocomplete_dot_ldr) #declare LMM_torso = character__006__torsocomplete_dot_ldr;  #end
#ifdef (_973_dot_dat) #declare LMM_torso = _973_dot_dat;  #end
#ifdef (_973p11_dot_dat) #declare LMM_torso = _973p11_dot_dat;  #end
#ifdef (_973p23_dot_dat) #declare LMM_torso = _973p23_dot_dat;  #end
#ifdef (_973p14_dot_dat) #declare LMM_torso = _973p14_dot_dat;  #end
#ifdef (_973p29_dot_dat) #declare LMM_torso = _973p29_dot_dat;  #end
#ifdef (_973p16_dot_dat) #declare LMM_torso = _973p16_dot_dat;  #end
#ifdef (_973p09_dot_dat) #declare LMM_torso = _973p09_dot_dat;  #end
#ifdef (_973p7a_dot_dat) #declare LMM_torso = _973p7a_dot_dat;  #end
#ifdef (_973p7b_dot_dat) #declare LMM_torso = _973p7b_dot_dat;  #end
#ifdef (_973p27_dot_dat) #declare LMM_torso = _973p27_dot_dat;  #end
#ifdef (_973p1a_dot_dat) #declare LMM_torso = _973p1a_dot_dat;  #end
#ifdef (_973p43_dot_dat) #declare LMM_torso = _973p43_dot_dat;  #end
#ifdef (_973p6b_dot_dat) #declare LMM_torso = _973p6b_dot_dat;  #end
#ifdef (_973p52_dot_dat) #declare LMM_torso = _973p52_dot_dat;  #end
#ifdef (_973p51_dot_dat) #declare LMM_torso = _973p51_dot_dat;  #end
#ifdef (_973p4n_dot_dat) #declare LMM_torso = _973p4n_dot_dat;  #end
#ifdef (_973p1b_dot_dat) #declare LMM_torso = _973p1b_dot_dat;  #end
#ifdef (_973p6c_dot_dat) #declare LMM_torso = _973p6c_dot_dat;  #end
#ifdef (_973p1d_dot_dat) #declare LMM_torso = _973p1d_dot_dat;  #end
#ifdef (_973p3r_dot_dat) #declare LMM_torso = _973p3r_dot_dat;  #end
#ifdef (_973p3n_dot_dat) #declare LMM_torso = _973p3n_dot_dat;  #end
#ifdef (_973p70_dot_dat) #declare LMM_torso = _973p70_dot_dat;  #end
#ifdef (_973pa5_dot_dat) #declare LMM_torso = _973pa5_dot_dat;  #end
#ifdef (_973p3b_dot_dat) #declare LMM_torso = _973p3b_dot_dat;  #end
#ifdef (_973p40_dot_dat) #declare LMM_torso = _973p40_dot_dat;  #end
#ifdef (_973p41_dot_dat) #declare LMM_torso = _973p41_dot_dat;  #end
#ifdef (_973p42_dot_dat) #declare LMM_torso = _973p42_dot_dat;  #end
#ifdef (_973p4g_dot_dat) #declare LMM_torso = _973p4g_dot_dat;  #end
#ifdef (_973p47_dot_dat) #declare LMM_torso = _973p47_dot_dat;  #end
#ifdef (_973p2a_dot_dat) #declare LMM_torso = _973p2a_dot_dat;  #end
#ifdef (_973p90_dot_dat) #declare LMM_torso = _973p90_dot_dat;  #end
#ifdef (_973p4b_dot_dat) #declare LMM_torso = _973p4b_dot_dat;  #end
#ifdef (_973p8a_dot_dat) #declare LMM_torso = _973p8a_dot_dat;  #end
#ifdef (_973p38_dot_dat) #declare LMM_torso = _973p38_dot_dat;  #end
#ifdef (_973p21_dot_dat) #declare LMM_torso = _973p21_dot_dat;  #end
#ifdef (_973p46_dot_dat) #declare LMM_torso = _973p46_dot_dat;  #end
#ifdef (_973p50_dot_dat) #declare LMM_torso = _973p50_dot_dat;  #end
#ifdef (_973p49_dot_dat) #declare LMM_torso = _973p49_dot_dat;  #end
#ifdef (_973p48_dot_dat) #declare LMM_torso = _973p48_dot_dat;  #end
#ifdef (_973p4q_dot_dat) #declare LMM_torso = _973p4q_dot_dat;  #end
#ifdef (_973p61_dot_dat) #declare LMM_torso = _973p61_dot_dat;  #end
#ifdef (_973p72_dot_dat) #declare LMM_torso = _973p72_dot_dat;  #end
#ifdef (_973p1j_dot_dat) #declare LMM_torso = _973p1j_dot_dat;  #end
#ifdef (_973pa8_dot_dat) #declare LMM_torso = _973pa8_dot_dat;  #end
#ifdef (_973p28_dot_dat) #declare LMM_torso = _973p28_dot_dat;  #end
#ifdef (_973p4u_dot_dat) #declare LMM_torso = _973p4u_dot_dat;  #end
#ifdef (_973pac_dot_dat) #declare LMM_torso = _973pac_dot_dat;  #end
#ifdef (_973p68_dot_dat) #declare LMM_torso = _973p68_dot_dat;  #end
#ifdef (_973pn6_dot_dat) #declare LMM_torso = _973pn6_dot_dat;  #end
#ifdef (_973pn5_dot_dat) #declare LMM_torso = _973pn5_dot_dat;  #end
#ifdef (_973ps6_dot_dat) #declare LMM_torso = _973ps6_dot_dat;  #end
#ifdef (_973p34_dot_dat) #declare LMM_torso = _973p34_dot_dat;  #end
#ifdef (_973p26_dot_dat) #declare LMM_torso = _973p26_dot_dat;  #end
#ifdef (_973pa2_dot_dat) #declare LMM_torso = _973pa2_dot_dat;  #end
#ifdef (_973p36_dot_dat) #declare LMM_torso = _973p36_dot_dat;  #end
#ifdef (_973p3c_dot_dat) #declare LMM_torso = _973p3c_dot_dat;  #end
#ifdef (_973p39_dot_dat) #declare LMM_torso = _973p39_dot_dat;  #end
#ifdef (_973p30_dot_dat) #declare LMM_torso = _973p30_dot_dat;  #end
#ifdef (_973p3a_dot_dat) #declare LMM_torso = _973p3a_dot_dat;  #end
#ifdef (_973p32_dot_dat) #declare LMM_torso = _973p32_dot_dat;  #end
#ifdef (_973p33_dot_dat) #declare LMM_torso = _973p33_dot_dat;  #end
#ifdef (_973p31_dot_dat) #declare LMM_torso = _973p31_dot_dat;  #end
#ifdef (_973p25_dot_dat) #declare LMM_torso = _973p25_dot_dat;  #end
#ifdef (_973p24_dot_dat) #declare LMM_torso = _973p24_dot_dat;  #end
#ifdef (_973p1c_dot_dat) #declare LMM_torso = _973p1c_dot_dat;  #end
#ifdef (_973p6d_dot_dat) #declare LMM_torso = _973p6d_dot_dat;  #end
#ifdef (_973p1e_dot_dat) #declare LMM_torso = _973p1e_dot_dat;  #end
#ifdef (_973p3s_dot_dat) #declare LMM_torso = _973p3s_dot_dat;  #end
#ifdef (_973p3q_dot_dat) #declare LMM_torso = _973p3q_dot_dat;  #end
#ifdef (_973p71_dot_dat) #declare LMM_torso = _973p71_dot_dat;  #end
#ifdef (_973p22_dot_dat) #declare LMM_torso = _973p22_dot_dat;  #end
#ifdef (_973p17_dot_dat) #declare LMM_torso = _973p17_dot_dat;  #end
#ifdef (_973p4t_dot_dat) #declare LMM_torso = _973p4t_dot_dat;  #end
#ifdef (_973p8b_dot_dat) #declare LMM_torso = _973p8b_dot_dat;  #end
#ifdef (_973p12_dot_dat) #declare LMM_torso = _973p12_dot_dat;  #end
#ifdef (_973p63_dot_dat) #declare LMM_torso = _973p63_dot_dat;  #end
#ifdef (_973paj_dot_dat) #declare LMM_torso = _973paj_dot_dat;  #end
#ifdef (_973p4e_dot_dat) #declare LMM_torso = _973p4e_dot_dat;  #end
#ifdef (_973p4d_dot_dat) #declare LMM_torso = _973p4d_dot_dat;  #end
#ifdef (_973pa7_dot_dat) #declare LMM_torso = _973pa7_dot_dat;  #end
#ifdef (_973pa3_dot_dat) #declare LMM_torso = _973pa3_dot_dat;  #end
#ifdef (_973pa6_dot_dat) #declare LMM_torso = _973pa6_dot_dat;  #end
#ifdef (_973pn0_dot_dat) #declare LMM_torso = _973pn0_dot_dat;  #end
#ifdef (_973pn1_dot_dat) #declare LMM_torso = _973pn1_dot_dat;  #end
#ifdef (_973p60_dot_dat) #declare LMM_torso = _973p60_dot_dat;  #end
#ifdef (_973p62_dot_dat) #declare LMM_torso = _973p62_dot_dat;  #end
#ifdef (_973p69_dot_dat) #declare LMM_torso = _973p69_dot_dat;  #end
#ifdef (_973p66_dot_dat) #declare LMM_torso = _973p66_dot_dat;  #end
#ifdef (_973p13_dot_dat) #declare LMM_torso = _973p13_dot_dat;  #end
#ifdef (_973p2c_dot_dat) #declare LMM_torso = _973p2c_dot_dat;  #end
#ifdef (_973p45_dot_dat) #declare LMM_torso = _973p45_dot_dat;  #end
#ifdef (_973p18_dot_dat) #declare LMM_torso = _973p18_dot_dat;  #end
#ifdef (_973p83_dot_dat) #declare LMM_torso = _973p83_dot_dat;  #end
#ifdef (_973pa1_dot_dat) #declare LMM_torso = _973pa1_dot_dat;  #end
#ifdef (_973ps5_dot_dat) #declare LMM_torso = _973ps5_dot_dat;  #end
#ifdef (_973psb_dot_dat) #declare LMM_torso = _973psb_dot_dat;  #end
#ifdef (_973psm_dot_dat) #declare LMM_torso = _973psm_dot_dat;  #end
#ifdef (_973ps7_dot_dat) #declare LMM_torso = _973ps7_dot_dat;  #end
#ifdef (_973psq_dot_dat) #declare LMM_torso = _973psq_dot_dat;  #end
#ifdef (_973psn_dot_dat) #declare LMM_torso = _973psn_dot_dat;  #end
#ifdef (_973ps2_dot_dat) #declare LMM_torso = _973ps2_dot_dat;  #end
#ifdef (_973psc_dot_dat) #declare LMM_torso = _973psc_dot_dat;  #end
#ifdef (_973ps0_dot_dat) #declare LMM_torso = _973ps0_dot_dat;  #end
#ifdef (_973psa_dot_dat) #declare LMM_torso = _973psa_dot_dat;  #end
#ifdef (_973ps1_dot_dat) #declare LMM_torso = _973ps1_dot_dat;  #end
#ifdef (_973pse_dot_dat) #declare LMM_torso = _973pse_dot_dat;  #end
#ifdef (_973ps4_dot_dat) #declare LMM_torso = _973ps4_dot_dat;  #end
#ifdef (_973psk_dot_dat) #declare LMM_torso = _973psk_dot_dat;  #end
#ifdef (_973ps3_dot_dat) #declare LMM_torso = _973ps3_dot_dat;  #end
#ifdef (_973pab_dot_dat) #declare LMM_torso = _973pab_dot_dat;  #end
#ifdef (_973p19_dot_dat) #declare LMM_torso = _973p19_dot_dat;  #end
#ifdef (_973p4r_dot_dat) #declare LMM_torso = _973p4r_dot_dat;  #end
#ifdef (_973p64_dot_dat) #declare LMM_torso = _973p64_dot_dat;  #end
#ifdef (_973p02_dot_dat) #declare LMM_torso = _973p02_dot_dat;  #end
#ifdef (_973p01_dot_dat) #declare LMM_torso = _973p01_dot_dat;  #end
#ifdef (_973p73_dot_dat) #declare LMM_torso = _973p73_dot_dat;  #end
#ifdef (_973p74_dot_dat) #declare LMM_torso = _973p74_dot_dat;  #end
#ifdef (_973p20_dot_dat) #declare LMM_torso = _973p20_dot_dat;  #end
#ifdef (_973pdg_dot_dat) #declare LMM_torso = _973pdg_dot_dat;  #end
#ifdef (_973p03_dot_dat) #declare LMM_torso = _973p03_dot_dat;  #end
#ifdef (_973pa4_dot_dat) #declare LMM_torso = _973pa4_dot_dat;  #end
#ifdef (_973p44_dot_dat) #declare LMM_torso = _973p44_dot_dat;  #end
#ifdef (_973p6e_dot_dat) #declare LMM_torso = _973p6e_dot_dat;  #end
#ifdef (_30375_dot_dat) #declare LMM_torso = _30375_dot_dat;  #end
#ifdef (_6260_dot_dat) #declare LMM_torso = _6260_dot_dat;  #end
#ifdef (_17_dot_dat) #declare LMM_torso = _17_dot_dat;  #end
#ifdef (_973p7j_dot_dat) #declare LMM_torso = _973p7j_dot_dat;  #end
#ifdef (_973p1n_dot_dat) #declare LMM_torso = _973p1n_dot_dat;  #end
#ifdef (_973pq0_dot_dat) #declare LMM_torso = _973pq0_dot_dat;  #end
#ifdef (_973paq_dot_dat) #declare LMM_torso = _973paq_dot_dat;  #end

#ifdef (LMM_torso)
        object {LMM_torso matrix <1,0,0,0,1,0,0,0,1,0,0,0> material{ M_Torso_Color }}
#end



//LEFT LEG 
//The code below identifies the left leg part used by the minifig and alters it according to the animation parameters

#ifdef (_3817_dot_dat) #declare LMM_l_leg = _3817_dot_dat;  #end
#ifdef (_971_dot_dat) #declare LMM_l_leg = _971_dot_dat;  #end
#ifdef (_971p3j_dot_dat) #declare LMM_l_leg = _971p3j_dot_dat;  #end
#ifdef (_971pa2_dot_dat) #declare LMM_l_leg = _971pa2_dot_dat;  #end
#ifdef (_971p4f_dot_dat) #declare LMM_l_leg = _971p4f_dot_dat;  #end
#ifdef (_971p63_dot_dat) #declare LMM_l_leg = _971p63_dot_dat;  #end
#ifdef (_971ps5_dot_dat) #declare LMM_l_leg = _971ps5_dot_dat;  #end
#ifdef (_773_dot_dat) #declare LMM_l_leg = _773_dot_dat;  #end
#ifdef (_3817pbe_dot_dat) #declare LMM_l_leg = _3817pbe_dot_dat;  #end
#ifdef (_3817pa3_dot_dat) #declare LMM_l_leg = _3817pa3_dot_dat;  #end

#ifdef (LMM_l_leg)
	object {LMM_l_leg matrix <1,0,0,0,1,0,0,0,1,0,0,0> #if (-L_Amplitude*sin((clock)*2*pi) < -1) rotate<-L_Amplitude*sin( clock*2*pi),0, 0,> #else rotate<(-L_Amplitude*sin( clock*2*pi))/4,0, 0,> #end translate<0,44,0> material{ M_L_Leg_Color }}
#end

//RIGHT LEG
//The code below identifies the right leg part used by the minifig and alters it according to the animation parameters

#ifdef (_3816_dot_dat) #declare LMM_r_leg = _3816_dot_dat;  #end
#ifdef (_972_dot_dat) #declare LMM_r_leg = _972_dot_dat;  #end
#ifdef (_972p3j_dot_dat) #declare LMM_r_leg = _972p3j_dot_dat;  #end
#ifdef (_972pa2_dot_dat) #declare LMM_r_leg = _972pa2_dot_dat;  #end
#ifdef (_972p4f_dot_dat) #declare LMM_r_leg = _972p4f_dot_dat;  #end
#ifdef (_972p63_dot_dat) #declare LMM_r_leg = _972p63_dot_dat;  #end
#ifdef (_773_dot_dat) #declare LMM_r_leg = _773_dot_dat;  #end
#ifdef (_3816pbe_dot_dat) #declare LMM_r_leg = _3816pbe_dot_dat;  #end
#ifdef (_3816pa3_dot_dat) #declare LMM_r_leg = _3816pa3_dot_dat;  #end

#ifdef (LMM_r_leg)
        object {LMM_r_leg matrix <1,0,0,0,1,0,0,0,1,0,0,0> #if (+L_Amplitude*sin((clock)*2*pi) < -1) rotate<+L_Amplitude*sin( clock*2*pi),0, 0,> #else rotate<(+L_Amplitude*sin( clock*2*pi))/4,0, 0,> #end  translate<0,44,0> material{ M_R_Leg_Color }}
#end

}
