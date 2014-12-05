/*
* Loop of alarm to check if traps can be reloaded
*/

if(traps < TRAP_MAX_NUM){
    traps++;
}

if(ship_type == SHIP_CORVETTE){
    alarm[3] = TRAP_RELOAD_TIME / 2 * room_speed;
}else{
    alarm[3] = TRAP_RELOAD_TIME * room_speed;
}
