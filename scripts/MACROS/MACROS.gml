#macro FRAME_RATE 60
#macro ROOM_START Cuarto
#macro TILE_SIZE 16
#macro CARDINAL_DIR round(direction/90)

#macro RESOLUTION_W 1280
#macro RESOLUTION_H 720

#macro TRANSITION_SPEED 0.05
#macro OUT 0
#macro IN 1

enum  ENEMYSTATE{
	IDLE,
	WANDER,
	CHASE,
	ATTACK,
	HURT,
	DIE,
	WAIT
}
