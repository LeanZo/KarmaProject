timer--;
minutoCounter++;
if (minutoCounter = 30) {
	minuto++;
	minutoCounter = 0;
	}
if (timer == 0) {
	if (hora < 23) {
		hora++;
		minuto = 00;
	} else {
		hora = 0;
		minuto = 00;
	}
	timer = 60;
}