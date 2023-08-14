
event_inherited();

state = ENEMYSTATE.WANDER;

sprMove = sprOjo;
sprHit = sprOjoPutazo;
sprDie = sprOjoDie;

enemyScript[ENEMYSTATE.WANDER] = stateWander;
enemyScript[ENEMYSTATE.CHASE] = stateChase;
enemyScript[ENEMYSTATE.HURT] = stateHurt;
enemyScript[ENEMYSTATE.DIE] = stateDie;
