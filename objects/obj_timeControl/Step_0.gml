if (keyboard_check_pressed(vk_numpad0))	{
	if (!obj_relogio.relogioParado) {
		obj_relogio.relogioParado = true;
	} else {
		obj_relogio.relogioParado = false;
	} 
	UpdateDayNight();
}

if (keyboard_check_pressed(vk_numpad1)) {obj_relogio.spd = 0;} //UpdateDayNight();}
if (keyboard_check_pressed(vk_numpad2)) {obj_relogio.spd = 1;} //UpdateDayNight();}
if (keyboard_check_pressed(vk_numpad3))	{obj_relogio.spd = 2;} //UpdateDayNight();}

if (keyboard_check_pressed(vk_add)) {
	if (obj_relogio.hora <= 22)	{obj_relogio.hora++;} else {obj_relogio.hora = 0;}
	UpdateDayNight();
}

if (keyboard_check_pressed(vk_subtract)) {
	if (obj_relogio.hora >= 1)	{obj_relogio.hora--;} else {obj_relogio.hora = 23;}
	UpdateDayNight();
}
