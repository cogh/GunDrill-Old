/// @description  Step

// Run state
script_execute(state);

// Process damage packets
if state != st_boss_inactive {
    scr_process_damage();
}

// Damage player
scr_touch_damage();

// Die
if hp <= 0 && state != st_boss_dead {
    scr_state_set("dead");
}

// Manage child objects
//scr_sub_manage();

