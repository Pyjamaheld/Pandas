///scr_attack_state

//attack ends
if (image_index == 5){
    state = scr_normal_state;
    just_attacked = true;
}

//determining where to spawn the damage object
var xx = x;
if (face = 0){ //looking right
    xx = x + 48;
} else { //looking left
    xx = x - 48;
}

//create the damage object
if (image_index == 3){
    var damage = instance_create (xx, y, obj_damage1);
    damage.creator = id;
    }
