/// @description cycle(value, min, max)
/// @function cycle
/// @param value
/// @param  min
/// @param  max
var result, delta;
delta = (argument2 - argument1);
result = (argument0 - argument1) mod delta;
if (result < 0) result += delta;
return result + argument1;
