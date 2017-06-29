//Inicializa as variaveis e funções globais

//Tem a ver com a movimentação e colisão, talvez seja retirado no futuro
#macro DIR_STOP		0
#macro DIR_UP		1
#macro DIR_DOWN		2 
#macro DIR_LEFT		3
#macro DIR_RIGHT	4
#macro DIR_DEAD		5

//Importante para o script 'Colisao.gml'
WallMap = layer_tilemap_get_id("Colisao");
layer_set_visible("Colisao",false);		//Esconde a camada 'Colisao' caso esteja visivel
global.WallMap = WallMap;