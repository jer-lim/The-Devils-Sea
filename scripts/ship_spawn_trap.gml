if(traps > 0){
    var trap_inst = instance_create(x, y, trap_obj);
    trap_inst.owner = self.owner;
    traps--;
}