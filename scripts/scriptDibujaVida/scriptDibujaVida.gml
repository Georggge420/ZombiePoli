function scriptDibujaVida(vida) 
{
	for(var i=0; i<vida; i += 2){
	 draw_sprite(sprContenedor, 0, 16 + 16 * i, 112);
	}
}