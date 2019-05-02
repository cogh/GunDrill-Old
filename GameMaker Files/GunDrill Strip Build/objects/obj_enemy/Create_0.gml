/// @description  Create

state = "spawn";

if !place_meeting(x+16,y,par_solid) { spawn_dir = 0; }
else if !place_meeting(x,y-16,par_solid) { spawn_dir = 90; }
else if !place_meeting(x-16,y,par_solid) { spawn_dir = 180; }
else if !place_meeting(x,y+16,par_solid) { spawn_dir = 270; }
else {
    spawn_dir = 270;
}


hp = 4;
dead = false;

hsp = 0;
vsp = 0;

grounded = false;

dir = 0;

