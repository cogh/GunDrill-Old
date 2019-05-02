/// @description Shoot(obj,dir,speed)
/// @function Shoot
/// @param obj
/// @param dir
/// @param speed

// Decrease timer
shot_timer -= (1*shot_rate)/room_speed;

if shot_timer <= 0 {
    // Shoot
    scr_shoot(argument0,argument1,argument2);
    // Decrease timer with remainder
    shot_timer = 1+shot_timer;
}
