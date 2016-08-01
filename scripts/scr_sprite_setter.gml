///scr_sprite_setter

//set sprite and imagespeed
if (yprevious != y){
    sprite_index = spr_airborne;
    image_speed = 0;
    image_index = y>yprevious;
} else {
    if (xprevious != x){
        sprite_index = spr_walking;
        image_speed = 0.1;
    
    } else {
        sprite_index = spr_standing;
        image_speed = 0;
    }
}

//change direction of the sprite
if (xprevious < x){
    face = 0;
    image_xscale = -1;
} else if (xprevious > x){
    face = 1;
    image_xscale = 1;
}
