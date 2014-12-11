// Games Programming Assignment 1
// Add game feature:   Galleass activie ability (deactivation)
// Student Number:     S10131808A
// Student Name:       Elliot Tan

// code activated with fort alarm
// WITH THE FORT
self.arc.image_xscale = 1;
self.arc.image_yscale = 1;
self.arc.ulti = false;

// deactivation graphics
if (self.owner == PLAYER_ONE)
    effect_create_below(ef_ring, self.x, self.y, 1,
        make_color_rgb(22, 190, 254));
else if (self.owner == PLAYER_TWO)
    effect_create_below(ef_ring, self.x, self.y, 1,
        make_color_rgb(255, 128, 128));
