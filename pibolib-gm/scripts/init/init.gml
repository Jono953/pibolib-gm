//pibolib version 1.0
///@function init()
//developed by The Tin Whistle Consortium
//(C) 2019 All Rights Reserved.
#macro tileSize 16
#macro pause oGame.pauseTime
#macro pMode oGame.pauseMode
enum cameraState
{
	followPlayer = 0,
	goToPoint = 1
}
instance_create_layer(x,y,"game",oCamera);
configKBLEFT = "a";
configKBRIGHT = "d";
configKBJUMP = "w";
configKBCROUCH = "s";
configKBPRIMARY = "p";
configKBSECONDARY = "o";

#macro kbLeft ord(string_upper(configKBLEFT))
#macro kbRight ord(string_upper(configKBRIGHT))
#macro kbJump ord(string_upper(configKBJUMP))
#macro kbCrouch ord(string_upper(configKBCROUCH))
#macro kbPrimary ord(string_upper(configKBPRIMARY))
#macro kbSecondary ord(string_upper(configKBSECONDARY))