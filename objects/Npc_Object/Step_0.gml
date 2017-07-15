if (dialogando) {

	if (DialogueInacio){
		DialogueBox(60, "Oi, tudo bem?", "Vamos testar o-", "Novo sistema de-", "Escolhas!");
		timer = 60 * 4;
		DialogueInacio = false;
		DialogueInacio2 = false;
		DialogueInacio2Resp = false;
	}
	
	timer--;
	if	(timer == 0) {
		DialogueInacio2 = true;
	}
	
	if (DialogueInacio2) {
		DialogueBoxEscolha("O que voce acha do meu jogo?", "Dahorinha", "Uma porcaria");	
		DialogueInacio2Resp = true;
		DialogueInacio2 = false;
	}

	if (DialogueInacio2Resp) {
		if (resposta == 0) {
			DialogueBox(60, "Que topzera!", "Sabia que ia gostar!");
			dialogando = false;
		} else if (resposta == 1){
			DialogueBox(60, "Ah, va se ferrar meu!", "Muleke ridiculo!", "SO ME DA KEY!");
			dialogando = false;
		}
	}

}