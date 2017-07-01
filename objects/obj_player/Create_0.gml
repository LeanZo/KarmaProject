Globais(); //Chama o script

moving = false; //importante pra movimentação
indexParadoTimer = 0; // importante pra movimentção 
image_speed = 0; //Inicia com a animação pausada

//Importante para a Colisao
dir = DIR_STOP;
Wallmap = global.WallMap;
colidiu = false;

stamina_check = false;
//----PLAYER's STATUS-------------------
max_stamina = 100;
stamina = 100;

//----SKILLS----------------------------
skill_aerobica = 1;