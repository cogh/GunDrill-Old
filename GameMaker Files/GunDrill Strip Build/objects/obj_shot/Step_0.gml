/// @description  temp

// Move
if boom = false {
    x += lengthdir_x(5,dir);
    y += lengthdir_y(5,dir);
}

// Collide with enemy
var collision = instance_place(x,y,par_enemy);
if instance_exists(collision) && boom = false {
    if !collision.invulnerable {
    scr_send_damage(collision,1,dir);
        boom = true;
        sprite_index = spr_shot_hit;
        alarm[0] = 4;
    }
    else {
        instance_create(x,y,obj_shot_splash_invul);
        instance_destroy();
    }
}

// Collide with solid
var collision = instance_place(x+lengthdir_x(5,dir),y+lengthdir_y(5,dir),par_solid);
if instance_exists(collision) && boom = false {
    // Move
    while !place_meeting(x+lengthdir_x(1,dir),y+lengthdir_y(1,dir),par_solid) {
        x += lengthdir_x(1,dir);
        y += lengthdir_y(1,dir);
    }
    x = round(x);
    y = round(y);
    // Create splash
    var splash = instance_create(x,y,obj_shot_splash_dir);
    // Instance destroy
    instance_destroy();
    splash.dir = dir;
	
	// Breakable
	if collision.object_index = obj_gemblock || collision.object_index = obj_breakable {
	    scr_send_damage(collision,1,dir);
	    boom = true;
	    sprite_index = spr_shot_hit;
	    alarm[0] = 4;
	}
}

// Timer
timer++;

// Distance limit
if timer = 25 {
    instance_destroy();
}

