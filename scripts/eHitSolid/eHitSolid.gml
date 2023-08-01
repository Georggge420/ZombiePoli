
function eHitSolid(){
	flash = 0.5;
	
	if(entidadDestruible){
		if(imgNum > 0){
			imgNum = min(-1, imgNum - 1);
		}else{
			instance_destroy();
		}
	}
	
	

}