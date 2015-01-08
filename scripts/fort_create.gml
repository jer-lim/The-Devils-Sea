// Games Programming Assignment 1
// Add game feature:   Fort spawning (initalization/creation)
// Student Number:     S10122326F, S10131808A
// Student Name:       Jeremy Lim, Elliot Tan

/*
* Create an arc object and link it to the fort.
* The arc shall have no variables, opting instead to use
* the fort's variables for calculation.
*/
arc = instance_create(x, y, fort_scan_arc_obj);
arc.image_angle = random_range(0, 360);
arc.clockwise = irandom(1);
arc.fort = id;
arc.ulti = false;

targetAcquired = false;
targetAngle = 0;
attack_timer = 0;
owner = 0;
help_text = noone;

// create fort radius object for collision detection with ships
// ships that collide are "in-range" for capturing a fort
radius = instance_create(x, y, fort_radius_obj);
radius.image_xscale = fort_scan_arc_obj.sprite_width * 2 / radius.sprite_width;
radius.image_yscale = fort_scan_arc_obj.sprite_width * 2 / radius.sprite_height;
radius.fort = id;

// initialize capture timer flag to 5 seconds
capture_timer = room_speed * FORT_CAPTURE_DURATION;
capture_sound = -1;
enemy_ship_in_range = false;
friendly_ship_in_range = false;

blue_bar = instance_create(x, y, blue_bar_obj);
blue_bar.visible = false;
red_bar = instance_create(x, y, red_bar_obj);
red_bar.visible = false;
