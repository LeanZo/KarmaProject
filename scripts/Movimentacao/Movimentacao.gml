//Isso é o que move o player
if ( target_x > x ) { x += 3 } //Direito
if ( target_x < x ) { x -= 3 } //Esquerda
if ( target_y > y ) { y += 3 } //Baixo
if ( target_y < y ) { y -= 3 } //Cima

//Verifica se ja terminou o movimento e pausa a animação
if ( target_x == x && target_y == y ) {
    moving = false;
    image_speed = 0;
	
}
if (indexParadoTimer <= 0) image_index = choose (1,3);
//Inicia animação e indica qual movimento deve ser feito
if ( keyboard_check(ord("A")) && !moving ) {
    moving = true;
	target_x -= 3;
    image_speed = 5;
    sprite_index = spr_playerLeft;
	indexParadoTimer = 10;
}
if ( keyboard_check(ord("D")) && !moving ) {
    moving = true;
    target_x += 3;      //0  0
    image_speed = 5;    //1  1
    sprite_index = spr_playerRight;
	indexParadoTimer = 10;
}
if ( keyboard_check(ord("W")) && !moving ) {
    moving = true;
    target_y -= 3;
    image_speed = 5;
    sprite_index = spr_playerUp;
	indexParadoTimer = 10;
}
if ( keyboard_check(ord("S")) && !moving ) {
    moving = true;
    target_y += 3;
    image_speed = 5;
    sprite_index = spr_playerDown;
	indexParadoTimer = 10;
}
indexParadoTimer--;