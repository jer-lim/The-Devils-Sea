// trap_detonate(trap_inst);

var trap_inst = argument0;

// create explosion radius
var explosion_radius = instance_create(trap_inst.x, trap_inst.y, explosion_radius_obj);
explosion_radius.image_xscale *= TRAP_SCALE_SIZE;
explosion_radius.image_yscale *= TRAP_SCALE_SIZE;

// delete trap
with (trap_inst) {
    instance_destroy();
}
