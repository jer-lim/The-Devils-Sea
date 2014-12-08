// remove chest and grant boots
instance_destroy();

var boost_random = random_range(0, 100);
// boost_random = 55;
var ship = argument0;

// 29% flotsam: repairs 40-80 hp
if (boost_random < 29) {
    // add hp, limit to max hp
    ship.hp += round(random_range(70, 100)) * HP_MULTIPLIER;
    if (ship.hp > ship.ship_hp[ship.ship_type])
        ship.hp = ship.ship_hp[ship.ship_type];
    // show_debug_message("Flotsam");
}

// 29% rum: speed +20 for 3s
else if (boost_random < 58) {
    // -1 rum boost time flag means rum boost is not active
    if (ship.rum_boost_time == -1) {
        // % boosts to max_speed, acceleration, and turn_speed
        ship.max_speed *= 1.2;
        ship.acceleration *= 1.5;
        ship.turn_speed *= 1.5;
        
        // current speed boost
        var cUVX = cos(degtorad(image_angle));
        var cUVY = -sin(degtorad(image_angle));
        hspeed += 40 * cUVX;
        vspeed += 40 * cUVY;
        
        // set rum boost time
        ship.rum_boost_time = room_speed * 3;
    }
    else {
        // extend active rum boost time
        ship.rum_boost_time += room_speed * 3;
    }
    
    // show_debug_message("Rum");
}

// 29% gunpowder: trap +1
else if (boost_random < 87) {
    if(ship.traps < TRAP_MAX_NUM){
        ship.traps++;
    }
    // show_debug_message("Gunpowder");
}

// 10% divine intervention: damage immunity for 10s
else if (boost_random < 97) {
    // -1 boost time flag means boost is not active
    if (ship.divine_boost_time == -1) {
        // set divine boost time
        ship.divine_boost_time = room_speed * 5;
    }
    else {
        // extend active divine boost time
        ship.divine_boost_time += room_speed * 5;
    }
    
    // show_debug_message("Divine Intervention");
}

// 3% god's wrath: MONSTER KRAKEN
else {
    // show_debug_message("Kraken");
}
