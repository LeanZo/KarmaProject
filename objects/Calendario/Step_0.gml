/// @description Insert description here
// You can write your code in this editor


// Fim do Dia
fim_do_dia = false;
dias_do_ano = "1";

if (dias_do_ano == "366"){
	Ano += "1";
}

if (fim_do_dia == true){
	if (Dia == "31"){
	Dia = "0";
		if (Mes == "12"){
		Mes = "0";
		}
	Mes += "1"
	}
	Dia += "1";
	dias_do_ano += "1";
	fim_do_dia = false;
}