// Games Programming Assignment 1
// Add game feature:   Trap laying (delayed spawning)
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

if (self.hp <= 0) exit;

if(traps > 0) {
    var trap_inst = instance_create(x, y, trap_obj);
    trap_inst.owner = self.owner;
    traps--;
}
