var width = sprite_get_width(sprite_index), height = sprite_get_height(sprite_index),
    c_x = (x-12) + width * 0.5, c_y = (y-16) + height * 0.5,
    i_inc = width / 20, j_inc = height / 20;
for (var i = 0; i < width; i += i_inc) for (var j = 0; j < height; j += j_inc) {
    with (instance_create(x + i, y + j, obj_piece)) {
        left = i; top = j; self.width = i_inc; self.height = j_inc; 
        sprite_index = other.sprite_index;
        hspeed = (x - c_x) * 0.2;
        vspeed = (y - c_y) * 0.2;
    }
}
