:: This script assumes the input dimensions are 384x384 pixels.
:: Copy this file to the POV-Ray output folder and run it from there.
set im_path=C:\Program Files\ImageMagick-6.8.9-Q16
set sprite_name=character_006_safaridude_figure
"%im_path%\Convert.exe" "%sprite_name%00.png" -crop 288x288+48+96  "%sprite_name%00.png"
"%im_path%\Convert.exe" "%sprite_name%01.png" -crop 288x288+48+96  "%sprite_name%01.png"
"%im_path%\Convert.exe" "%sprite_name%02.png" -crop 288x288+48+96  "%sprite_name%02.png"
"%im_path%\Convert.exe" "%sprite_name%03.png" -crop 288x288+48+96  "%sprite_name%03.png"
"%im_path%\Convert.exe" "%sprite_name%04.png" -crop 288x288+48+96  "%sprite_name%04.png"
"%im_path%\Convert.exe" "%sprite_name%05.png" -crop 288x288+48+96  "%sprite_name%05.png"
"%im_path%\Convert.exe" "%sprite_name%06.png" -crop 288x288+48+96  "%sprite_name%06.png"
"%im_path%\Convert.exe" "%sprite_name%07.png" -crop 288x288+48+96  "%sprite_name%07.png"
"%im_path%\Convert.exe" "%sprite_name%08.png" -crop 288x288+48+96  "%sprite_name%08.png"
"%im_path%\Convert.exe" "%sprite_name%09.png" -crop 288x288+48+96  "%sprite_name%09.png"
"%im_path%\Convert.exe" "%sprite_name%10.png" -crop 288x288+48+96  "%sprite_name%10.png"
"%im_path%\Convert.exe" "%sprite_name%11.png" -crop 288x288+48+96  "%sprite_name%11.png"
"%im_path%\Convert.exe" "%sprite_name%12.png" -crop 288x288+48+96  "%sprite_name%12.png"
"%im_path%\Convert.exe" "%sprite_name%13.png" -crop 288x288+48+96  "%sprite_name%13.png"
"%im_path%\Convert.exe" "%sprite_name%14.png" -crop 288x288+48+96  "%sprite_name%14.png"
"%im_path%\Convert.exe" "%sprite_name%15.png" -crop 288x288+48+96  "%sprite_name%15.png"
"%im_path%\montage.exe" "%sprite_name%03.png" "%sprite_name%02.png" "%sprite_name%01.png" "%sprite_name%07.png" "%sprite_name%06.png" "%sprite_name%05.png" "%sprite_name%15.png" "%sprite_name%14.png" "%sprite_name%13.png" "%sprite_name%11.png" "%sprite_name%10.png" "%sprite_name%09.png" -background transparent -tile 3x4 -geometry 288x288! "%sprite_name%_complete.png"
"%im_path%\Convert.exe" "%sprite_name%_complete.png" -resize 216x288 "%sprite_name%_complete.png"
set sprite_name=character_006_safaridude_shadow
"%im_path%\Convert.exe" "%sprite_name%00.png" -crop 288x288+48+96  "%sprite_name%00.png"
"%im_path%\Convert.exe" "%sprite_name%01.png" -crop 288x288+48+96  "%sprite_name%01.png"
"%im_path%\Convert.exe" "%sprite_name%02.png" -crop 288x288+48+96  "%sprite_name%02.png"
"%im_path%\Convert.exe" "%sprite_name%03.png" -crop 288x288+48+96  "%sprite_name%03.png"
"%im_path%\Convert.exe" "%sprite_name%04.png" -crop 288x288+48+96  "%sprite_name%04.png"
"%im_path%\Convert.exe" "%sprite_name%05.png" -crop 288x288+48+96  "%sprite_name%05.png"
"%im_path%\Convert.exe" "%sprite_name%06.png" -crop 288x288+48+96  "%sprite_name%06.png"
"%im_path%\Convert.exe" "%sprite_name%07.png" -crop 288x288+48+96  "%sprite_name%07.png"
"%im_path%\Convert.exe" "%sprite_name%08.png" -crop 288x288+48+96  "%sprite_name%08.png"
"%im_path%\Convert.exe" "%sprite_name%09.png" -crop 288x288+48+96  "%sprite_name%09.png"
"%im_path%\Convert.exe" "%sprite_name%10.png" -crop 288x288+48+96  "%sprite_name%10.png"
"%im_path%\Convert.exe" "%sprite_name%11.png" -crop 288x288+48+96  "%sprite_name%11.png"
"%im_path%\Convert.exe" "%sprite_name%12.png" -crop 288x288+48+96  "%sprite_name%12.png"
"%im_path%\Convert.exe" "%sprite_name%13.png" -crop 288x288+48+96  "%sprite_name%13.png"
"%im_path%\Convert.exe" "%sprite_name%14.png" -crop 288x288+48+96  "%sprite_name%14.png"
"%im_path%\Convert.exe" "%sprite_name%15.png" -crop 288x288+48+96  "%sprite_name%15.png"
"%im_path%\montage.exe" "%sprite_name%03.png" "%sprite_name%02.png" "%sprite_name%01.png" "%sprite_name%07.png" "%sprite_name%06.png" "%sprite_name%05.png" "%sprite_name%15.png" "%sprite_name%14.png" "%sprite_name%13.png" "%sprite_name%11.png" "%sprite_name%10.png" "%sprite_name%09.png" -background transparent -tile 3x4 -geometry 288x288! "%sprite_name%_complete.png"
"%im_path%\Convert.exe" "%sprite_name%_complete.png" -resize 216x288 "%sprite_name%_complete.png"
pause
