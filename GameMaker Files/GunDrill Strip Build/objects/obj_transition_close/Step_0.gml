thickness+=8;

if thickness >= max(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )) {
    room_goto(destination);
}

