/// @description scr_phys_swim_apply()
/// @function scr_phys_swim_apply

if inp_jump && place_meeting(x,y,par_liquid) {
    vsp = -jump_vel*0.5;
    var plat = instance_place(x,y+1,par_platform);
    if instance_exists(plat) {
        if plat.bbox_top >= bbox_bottom {
            if plat.vsp < 0 {
                vsp += plat.vsp;
                hsp += plat.hsp;
            }
            if inp_down {
                vsp = 0;
                y += 4
            }
        }
    }
}
