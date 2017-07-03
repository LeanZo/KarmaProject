//Desenha o proprio player
//shader_set(shader_teste);
draw_self()
//shader_reset();




if (stamina != max_stamina) {
stamina_pc = (stamina / max_stamina) * 100;
draw_healthbar(x - 20, y - 50, x + 20, y - 45, stamina_pc, c_black, c_red, c_aqua, 0, true, true);
}