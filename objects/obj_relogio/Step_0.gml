//timer--;
if (!relogioParado) {

minutoCounter++;
if (minutoCounter >= minutoSpeed[spd]) { //1 segundo = 30 (por padrão, pode ser que seja diferente dependendo da room)
	minuto++;
	minutoCounter = 0;
	}
/*
if (timer == 0) {
	if (hora < 23) {
		hora++;
		minuto = 00;        <<<<     codigo antigo         
	} else {
		hora = 0;
		minuto = 00;
	}
	timer = 1800; //1800
}
*/
if (minuto == 60) {
	if (hora < 23) {
		hora++;
		minuto = 00;
	} else {
		hora = 0;
		minuto = 00;
	}
}

}