// Games Programming Assignment 1
// Add game feature:   Treasure chest effects (boosts)
// Student Number:     S10131808A
// Student Name:       Elliot Tan

// remove chest and grant boots
instance_destroy();

// var boost_random = random_range(0, 100);
var boost_random = random_range(0, 97);
// boost_random = 95;
var ship = argument0;

// 29% flotsam: repairs hp
if (boost_random < 29) {
    // play health sound
    audio_play_sound(health_sound, 40, 0);
    
    // add hp, limit to max hp
    ship.hp += round(random_range(70, 100)) * HP_MULTIPLIER;
    if (ship.hp > ship.ship_hp[ship.ship_type] * HP_MULTIPLIER)
        ship.hp = ship.ship_hp[ship.ship_type] * HP_MULTIPLIER;
                
    // show heart graphic
    var heart_inst = instance_create(x, y - 5, heart_obj);
    with (heart_inst) {
        // set alarm timer for destroying heart image
        alarm[0] = room_speed * 0.5;
    }
}

// 29% rum: +speed for 3s
else if (boost_random < 58) {
    // play speedup sound
    audio_play_sound(speedup_sound, 40, 0);
    
    // -1 rum boost time flag means rum boost is not active
    if (ship.rum_boost_time == -1) {
        // % boosts to max_speed, acceleration, and turn_speed
        ship.max_speed *= 1.5;
        ship.acceleration *= 1.5;
        ship.turn_speed *= 1.5;
        
        // speed boost
        var cUVX = cos(degtorad(image_angle));
        var cUVY = -sin(degtorad(image_angle));
        hspeed += 50 * cUVX;
        vspeed += 50 * cUVY;
        
        // set rum boost time
        ship.rum_boost_time = room_speed * 3;
    }
    else {
        // extend active rum boost time
        ship.rum_boost_time += room_speed * 3;
    }
    
    // show bolt graphic
    var bolt_inst = instance_create(x, y - 5, bolt_obj);
    with (bolt_inst) {
        // set alarm timer for destroying bolt image
        alarm[0] = room_speed * 0.5;
    }
}

// 29% gunpowder: trap +1
else if (boost_random < 87) {
    // play reload sound
    audio_play_sound(reload_sound, 40, 0);
    
    if(ship.traps < TRAP_MAX_NUM){
        ship.traps++;
    }
    
    // show trap graphic
    var trap_inst = instance_create(x, y - 5, plus_trap_obj);
    with (trap_inst) {
        // set alarm timer for destroying trap image
        alarm[0] = room_speed * 0.5;
    }
}

// 10% divine intervention: damage immunity
else if (boost_random < 97) {
    with (ship) {
        if (!audio_is_playing(divine_boost_sound)) {
            // play shield sound
            divine_boost_sound = audio_play_sound(shield_sound, 40, true);
        }
    }

    // -1 boost time flag means boost is not active
    if (ship.divine_boost_time == -1) {
        // draw shield graphic
        with (ship) {
            // set divine boost time
            divine_boost_time = room_speed * 5;
        
            divine_boost_shield = instance_create(x, y, shield_obj);
            divine_boost_shield.image_alpha = 0.7;
            divine_boost_shield.image_speed = 0.75;
        }
    }
    else {
        with (ship) {
            // extend active divine boost time
            divine_boost_time += room_speed * 5;
        }
    }
}

// 3% god's wrath: MONSTER KRAKEN
else {
    // show_debug_message("Kraken");
}
