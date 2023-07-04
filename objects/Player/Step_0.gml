keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyRight = keyboard_check(ord("D"))|| keyboard_check(vk_right);
keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
keyActivate = keyboard_check(vk_space);
keyAttack = keyboard_check(ord("O"));
keyItem = keyboard_check(ord("P"));

inputDirection = point_direction(0,0, keyRight-keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);


if(!global.gamePaused){
	if(estadoVivo == true){
		script_execute(state);
	}
}




