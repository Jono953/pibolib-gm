inc = lerp(inc,0.5,0.1);
if(!doneAction)
{
	sprXScale = lerp(sprXScale,1,0.1);
	pause(3);
}
else
{
	sprXScale = lerp(sprXScale,0,0.3);
	if(sprXScale < 0.1){
		instance_destroy();
	}
}
if (characters < msgLength) { 
	hold = keyboard_check(ord("E")); 
	characters += inc * (1 + hold); 
	msgDraw = string_copy(msg[msgCur], 0, characters); 
} 
else 
{ 
	if(keyboard_check_pressed(ord("E"))) 
	{ 
	    if (msgCur < msgEnd) 
		{ 
	        msgCur += 1; 
	        msgLength = string_length(msg[msgCur]);  
	        characters = 0; 
	        msgDraw = ""; 
	    }
	    else
		{ 
	        doneAction = true;
	    }
	}
}
if(string_length(msg[msgCur]) = 0)
{
	doneAction = true;
}
if(keyboard_check_pressed(vk_tab))
{
	doneAction = true;	
}
