set l3p_source=E:\Programs Windows\LDraw\l3p14beta\L3P20131202.EXE
set pov_source=D:\Datsville RPG\RPG Maker MV\povray_source\pov_combat_test\infrastructure
"%l3p_source%" "%pov_source%\infrastructure_signstop.ldr" "%pov_source%\infrastructure_signstop_figure.pov" -o -ic -il -ibinfrastructure_figure.inc
"%l3p_source%" "%pov_source%\infrastructure_signstop.ldr" "%pov_source%\infrastructure_signstop_shadow.pov" -o -ic -il -ibinfrastructure_shadow.inc
pause
