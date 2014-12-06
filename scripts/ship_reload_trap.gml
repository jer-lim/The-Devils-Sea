/*
* Loop of alarm to check if traps can be reloaded
*/

// limit maximum number of traps
if(traps < TRAP_MAX_NUM){
    traps++;
}

if(ship_type == SHIP_CORVETTE) {
    // Corvette's passive ability (faster recharge of traps)
    alarm[3] = TRAP_RELOAD_TIME / 2 * room_speed;
}
else {
    // other ships reload timer
    alarm[3] = TRAP_RELOAD_TIME * room_speed;
}
