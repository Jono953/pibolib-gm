if(!pMode)
{
	cShakeX = random_range(-shake,shake);
	cShakeY = random_range(-shake,shake);
	switch(state)
	{
		case cameraState.followPlayer:
			cGTX = oPlayer.x;
			cGTY = oPlayer.y;
			cScale = 1;
		break;
		case cameraState.goToPoint:
			gtpTime--;
			if(gtpTime <= 0)
			{
				state = cameraState.followPlayer;	
			}
		break;
	}
	x = lerp(x,cGTX,0.1);
	y = lerp(y,cGTY,0.1);
	xView = lerp(xView,cSizeX*cScale,0.1);
	yView = lerp(yView,cSizeY*cScale,0.1);
	shake = lerp(shake,0,0.05);
	cDispX = x + cShakeX;
	cDispY = y + cShakeY;
	vm = matrix_build_lookat(cDispX,cDispY,-10,cDispX,cDispY,0,0,1,0);
	pm = matrix_build_projection_ortho(xView,yView,cMaxDepthNeg,cMaxDepthPos);
	camera_set_view_mat(camera,vm);
	camera_set_proj_mat(camera,pm);
	x = clamp(x,(cSizeX*cScale)/2,room_width-(cSizeX*cScale)/2);
	y = clamp(y,(cSizeY*cScale)/2,room_height-(cSizeY*cScale)/2);
}