lerpProgress += (1 - lerpProgress) / 250;
textProgress += global.textSpeed;

x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

if(keyboard_check(vk_tab)){
	var _mesaggeLength = string_length(mesagge)
	if(textProgress >= _mesaggeLength){
		instance_destroy();
		if(instance_exists(oTextQueued)){
			with(oTextQueued) ticket--;
		}
	}else{
		if(textProgress > 2){
			textProgress = _mesaggeLength;
		}
	}
}

