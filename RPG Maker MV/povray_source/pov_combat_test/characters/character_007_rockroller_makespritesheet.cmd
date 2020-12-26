cd "D:\POVray Images"
set im_path=C:\Program Files\ImageMagick-6.9.2-Q16
set sprite_name=character_007_rockroller_figure
"%im_path%\montage.exe" "%sprite_name%03.png" "%sprite_name%02.png" "%sprite_name%01.png" "%sprite_name%07.png" "%sprite_name%06.png" "%sprite_name%05.png" "%sprite_name%15.png" "%sprite_name%14.png" "%sprite_name%13.png" "%sprite_name%11.png" "%sprite_name%10.png" "%sprite_name%09.png" -background transparent -tile 3x4 -geometry 96x120! "%sprite_name%_complete.png"
set sprite_name=character_007_rockroller_shadow
"%im_path%\montage.exe" "%sprite_name%03.png" "%sprite_name%02.png" "%sprite_name%01.png" "%sprite_name%07.png" "%sprite_name%06.png" "%sprite_name%05.png" "%sprite_name%15.png" "%sprite_name%14.png" "%sprite_name%13.png" "%sprite_name%11.png" "%sprite_name%10.png" "%sprite_name%09.png" -background transparent -tile 3x4 -geometry 96x120! "%sprite_name%_complete.png"
pause
