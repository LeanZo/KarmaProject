randomize();
Globais();

moving = false; //importante pra movimentação
indexParadoTimer = 0; // importante pra movimentção 
image_speed = 0; //Inicia com a animação pausada

//Importante para a Colisao
dir = DIR_STOP;
Wallmap = global.WallMap;
colidiu = false;

walkmode = "foot";
stamina_check = false;
stamina_ready = true;
//----PLAYER's STATUS-------------------
max_stamina = 100;
stamina = 100;

//----SKILLS----------------------------
skill_aerobica = 1;