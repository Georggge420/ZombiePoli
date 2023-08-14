
function stateWait(){
	if(++state_wait >= stateWaitDuration){
		state_wait = 0;
		state = stateTarget;
	}
}