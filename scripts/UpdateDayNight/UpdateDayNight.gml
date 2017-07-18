/*---Caso haja troca de rooms, ou mudança de horario, chame este script,
isso garante que os filtros estejam corretos.--------------------------*/
		obj_DayNightNavy.alpha = 0.00;
		obj_DayNightFuchsia.alpha = 0.00;
		obj_DayNightRed.alpha = 0.00;

	if (obj_relogio.hora >= 19 || obj_relogio.hora <= 4) {
		obj_DayNightNavy.alpha = 0.40;
		obj_DayNightFuchsia.alpha = 0.00;
		obj_DayNightRed.alpha = 0.00;
	}
	
	if (obj_relogio.hora >= 7 && obj_relogio.hora <= 16) {
		obj_DayNightNavy.alpha = 0.00;
		obj_DayNightFuchsia.alpha = 0.00;
		obj_DayNightRed.alpha = 0.00;
	}
	
	if (obj_relogio.hora == 5) {
		obj_DayNightNavy.alpha = 0.40;
		if (obj_relogio.minuto >= 29) {
			obj_DayNightNavy.alpha -= (0.0068 * (obj_relogio.minuto - 28));
		}
		if (obj_relogio.minuto >= 44) {
			obj_DayNightFuchsia.alpha += (0.0033 * (obj_relogio.minuto - 43));
		}
	}
	
	if (obj_relogio.hora == 6) {
		if (obj_relogio.minuto <= 29) { //0 = 1 // 1 = 2 // 29 = 30
			obj_DayNightNavy.alpha = 0.40 - (0.0068 * (59 - 28));
			obj_DayNightNavy.alpha -= (0.0068 * (obj_relogio.minuto + 1));
		}
		if (obj_relogio.minuto <= 19) { 
			obj_DayNightFuchsia.alpha = 0.00 + (0.0033 * (59 - 43));	
			obj_DayNightFuchsia.alpha -= (0.0033 * (obj_relogio.minuto + 1));
		}
	}
	
	if (obj_relogio.hora == 17) {
		if (obj_relogio.minuto >= 0 && obj_relogio.minuto <= 39) {
			obj_DayNightRed.alpha += (0.0013 * (obj_relogio.minuto + 1));		
		}
		if (obj_relogio.minuto >= 40) {
			obj_DayNightRed.alpha = (0.0013 * (39 + 1));
			obj_DayNightRed.alpha -= (0.0025 * (obj_relogio.minuto - 39));
		
		}
		if(obj_relogio.minuto >= 29) {
			obj_DayNightNavy.alpha += (0.0068 * (obj_relogio.minuto - 28));
		}
	}
	
	if (obj_relogio.hora == 18) {
		if(obj_relogio.minuto <= 29) {
				obj_DayNightNavy.alpha = (0.0068 * (59 - 28));
				obj_DayNightNavy.alpha += (0.0068 * (obj_relogio.minuto + 1));
			}
	}