///initRoom
/********** OUTER WALL **********/
for (var i = 0; i < room_width div 8; i++) {
    instance_create(i*8,0,obj_wall2);
    instance_create(i*8,room_height-8,obj_wall2);
}
for (var i = 0; i < room_height div 8; i++) {
    instance_create(0,i*8,obj_wall2);
    instance_create(room_width-8,i*8,obj_wall2);
}
globalvar mpGrid;
mpGrid = mp_grid_create(0,0,room_width div gridSize,room_height div gridSize,gridSize,gridSize);
if (instance_exists(obj_water)) {mp_grid_add_instances(mpGrid,obj_water,false);}
//if (instance_exists(obj_wall)) {mp_grid_add_instances(mpGrid,obj_wall,false);}
if (instance_exists(obj_wall2)) {mp_grid_add_instances(mpGrid,obj_wall2,false);}
if (!instance_exists(obj_control)) {
    instance_create(0,0,obj_control);
}
