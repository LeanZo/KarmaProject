//---Verifica qual dos argumentos é mais largo-----------------------
if (controle) {

/*
for (var i = 0; i < array_length_1d(resposta); i++) {

	var width = string_width(resposta[i]);

		if (!controleDeLaco) {
			maxWidth = width;
			controleDeLaco = true;
			} else if (width > maxWidth) {
				maxWidth = width;
			}

}

if (string_width(frase) > maxWidth) maxWidth = string_width(frase);
*/
var width = string_width(frase);
maxWidth = width;
controle = false;

}
//-------------------------------------------------------------------
