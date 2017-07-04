//Desenha o proprio player
draw_self()

//Desenha barra de stamina
if (stamina != max_stamina) {
stamina_pc = (stamina / max_stamina) * 100;
draw_healthbar(x - 20, y - 50, x + 20, y - 45, stamina_pc, c_black, c_red, c_aqua, 0, true, true);
}