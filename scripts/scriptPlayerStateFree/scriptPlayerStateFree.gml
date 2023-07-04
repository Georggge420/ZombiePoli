
function scriptPlayerStateFree(){
		hSpeed =lengthdir_x(inputMagnitude * speedWalk, inputDirection);
        vSpeed =lengthdir_y(inputMagnitude * speedWalk, inputDirection);

        scriptPlayerCollision();


        var _oldSprite = sprite_index;
        if(inputMagnitude != 0){
	          direction = inputDirection;
	          sprite_index = spriteRun;
        } else sprite_index = spriteIdle;
        if(_oldSprite != sprite_index)localFrame = 0;

        //Unpdate Image Index
         scriptPlayerMovment();
		hitColdown = max(hitColdown-1,0);
		healColdown = max(healColdown-1,0)
}