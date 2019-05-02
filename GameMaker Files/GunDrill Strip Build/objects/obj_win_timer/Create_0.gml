/// @description  Create

time = obj_run_timer.timer;
time_m = time div 60;
time_s = round(time mod 60);
time = string(time_m) + "m " + string(time_s) + "s";

