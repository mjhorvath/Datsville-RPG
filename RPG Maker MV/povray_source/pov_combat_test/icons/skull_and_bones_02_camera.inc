
// -------------------------------------------------------------
// Camera

#declare cam_mode = 1;
#switch (cam_mode)
	// orthographic, weapons
	#case (0)
		#declare Max_dimension		= max(L3ModelBBoxSize.x,L3ModelBBoxSize.y,L3ModelBBoxSize.z);
		camera
		{
			orthographic
			up			-y * Max_dimension
			right		+x * Max_dimension
			location	-z * 4096
			direction	+z * 4096
//			rotate		-z * 45
		}
	#break
	// oblique, top-down
	#case (1)
		#local cam_aspc =     image_width/image_height;
		#local cam_dist =     100000;
		#local cam_area =     TileWidth * TilesNum;
		#local cam_loca =     -z * cam_dist;
		#local cam_dirc =     +z * cam_dist;
		#local cam_upvc =     -y * cam_area;
		#local cam_rgvc =     +x * cam_area * cam_aspc;
		#local cam_tran = transform
		{
			rotate		-x * 090
			rotate		-y * 090
//			scale		1.5
//			translate	+z * 64
//			translate	+x * 40
		}
		camera
		{
			orthographic
			location	cam_loca
			direction	cam_dirc
			up		cam_upvc
			right		cam_rgvc
			transform {cam_tran}
		}
	#break
	// perspective
	#case (2)
		camera
		{
			//orthographic
			perspective
			up		-y * 40 * image_height/image_width
			right		+x * 40
			location	-z * 160 * TilesNum
			direction	+z * 160 * TilesNum
			translate	-y * 80
		}
	#break
#end
