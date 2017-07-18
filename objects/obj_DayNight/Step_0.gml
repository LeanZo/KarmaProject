//---Pausa o filtro caso o relogio esteja parado----------------------------------
if (!obj_relogio.relogioParado) {

//---Configuração dos alphas------------------------------------------------------
switch (obj_relogio.hora) {
	
//---Azul e Rosa----------------------------------------------------------
	case 5:
		if(obj_relogio.minuto >= 29) {
			if (minuto != obj_relogio.minuto) {
				obj_DayNightNavy.alpha -= 0.0068;
					if (obj_relogio.minuto >= 44) {
						obj_DayNightFuchsia.alpha += 0.0033;	
					}
				minuto = obj_relogio.minuto;
			}
		}
	break;

	case 6:
		if(obj_relogio.minuto <= 29) {
			if (minuto != obj_relogio.minuto) {
				obj_DayNightNavy.alpha -= 0.0068;
					if (obj_relogio.minuto <= 19) {
						obj_DayNightFuchsia.alpha -= 0.0025;	
					}
				minuto = obj_relogio.minuto;
			}
		}
	break;
//------------------------------------------------------------------------
	//---Reseta o alpha-----------------
	case 7:
		obj_DayNightNavy.alpha = 0.0000;	
		obj_DayNightFuchsia.alpha = 0.0000;
	break;
	//----------------------------------
	
	case 17:
	//---Vermelho-------------------------------------------------------
		if (obj_relogio.minuto >= 0 && obj_relogio.minuto <= 39) {
			if (minuto2 != obj_relogio.minuto) {
				obj_DayNightRed.alpha += 0.0013;
				minuto2 = obj_relogio.minuto;
			} 
			
		} else if (minuto2 != obj_relogio.minuto){			
			obj_DayNightRed.alpha -= 0.0025;
			minuto2 = obj_relogio.minuto;
		}
	//------------------------------------------------------------------
		
	//---Azul------------------------------------------
		if(obj_relogio.minuto >= 29) {
			if (minuto != obj_relogio.minuto) {
				obj_DayNightNavy.alpha += 0.0068;
				minuto = obj_relogio.minuto;
			}
		}
	//-------------------------------------------------
	break;
	
	case 18:
		//---Azul------------------------------------------
		if(obj_relogio.minuto <= 29) {
			if (minuto != obj_relogio.minuto) {
				obj_DayNightNavy.alpha += 0.0068;
				minuto = obj_relogio.minuto;
			}
		}
		//-------------------------------------------------
		//---Reseta o alpha------------
		obj_DayNightRed.alpha = 0.0000;
		//-----------------------------
	break;
	//---Reseta o alpha-------------------
	case 19:
		obj_DayNightNavy.alpha = 0.4000;
	break;
	//------------------------------------
	
}
//--------------------------------------------------------------------------------

}
//--------------------------------------------------------------------------------