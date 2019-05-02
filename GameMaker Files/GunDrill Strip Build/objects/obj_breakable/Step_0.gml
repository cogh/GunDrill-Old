/// @description  Step

if dead = true {
    var xx = x - sprite_xoffset + (sprite_width/2);
    var yy = y - sprite_yoffset + (sprite_height/2);
    instance_create(xx,yy,obj_explosion);
    instance_destroy();
}


scr_process_damage();
scr_die();
