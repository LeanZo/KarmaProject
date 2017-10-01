//---Funções ONLINE---------------
mp_sync();
mp_addPosition("Pos",5*room_speed);
mp_setType("Pos",mp_type.SMART);
mp_tolerance("Pos",40);

mp_addBuiltinBasic("basicDrawing",15*room_speed);
mp_setType("basicDrawing",mp_type.SMART);

mp_addBuiltinPhysics("basicPhysics",15*room_speed);
mp_setType("basicPhysics",mp_type.SMART);

mp_add("controls","pressed_ESQ,pressed_DIR,pressed_DOWN,pressed_UP,pressed_SHIFT",buffer_bool,1);
//--------------------------------
Globais();
moving = false; //importante pra movimentação
indexParadoTimer = 0; // importante pra movimentção 
image_speed = 0; //Inicia com a animação pausada

//Importante para a Colisao
dir = DIR_STOP;
Wallmap = global.WallMap;
colidiu = false;

dialogando = false;

walkmode = "foot";
stamina_is_using = false;
stamina_ready = true;
//----PLAYER's STATUS-------------------
max_stamina = 100;
stamina = 100;

//----SKILLS----------------------------
skill_aerobica = 1;

//---VARIAVEIS ONLINE-------------------
self.pressed_ESQ = false;
self.pressed_DIR = false;
self.pressed_UP = false;
self.pressed_DOWN = false;
self.pressed_SHIFT = false;
self.image_blend = irandom(16777215);