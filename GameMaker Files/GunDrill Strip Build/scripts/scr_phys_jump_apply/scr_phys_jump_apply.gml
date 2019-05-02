/// @description scr_phys_jump_apply()
/// @function scr_phys_jump_apply

if inp_jump && grounded && !place_meeting(x,y,par_liquid) {
    vsp = -jump_vel;
    var plat = instance_place(x,y+1,par_platform2);
    if instance_exists(plat) {
        if plat.bbox_top >= bbox_bottom {
            if plat.vsp < 0 {
                //vsp += plat.vsp;
            }
            hsp += plat.hsp;
            if inp_down {
                //vsp = 0;
                //y += 4
            }
        }
    }
    // Jump particle
    if !(instance_exists(plat) && inp_down) {
        instance_create(x,y,obj_particle_jump);
    }
}
