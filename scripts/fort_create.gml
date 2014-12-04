/*
* Create an arc object and link it to the fort.
* The arc shall have no variables, opting instead to use
* the fort's variables for calculation.
*/
arc = instance_create(x, y, fort_scan_arc_obj);
arc.image_angle = random_range(0, 360);
arc.fort = id;

targetAcquired = false;
targetAngle = 0;
owner = 0;