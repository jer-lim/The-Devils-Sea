// keep object below global max speed
if(speed > SHIP_MAX_SPEED * SHIP_SPEED_MULTIPLIER)
    speed = SHIP_MAX_SPEED * SHIP_SPEED_MULTIPLIER;
    
// boost handling
if (rum_boost_time > 0) {
    rum_boost_time--;
}
if (divine_boost_time > 0) {
    divine_boost_time--;
}
    
// if boost time reaches 0, set it to -1 flag
if (rum_boost_time == 0) {
    ship_reset_boost();
    rum_boost_time = -1;
}
if (divine_boost_time == 0) {
    divine_boost_time = -1;
}
