//Pausa a animação
image_speed = 0;
	
dy = 0;
dx = 0;
moving = false;

//----Stamina IF's--------------------------------------------
if (keyboard_check_released(vk_shift)) stamina_check = false;

if (!stamina_check && stamina != max_stamina) stamina += 2;

if (stamina > max_stamina) stamina = max_stamina;
//------------------------------------------------------------

//Aleatoriza o primeiro passo do jogador
if (indexParadoTimer = 0) image_index = choose (0,2);

//Inicia animação e indica qual movimento deve ser feito
if ( keyboard_check(ord("A")) && !moving ) {
    if (keyboard_check(vk_shift) && stamina > 0) {dx -= 1 * skill_aerobica; stamina--; stamina_check = true;}
	moving = true;
	dy = 0;
	dx -= 3;
    image_speed = 5;
    sprite_index = spr_playerLeft;
	indexParadoTimer = 10;
	dir = DIR_LEFT;
}
if ( keyboard_check(ord("D")) && !moving ) {
    if (keyboard_check(vk_shift) && stamina > 0) {dx += 1 * skill_aerobica; stamina--; stamina_check = true;}
	moving = true;
	dy = 0;
	dx += 3;
    image_speed = 5;
    sprite_index = spr_playerRight;
	indexParadoTimer = 10;
	dir = DIR_RIGHT;
}
if ( keyboard_check(ord("W")) && !moving ) {
    if (keyboard_check(vk_shift) && stamina > 0) {dy -= 1 * skill_aerobica; stamina--; stamina_check = true;}
    moving = true;
	dy -= 3;
	dx = 0;
    image_speed = 5;
    sprite_index = spr_playerUp;
	indexParadoTimer = 10;
	dir = DIR_UP;
}
if ( keyboard_check(ord("S")) && !moving ) {
    if (keyboard_check(vk_shift) && stamina > 0) {dy += 1 * skill_aerobica; stamina--; stamina_check = true;}
    moving = true;
	dy += 3;
	dx = 0;
    image_speed = 5;
    sprite_index = spr_playerDown;
	indexParadoTimer = 10;
	dir = DIR_DOWN;
}
indexParadoTimer--;
Colisao(id, dx, dy, 16, 16, 16, 2);
