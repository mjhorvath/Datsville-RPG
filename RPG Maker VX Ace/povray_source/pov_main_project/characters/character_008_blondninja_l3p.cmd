set l3p_path=E:\Programs Windows\l3p14beta\l3p.exe
set pov_source=D:\Datsville RPG\trunk\povray_source\pov_main_project\characters
"%l3p_path%" "%pov_source%\character_008_blondninja.ldr" "%pov_source%\character_008_blondninja_face.pov" -o -ic -il -ibcharacter_face.inc
"%l3p_path%" "%pov_source%\character_008_blondninja.ldr" "%pov_source%\character_008_blondninja_figure.pov" -o -ic -il -ibcharacter_figure.inc -ieLMM_A02i_datsville_figure.inc
"%l3p_path%" "%pov_source%\character_008_blondninja.ldr" "%pov_source%\character_008_blondninja_shadow.pov" -o -ic -il -ibcharacter_shadow.inc -ieLMM_A02i_datsville_shadow.inc
pause
