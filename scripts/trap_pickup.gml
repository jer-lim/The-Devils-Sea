var extra_scaling = argument0;
var effect_scaling = 1;
if (extra_scaling > 1)
    effect_scaling = 2;

// create explosion radius
var explosion_radius = instance_create(self.x, self.y, explosion_radius_obj);
explosion_radius.image_xscale *= (TRAP_SCALE_SIZE * extra_scaling);
explosion_radius.image_yscale *= (TRAP_SCALE_SIZE * extra_scaling);

effect_create_above(ef_explosion, x, y, effect_scaling,
    make_color_rgb(255, 128, 0));

// delete self
instance_destroy();