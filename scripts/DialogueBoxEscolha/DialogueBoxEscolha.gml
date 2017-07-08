// Dialogue BOX Escolha
var argumento;
for (var i = 0; i < argument_count ; i++){
	argumento[i] = argument[i];
}

//Cria a Caixa de dialogo
var boxId = instance_create_layer(other.x, other.y, "DialogueBox", obj_dialogueBoxEscolha);

//Passa os argumentos pro obj_dialogueBox
boxId.total = argument_count - 1;
boxId.frase = argumento[0];
boxId.fraseOriginal = argumento[0];
for (var i = 0; i < argument_count - 1; i++){
	boxId.boxHeigth[i] = string_height(argumento[i + 1]);
	boxId.boxWidth[i] = string_width(argumento[i]);
	boxId.resposta[i] = argumento[i + 1];
}
//obj_dialogueBoxEscolha("Arroz, feijao ou batata?", "Arroz", "Feijao", "Batata");