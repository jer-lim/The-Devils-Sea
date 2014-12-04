if(other.owner != fort.owner){
    fort.targetAcquired = true;
    fort.target = other.id;
    alarm[0] = 2 * room_speed;
}