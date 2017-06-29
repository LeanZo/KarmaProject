// Dialogue BOX

var frase = argument0;
var timer = argument1;

//Cria a Caixa de dialogo
var boxId = instance_create_layer(x, y, "DialogueBox", obj_dialogueBox);
boxId.timer = timer;
boxId.boxHeigth = string_height(frase);
boxId.boxWidth = string_width(frase);
boxId.frase = frase;