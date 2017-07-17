//---Variaveis----------
minuto = 666;
minuto2 = 666;
//----------------------

//---Inicia os Filtros------------------
instance_create_layer(x, y, "lay_config", obj_DayNightNavy);
instance_create_layer(x, y, "lay_config", obj_DayNightFuchsia);
instance_create_layer(x, y, "lay_config", obj_DayNightRed);
//--------------------------------------

//---Chama o UpdateDayNight() para garantir que o filtro inicie corretamente---------/
UpdateDayNight();
//-----------------------------------------------------------------------------------/