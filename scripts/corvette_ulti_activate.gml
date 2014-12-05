// get number of traps to loop through
var trap_count = instance_number(trap_obj);

// index flag for traps
var i = 0;

// loop through each trap instance
for(var count = 0; count < trap_count; count++) {
    var trap_inst = instance_find(trap_obj, i);
    
    // if owner matches, apply ulti effect
    if (trap_inst.owner == self.owner) {
        with(trap_inst) {
            if (trap_inst.armed == true)
                trap_pickup(1.8);
        }
    }
    // increment index if chest is not destroyed
    else {
        i++;
    }
}
