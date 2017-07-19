if (DEBUG) {
draw_set_color(c_fuchsia);
draw_text(camera_get_view_x(view_camera[0])+20, camera_get_view_y(view_camera[0])+20, "FPS: " + string(fps));
draw_text(camera_get_view_x(view_camera[0])+20, camera_get_view_y(view_camera[0])+40, "VSync: " + string(global.vsync));
}