/// @description  Step

if dead = true {
    var xx = x - sprite_xoffset + (sprite_width/2);
    var yy = y - sprite_yoffset + (sprite_height/2);
    instance_create(xx,yy,obj_explosion);
    instance_destroy();
}

if phys_active {
    // Move down
    if !place_meeting(x,y+1,par_solid) {
        y += 1;
        // Bring player with
        if place_meeting(x,y-2,obj_player) {
            with obj_player {
                if !place_meeting(x,y+1,par_solid) {
                    y += 1;
                }
            }
        }
    }
    else {
        phys_active = false;
    }
    // Shunt player down
    if place_meeting(x,y,obj_player) {
        while place_meeting(x,y,obj_player) {
            obj_player.y += 1;
        }
        with obj_player {
            // Kill player
            if place_meeting(x,y,par_solid) {
                health_change(-500);
            }
        }
    }
}


// Damage
if dmg > 0 {
    if image_index + (dmg*0.7) >= image_number {
        dead = true;
    }
    else {
        image_index += dmg * 0.7;
    }
    dmg = 0;
}

scr_process_damage();
scr_die();

