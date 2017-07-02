// Dialogue BOX
var argumento;
for (var i = 0; i < argument_count ; i++){
	argumento[i] = argument[i];
}

//Cria a Caixa de dialogo
var boxId = instance_create_layer(other.x, other.y, "DialogueBox", obj_dialogueBox);

//Passa os argumentos pro obj_dialogueBox
boxId.total = argument_count - 1;
boxId.timer = argumento[0];
boxId.timerOriginal = argumento[0];
for (var i = 0; i < argument_count - 1; i++){
	boxId.boxHeigth[i] = string_height(argumento[i + 1]);
	boxId.boxWidth[i] = string_width(argumento[i + 1]);
	boxId.frase[i] = argumento[i + 1];
}