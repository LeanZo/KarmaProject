//Movimentação
if (keyboard_check(ord("W")) && timer <= 0) {
y -= 8;
timer = 2.5;
}else if (keyboard_check(ord("S")) && timer <= 0) {
y += 8;
timer = 2.5;
}else if (keyboard_check(ord("A")) && timer <= 0) {
x -= 8;
timer = 2.5;
}else if (keyboard_check(ord("D")) && timer <= 0) {
x += 8;
timer = 2.5;
}

//Não permite que o personagem sai da room
x = min(x, room_width);
x = max(x, 0);
y = min(y, room_height);
y = max(y, 0);
timer--;