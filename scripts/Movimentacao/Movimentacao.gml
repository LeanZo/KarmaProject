
//Isso é o que move o player(è o que movia, agora ele se move no script Colisao.gml)
/*
if ( target_x > x ) { x += 3 } //Direito
if ( target_x < x ) { x -= 3 } //Esquerda    <--- Ignorar isso por enquanto
if ( target_y > y ) { y += 3 } //Baixo
if ( target_y < y ) { y -= 3 } //Cima
*/

//Caso o player colida, isso impede ele de ficar travado
if (colidiu) {target_x = x; target_y = y;}

//Verifica se ja terminou o movimento e pausa a animação
if ( target_x == x && target_y == y ) {
    moving = false;
    image_speed = 0;
	dy = 0;
	dx = 0;
	
}

//Aleatoriza o primeiro passo do jogador
if (indexParadoTimer <= 0) image_index = choose (1,3);

//Inicia animação e indica qual movimento deve ser feito
if ( keyboard_check(ord("A")) && !moving ) {
    moving = true;
	target_x -= 3;
	dy = 0;
	dx -= 3;
    image_speed = 5;
    sprite_index = spr_playerLeft;
	indexParadoTimer = 10;
	dir = DIR_LEFT;
}
if ( keyboard_check(ord("D")) && !moving ) {
    moving = true;
    target_x += 3;  
	dy = 0;
	dx += 3;
    image_speed = 5;
    sprite_index = spr_playerRight;
	indexParadoTimer = 10;
	dir = DIR_RIGHT;
}
if ( keyboard_check(ord("W")) && !moving ) {
    moving = true;
    target_y -= 3;
	dy -= 3;
	dx = 0;
    image_speed = 5;
    sprite_index = spr_playerUp;
	indexParadoTimer = 10;
	dir = DIR_UP;
}
if ( keyboard_check(ord("S")) && !moving ) {
    moving = true;
    target_y += 3;
	dy += 3;
	dx = 0;
    image_speed = 5;
    sprite_index = spr_playerDown;
	indexParadoTimer = 10;
	dir = DIR_DOWN;
}
indexParadoTimer--;
Colisao(id, dx, dy, 16, 16, 16, 2);
