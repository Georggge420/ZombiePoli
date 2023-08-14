
event_inherited();

state = ENEMYSTATE.WANDER;

sprMove = sprOjoBossIdle;
sprAttack = sprOjoBossAttack;
sprHit = sprOjoBossHit;
sprDie = sprOjoBossDead;

enemyScript[ENEMYSTATE.WANDER] = stateWander;
enemyScript[ENEMYSTATE.CHASE] = stateChaseOjoBoss;
enemyScript[ENEMYSTATE.ATTACK] = stateAttackOjoBoss;
enemyScript[ENEMYSTATE.HURT] = stateHurt;
enemyScript[ENEMYSTATE.DIE] = stateDie;
enemyScript[ENEMYSTATE.WAIT] = stateWait;


