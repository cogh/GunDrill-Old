/// @description scr_create_camera()
/// @function scr_create_camera

if instance_exists(obj_train_platform) {
    cam_x = obj_train_platform.x;
    cam_y = obj_train_platform.y;
}
else {
    cam_x = x;
    cam_y = y;
}
instance_create(cam_x,cam_y,obj_camera);
obj_camera.x = cam_x;
obj_camera.y = cam_y;
