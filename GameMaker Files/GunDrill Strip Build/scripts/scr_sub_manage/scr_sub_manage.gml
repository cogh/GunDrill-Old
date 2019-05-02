/// @description scr_sub_manage()
/// @function scr_sub_manage

// Solid
if child_solid = true && child_solid_id = noone {
    child_solid_id = instance_create(x,y,sub_solid);
    child_solid_id.parent = id;
}
if child_solid = false && child_solid_id != noone {
    instance_destroy(child_solid_id);
}


// Platform
if child_platform = true && child_platform_id = noone {
    child_platform_id = instance_create(x,y,sub_platform);
    child_platform_id.parent = id;
}
if child_platform = false && child_platform_id != noone {
    instance_destroy(child_platform_id);
}

// Hitbox
if child_hitbox = true && child_hitbox_id = noone {
    child_hitbox_id = instance_create(x,y,sub_platform);
    child_hitbox_id.parent = id;
}
if child_hitbox = false && child_hitbox_id != noone {
    instance_destroy(child_hitbox_id);
}

// Hurtbox
if child_hurtbox = true && child_hurtbox_id = noone {
    child_hurtbox_id = instance_create(x,y,sub_hurtbox);
    child_hurtbox_id.parent = id;
}
if child_hurtbox = false && child_hurtbox_id != noone {
    instance_destroy(child_hurtbox_id);
}
