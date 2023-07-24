function scriptScreenShake(_magnitude,_frames){
	
	with(objCamara){
		if(_magnitude > shakeRemain){
			shakeMagnitude = _magnitude;
			shakeRemain = shakeMagnitude;
			shakeLength = _frames;
		}
	}

}