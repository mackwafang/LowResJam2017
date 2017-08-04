///fireShell()
assert(object_index == obj_player);
var t_a = sin(degtorad(displayTurretAngle));
var t_d = sin(degtorad(turretAngle));
if (t_a == t_d) {
    reload = true;
    fire -= 2;
    var shell = instance_create(x+(sprite_width/2),y+(sprite_height/2),obj_shell);
    shell.direction = displayTurretAngle;
    shell.image_angle = displayTurretAngle;
    shell.speed = 5;
    shell.type = ammoType;
    if (ammoType != 0) {
        ammo--;
        if (ammo == 0) {
            ammoType = 0;
        }
    }
}