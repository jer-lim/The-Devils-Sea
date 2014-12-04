/*
* Do things and then delete self
*/

// create explosion radius
var explosion_radius = instance_create(self.x, self.y, explosion_radius_obj);
explosion_radius.image_xscale *= 1.5;
explosion_radius.image_yscale *= 1.5;

// delete self
instance_destroy();

