draw_set_alpha(alpha);
draw_set_color(c_navy);
viewX = camera_get_view_x(view_camera[0]);
viewY = camera_get_view_y(view_camera[0]);
draw_rectangle(viewX, viewY, viewX + 600, viewY + 338, false);
draw_set_alpha(1);