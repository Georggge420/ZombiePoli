
event_inherited();

state = ENEMYSTATE.WANDER;

sprMove = sprOjo;
sprHit = sprOjoPutazo;
sprDie = sprOjoHit;

enemyScript[ENEMYSTATE.WANDER] = ojoWander;
enemyScript[ENEMYSTATE.CHASE] = ojoChase;
enemyScript[ENEMYSTATE.HURT] = ojoHurt;
enemyScript[ENEMYSTATE.DIE] = ojoDie;
