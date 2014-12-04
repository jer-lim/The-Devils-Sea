/*
* Loop of alarm to check if traps can be reloaded
*/

if(traps < TRAP_MAX_NUM){
    traps++;
}
alarm[3] = TRAP_RELOAD_TIME * room_speed;