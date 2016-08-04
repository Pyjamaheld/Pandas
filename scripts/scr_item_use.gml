///scr_item_use(item)

var item_nr = argument0;

// Item List
// Nr   Item
//
// 01   Granade
// 02   Sword

// create a grenade and give it speed
if (item_nr == 1){
    var granade = instance_create (x, y-16, obj_granade);
    if (face == 0){
        granade.hspd = 10 + hspd * 2;
    } else if (face == 1){
        granade.hspd = -10 + hspd * 2;
    }
    granade.vspd = -16;
    granade.alarm[0] = room_speed * 5;
    item = 0;
}

// swing the sword
if (item_nr == 2){
    
}
