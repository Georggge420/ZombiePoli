
event_inherited();

state = ENEMYSTATE.WANDER;

sprMove = sprValentinaChase;
sprHit = sprValentinaHit;
sprDie = sprValentinaDie;

enemyScript[ENEMYSTATE.WANDER] = stateWander;
enemyScript[ENEMYSTATE.CHASE] = stateChase;
enemyScript[ENEMYSTATE.HURT] = stateHurt;
enemyScript[ENEMYSTATE.DIE] = stateDie;
