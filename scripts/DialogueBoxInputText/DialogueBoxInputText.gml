// Dialogue BOX
var frase = argument0;
var inputvarId = argument1;

obj_player.dialogando = true;
other.inputTextDone = false;

//Cria a Caixa de dialogo
var boxId = instance_create_layer(other.x, other.y, "DialogueBox", obj_dialogueBoxInputText);

//Passa os argumentos pro obj_dialogueBox
boxId.Caller = other.id;
boxId.total = argument_count - 1;
boxId.frase = frase;
boxId.inputvarId = inputvarId;
//for (var i = 0; i < argument_count - 1; i++){
//	boxId.boxHeigth[i] = string_height(argumento[i + 1]);
//	boxId.boxWidth[i] = string_width(argumento[i + 1]);
//}
