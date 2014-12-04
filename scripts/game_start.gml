/*
* Determine which ship to use based on ship type.
* Spawn ships on extreme left and right side of map.
*/
/*
var player1ShipType = SHIP_XEBEC;
var player2ShipType = SHIP_GALLEASS;
ship1_obj.ship_type = player1ShipType;
ship2_obj.ship_type = player2ShipType;
*/

var ship1 = instance_create(50, room_height*0.5, ship1_obj);
var ship2 = instance_create(room_width - 50, room_height*0.5, ship2_obj);
ship2.image_angle += 180;

/*
* Spawn forts symmetrically somewhere in the middle of the map.
* Lower bound of random is not 0 to keep it off the side of the map.
* Upper bound is that to just calculate positions for half the map,
* and keep them off the middle line.
*/

var spawnX, spawnY, spawnX2, spawnY2;

    spawnX = random_range(room_width / 8, room_width / 8 * 3);
    spawnY = random_range(room_height / 8, room_height / 8 * 3);
    spawnX2 = spawnX;
    spawnY2 = spawnY;
    /*
    * Ensure forts do not clip, and have at least half a fort's radius space between them
    */
    while((spawnX2 > spawnX - sprite_get_width(fort_sprite)
     && spawnX2 < spawnX + sprite_get_width(fort_sprite))
    || (spawnY2 > spawnY - sprite_get_height(fort_sprite)
    && spawnY2 < spawnY + sprite_get_height(fort_sprite))){
        spawnX2 = random_range(room_width / 8, room_width / 8 * 3);
        spawnY2 = random_range(room_height / 8, room_height / 8 * 3);
    }
    var fort11 = instance_create(spawnX, spawnY, fort_obj);
    var fort12 = instance_create(spawnX2, spawnY2, fort_obj);
    var fort21 = instance_create(room_width - spawnX, room_height - spawnY, fort_obj);
    var fort22 = instance_create(room_width - spawnX2, room_height - spawnY2, fort_obj);
    fort_set_owner(fort11, PLAYER_ONE);
    fort_set_owner(fort12, PLAYER_ONE);
    fort_set_owner(fort21, PLAYER_TWO);
    fort_set_owner(fort22, PLAYER_TWO);