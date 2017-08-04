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
instance_create(0,0,obj_control);