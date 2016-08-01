///scr_input (player)

/*
right_key = keyboard_check (ord("D"));
left_key = keyboard_check (ord("A"));
up_key = keyboard_check (ord("W"));
down_key = keyboard_check (ord("S"));
jump_key = keyboard_check_pressed (vk_space);
climb_key = keyboard_check_pressed (ord("Q"));
attack_key = keyboard_check_pressed (ord("K"));
*/



if (gamepad_is_connected(player)){

    var haxis = gamepad_axis_value(player, gp_axislh);
    if (haxis > 0.3){
        right_key = true;
        left_key = false;
    } else if (haxis < -0.3){
        left_key = true;
        right_key = false;
    } else {
        right_key = false;
        left_key = false;
    }
    
    var vaxis = gamepad_axis_value(player, gp_axislv);
    if (vaxis > 0.3){
        down_key = true;
        up_key = false;
    } else if (vaxis < -0.3){
        up_key = true;
        down_key = false;
    } else {
        down_key = false;
        up_key = false;
    }

    climb_key = gamepad_button_check_pressed (player, gp_shoulderlb);
    attack_key = gamepad_button_check_pressed (player, gp_shoulderrb);
    jump_key = gamepad_button_check_pressed (player, gp_face1);
    action_key = gamepad_button_check_pressed (player, gp_face2);
    action2_key = gamepad_button_check_pressed (player, gp_face3);
    item_key = gamepad_button_check_pressed (player, gp_shoulderr);
}
