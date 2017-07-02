timer--;
if (timer = 0) {
	if (subTotal < total) {
		i++; subTotal++; timer = timerOriginal;
	}
}
if(timer = 0) instance_destroy();