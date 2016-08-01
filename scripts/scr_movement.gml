///scr_movement


//gravity
if (vspd > -20){
    vspd += grav;
}

//Check for floor
if (place_meeting(x, y+1, obj_black)){
    airjump = airjump_max;
    if (vspd > 0){
        vspd = 0;
    }
    
    //jumping
    if (jump_key){
        vspd = -jspd;
    }
} else {
    
    //sensible jump
    if (gamepad_button_check_released (player, gp_face1) and vspd < -4){
        vspd = -4;
    }
    
    //airjump
    if (airjump > 0 and jump_key){
        vspd = -jspd;
        airjump -=1;
    }
}  

//move right
if (right_key){
    if (hspd < spd){
        hspd += fric;
    } else {
        hspd = spd;
    }
}

//move left
if (left_key){
    if (hspd > -spd){
        hspd -= fric;
        } else {
        hspd = -spd;
    }
}

//not moving
if ((!right_key && !left_key) or (right_key && left_key)){
    if (hspd != 0){
        if (hspd < 0) {
            hspd += fric;
        } else {
            hspd -= fric;
        }
    }
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

