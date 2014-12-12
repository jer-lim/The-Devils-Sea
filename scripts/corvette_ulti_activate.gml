// Games Programming Assignment 1
// Add game feature:   Corvette active ability
// Student Number:     S10131808A
// Student Name:       Elliot Tan

// get total number of traps (on-scren) to loop through
var trap_count = instance_number(trap_obj);

// index flag for traps
var i = 0;

// loop through each trap instance
for(var count = 0; count < trap_count; count++) {
    // get specific trap instance (using its index)
    // (count is not used, because instances may be destroyed in code
    //  below, and the list of traps in the traps "array" is shifted)
    var trap_inst = instance_find(trap_obj, i);
    
    // if owner matches, apply ulti effect
    if (trap_inst.owner == self.owner) {
        with(trap_inst) {
            // initiate trap pickup (explosion)
            if (trap_inst.armed == true)
                trap_pickup(2);
        }
    }
    // increment index if chest is not destroyed
    else {
        i++;
    }
}