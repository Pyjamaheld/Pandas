///scr_climbing_state

scr_input();
airjump = airjump_max;
hspd = 0;
vspd = 0;
sprite_index = spr_climbing;

//stop climbing
if (climb_key or !place_meeting(x, y, obj_climbing_wood)){
    state = scr_normal_state;
}

//move right
if (right_key){
    hspd = spd/2;
}

//move left
if (left_key){
    hspd = -spd/2;
}

//move up
if (up_key){
    vspd = -spd/2;
}

//move down
if (down_key){
    vspd = spd/2;
}

//jumping
if (jump_key){
    state = scr_normal_state;
    vspd = -jspd;
}

//not moving
if ((!right_key && !left_key) or (right_key && left_key)){
    hspd = 0;
}

//horizontal collision
if (place_meeting(x+hspd, y, obj_black)){
    while (!place_meeting(x+sign(hspd), y, obj_black)){
        x += sign(hspd);
    }
    hspd = 0;
}

//move horizontally
x += hspd;

//vertical collision
if (place_meeting(x, y+vspd, obj_black)){
    while (!place_meeting(x, y+sign(vspd), obj_black)){
        y += sign(vspd);
    }
    vspd = 0;
}

//move vertically
y += vspd;
