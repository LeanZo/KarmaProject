//Pausa a animação
image_speed = 0;
	
dy = 0;
dx = 0;


//----Stamina IF's--------------------------------------------
if (!other.pressed_SHIFT) {stamina_is_using = false; stamina_ready = true;}

if (stamina == 0 && stamina_is_using) {stamina_is_using = false; stamina_ready = false;}

if (!moving && stamina_is_using) stamina_is_using = false;

if (!stamina_is_using && stamina != max_stamina) stamina += 1;

if (stamina > max_stamina) stamina = max_stamina;
//------------------------------------------------------------

moving = false;

//Aleatoriza o primeiro passo do jogador
if (indexParadoTimer = 0) image_index = choose (0,2);

//Inicia animação e indica qual movimento deve ser feito
if ( other.pressed_ESQ && !moving ) {
    if (other.pressed_SHIFT && stamina > 0 && stamina_ready) {dx -= 1 * skill_aerobica; stamina -= 0.5; stamina_is_using = true;}
	moving = true;
	dy = 0;
	dx -= 2;//3 <- quando rodando a 30 FPS
    image_speed = 5;
    sprite_index = spr_playerLeft;
	indexParadoTimer = 20;//10 <- quando rodando a 30 FPS
	dir = DIR_LEFT;
}
if ( other.pressed_DIR && !moving ) {
    if (other.pressed_SHIFT && stamina > 0 && stamina_ready) {dx += 1 * skill_aerobica; stamina -= 0.5; stamina_is_using = true;}
	moving = true;
	dy = 0;
	dx += 2;
    image_speed = 5;
    sprite_index = spr_playerRight;
	indexParadoTimer = 20;
	dir = DIR_RIGHT;
}
if ( other.pressed_UP && !moving ) {
    if (other.pressed_SHIFT && stamina > 0 && stamina_ready) {dy -= 1 * skill_aerobica; stamina -= 0.5; stamina_is_using = true;}
    moving = true;
	dy -= 2;
	dx = 0;
    image_speed = 5;
    sprite_index = spr_playerUp;
	indexParadoTimer = 20;
	dir = DIR_UP;
}
if ( other.pressed_DOWN && !moving ) {
    if (other.pressed_SHIFT && stamina > 0 && stamina_ready) {dy += 1 * skill_aerobica; stamina -= 0.5; stamina_is_using = true;}
    moving = true;
	dy += 2;
	dx = 0;
    image_speed = 5;
    sprite_index = spr_playerDown;
	indexParadoTimer = 20;
	dir = DIR_DOWN;
}
indexParadoTimer--;
Colisao(id, dx, dy, 16, 16, 16, 2);
