///scr_item_use(item)

var item_nr = argument0;

if (item_nr == 1){
    var granade = instance_create (x, y-1, obj_granade);
    granade.hspd = 20;
    granade.vspd = -16;
    granade.alarm[0] = room_speed * 5;
    item = 0;
}
