/*
* Do things and then delete self
*/

// create explosion radius
var expRadius = instance_create(self.x, self.y, explosion_radius_obj);
expRadius.image_xscale *= 1.5;
expRadius.image_yscale *= 1.5;
expRadius.image_alpha = 0.5;

// delete self
instance_destroy();

