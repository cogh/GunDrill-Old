/// @description scr_adj_free()
/// @function scr_adj_free

for(var _i = -1; _i <= 1; _i++){//Collums
    for(var _j = -1; _j <= 1; _j++){//Rows
        if(_i != 0 || _j != 0){
            if (!place_meeting
            (
                x+_i,
                y+_j,
                par_solid
            )){//If neighbour cell is not a wall
                return true;
            }
        }
    }
}
return false;
