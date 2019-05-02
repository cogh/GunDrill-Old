/// @description scr_die()
/// @function scr_die

// Die
if hp <= 0 {
    instance_create(x,y,obj_explosion);
    instance_destroy();
	obj_camera.shake = 2;
}