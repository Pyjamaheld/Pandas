///scr_normal_state


script_execute (scr_input, player);

//climbing on background
if (place_meeting(x, y, obj_climbing_wood) and climb_key){
    state = scr_climbing_state;
}

scr_movement();

scr_sprite_setter();

//attacking
if (attack_key and just_attacked == false){
    state = scr_attack_state;
    image_index = 0;
    image_speed = 0.5;
    sprite_index = spr_attack;
}
just_attacked = false;
