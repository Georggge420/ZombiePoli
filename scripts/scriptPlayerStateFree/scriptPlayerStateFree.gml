
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
		healColdown = max(healColdown-1,0);
		
		//key attack
		if(keyAttack){
			state = scriptPlayerAttack;
			stateAttack = meleeAttack;
		}
		
		if(keyActivate){
			//interaccion con entidad
			
			var _activateX = lengthdir_x(10,direction);
			var _activateY = lengthdir_y(10, direction);
			activate = instance_position(x+_activateX,(y-8)+_activateY,cEntidad)
			
			if(activate == noone || activate.entidadActivateScript == -1){
				state = scriptPlayerRoll;
				moveDistanceRemaining = distanceRoll;
			}else{
				script_execute_ext(activate.entidadActivateScript,activate.entidadActivateArgs);
				
				if(activate.entidadNPC){
					with(activate){
						direction = point_direction(x,y,other.x,other.y);
						image_index = CARDINAL_DIR;
					}
				}
			}
		}
}