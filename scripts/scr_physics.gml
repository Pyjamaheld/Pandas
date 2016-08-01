///scr_physics

//gravity
if (vspd > -20){
    vspd += grav;
}

//Check for floor
if (place_meeting(x, y+1, obj_black)){
    if (vspd > 0){
        vspd = 0;
    }
}

//friction
if (!place_meeting(x - obj_panda.hspd, y, obj_panda)){
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
