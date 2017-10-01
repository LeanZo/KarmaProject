///CONECT TO A SERVER

//Ask player for ip & port
var ip = get_string("Insira o IP do servidor","127.0.0.1");
var port = real(get_string("Defina a porta?","7777"));

//Setup client, on success go to waiting room, otherwise end game
if (htme_clientStart(ip, port)) {
    room_goto(htme_rom_connecting); //NOTE THAT WE ARE GOING TO ANOTHER ROOM HERE THAN THE SERVER ABOVE
} else {
    show_message("Não foi possivel conectar! Verifique a conexão!");
    game_end();
}