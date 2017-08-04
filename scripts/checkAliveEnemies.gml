///checkAliveEnemies()
var a = 0;
for (var i = 0; i < instance_number(obj_enemy_parent); i++) {
    var o = instance_find(obj_enemy_parent,i);
    if (o.canMove) {
        a++;
    }
}
return a;