if dead = true {
    var xx = x - sprite_xoffset + (sprite_width/2);
    var yy = y - sprite_yoffset + (sprite_height/2);
    instance_create(xx,yy,obj_explosion_silent);
    audio_play_sound(sb_explosion_ore,0,0);
    repeat(irandom_range(3,5)) {
        var gem = instance_create(xx,yy,obj_ore);
        gem.vsp = -5
        gem.hsp = choose(-3,-1,1,3);
    }
    instance_destroy();
}

