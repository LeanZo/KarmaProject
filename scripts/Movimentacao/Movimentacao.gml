//Movimentação
if (keyboard_check(ord("W"))) {
y -= 2;

}else if (keyboard_check(ord("S"))) {
y += 2;

}else if (keyboard_check(ord("A"))) {
x -= 2;

}else if (keyboard_check(ord("D"))) {
x += 2;

}

//Não permite que o personagem sai da room
x = min(x, room_width);
x = max(x, 0);
y = min(y, room_height);
y = max(y, 0);