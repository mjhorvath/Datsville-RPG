cd "D:\POVray Images"
set im_path=C:\Program Files\ImageMagick-6.9.2-Q16
"%im_path%\montage.exe" "item_001_redbottle.png" "item_002_bluebottle.png" "item_003_greenbottle.png" "item_004_darkpinkflask.png" "item_005_turquoiseflask.png" "item_006_salmonflask.png" "item_007_lightblueflask.png" "item_008_lavenderflask.png" "item_009_limeflask.png" "item_010_croissant.png" "item_011_banana.png" "item_012_baguette.png" "item_013_sausage.png" "item_014_turkey.png" "item_015_chalice.png" "item_016_magicwand.png" -background transparent -tile 16x1 -geometry 24x24! "items_row_01.png"
"%im_path%\montage.exe" "item_017_meatsteak.png" "item_018_binoculars.png" "item_019_wrench.png" "item_020_fishingpole.png" "item_021_bugle.png" "item_022_compass.png" "item_023_apple.png" "item_024_carrot.png" "item_025_cherries.png" -background transparent -tile 16x1 -geometry 24x24! "items_row_02.png"
pause
