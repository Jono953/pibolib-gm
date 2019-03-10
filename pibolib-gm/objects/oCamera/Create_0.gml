//base size
cSizeX = 320;
cSizeY = 180;
cMaxDepthPos = 150000;
cMaxDepthNeg = -150000;

//size
xView = cSizeX;
yView = cSizeY;
cScale = 1;

//state vars
state = cameraState.followPlayer;
cShakeX = 0;
cShakeY = 0;
shake = 0;
cDispX = cSizeX;
cDispY = cSizeY;
cGTX = x;
cGTY = y;
gtpTime = 0;

//camera init
camera = camera_create();
vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
pm = matrix_build_projection_ortho(xView,yView,cMaxDepthNeg,cMaxDepthPos);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;