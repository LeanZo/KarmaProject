if(htme_isLocal()) {
	//---Codigo relacionado ao online---
	self.pressed_ESQ = keyboard_check(ord("A"));
	self.pressed_DIR = keyboard_check(ord("D"));
	self.pressed_UP = keyboard_check(ord("W"));
	self.pressed_DOWN = keyboard_check(ord("S"));
	self.pressed_SHIFT = keyboard_check(vk_shift);
	//----------------------------------
}

mp_map_syncIn("pressed_ESQ",self.pressed_ESQ);
mp_map_syncIn("pressed_DIR",self.pressed_DIR);
mp_map_syncIn("pressed_DOWN",self.pressed_DOWN);
mp_map_syncIn("pressed_UP",self.pressed_UP);
mp_map_syncIn("pressed_SHIFT",self.pressed_SHIFT);
