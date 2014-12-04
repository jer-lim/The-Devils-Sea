/*
* Do things and then delete self
*/

/*
// check explosion radius
var explosion_radius = 45;
collision_circle(x, y, explosion_radius, obj, prec, notme );
*/

// create explosion radius
var explosion_radius = instance_create(self.x, self.y, explosion_radius_obj);
explosion_radius.image_xscale *= TRAP_SCALE_SIZE;
explosion_radius.image_yscale *= TRAP_SCALE_SIZE;

// delete self
instance_destroy();

