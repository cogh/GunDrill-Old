/// @description Insert description here
// You can write your code in this editor

// Collectable
timer++;
if timer > 30 {
    collectable = true;
	// Push x
	var _ore = instance_place(x,y,obj_ore);
	if instance_exists(_ore) && timer < 90 {
		hsp += (x - _ore.x)*0.005;
	}
}

// Pickup
if place_meeting(x,y,obj_player) && collectable = true {
    audio_play_sound(sb_ore_pickup,0,0);
    instance_destroy();
}

// Physics
if phys_on {
    // Grav
    vsp += grav;
    
    // Drag
    hsp *= 0.97
    vsp *= 0.97
    
    // Collide x
    if place_meeting(x+hsp,y,par_solid) {
        while !place_meeting(x+sign(hsp),y,par_solid) {
            x += sign(hsp);
        }
        hsp = 0;
    }
    x += hsp;
    
    // Collide y
    if place_meeting(x,y+vsp,par_solid) {
        while !place_meeting(x,y+sign(vsp),par_solid) {
            y += sign(vsp);
        }
        vsp = -vsp*0.8;
        hsp *= 0.5
        if abs(vsp) > 1 {
            audio_play_sound(sb_ore_bounce,0,0);
        }
        else {
            audio_play_sound(sb_ore_bounce,0,0);
            y = round(y);
			grav = 0;
			vsp = 0;
        }
    }
    y += vsp;
}

