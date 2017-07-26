if (dialogando) {

	if (DialogueInacio){
		DialogueBox(60, "Oi, tudo bem?", "Você é novo aqui?", "Você parece legal");
		timer = 60 * 3;
		DialogueInacio = false;
		DialogueInacio2 = false;
		DialogueInacio3 = false;
		DialogueInacio4 = false;
		DialogueInacio5 = false;
		DialogueInacio6 = false;
		DialogueInacio7 = false;
	}
	
	timer--;
	if	(timer == 0) {
		DialogueInacio2 = true;
	}
	
	if (DialogueInacio2) {
		DialogueBoxInputText("Qual o seu nome?", 0);	
		DialogueInacio2 = false;
		DialogueInacio3 = true;		
	}

	if (DialogueInacio3 && inputTextDone) {
		DialogueBoxEscolha("Sabe quem tambem se chama " + inputvar[0] + "?", "Quem?", "Não estou interessado");
		DialogueInacio3 = false;
			
	}
	
	if (!controle1) {
		DialogueInacio4 = true;
		controle1 = true;
	}
	
	if (DialogueInacio4) {
		if (resposta == 0) {
			DialogueBox(90, "Meu tio que me estuprava");
			timer3 = 90 * 1;
			DialogueInacio4 = false;
		} else if (resposta == 1){
			DialogueBox(90, "Nossa...", "Não precisava ser tão arrogante!");
			timer3 = 90 * 2;
			DialogueInacio4 = false;
		}
		resposta = 666;
	}
	
	timer3--;
	if	(timer3 == 0) {
			DialogueInacio5 = true;
	}
	
	if (DialogueInacio5) {
		DialogueBoxEscolha("Enfim, Ta interessado na rifa?", "Que rifa?", "Não, obrigado");
		DialogueInacio5 = false;
	}
	
	if (!controle2) {
		DialogueInacio6 = true;
		controle2 = true;
	}
	
	if (DialogueInacio6) {
		if (resposta == 0) {
			DialogueBox(90, "A rifa do meu cu na sua linguiça!");
			timer4 = 90 * 1;
			DialogueInacio6 = false;
		} else if (resposta == 1){
			DialogueBox(90, "Você é bem chato ein!?");
			timer4 = 90 * 1;
			DialogueInacio6 = false;
		}
	}
	
	timer4--;
	if	(timer4 == 0) {
		DialogueInacio7 = true;
	}
	
	if (DialogueInacio7) {
		if (resposta == 0) {
			DialogueBox(60, "hahahaha");
			timer5 = 60 * 1;
			dialogando = false;
		} else if (resposta == 1){
			DialogueBox(60, "Vai embora meu");
			timer5 = 60 * 1;
			dialogando = false;
		}
	
	}

}

