/// @description st_boss_dead();
/// @function st_boss_dead

// Initialise
if state_timer = 0 {
    // Mask
    mask_index = mask_boss;
    // Sprite
    sprite_index = spr_boss_dead;
    image_index = 0;
    // Hitbox
    hitbox_active = false;
}
state_timer++;

// Explode
if state_timer = 60 {
    instance_create(x,y,obj_explosion);
    instance_destroy();
}
