//Detecta resolução
displayW = display_get_width();
displayH = display_get_height();
defaultViewportW = 1280;
defaultViewportH = 720;
//Saber se esta ou não em fullscreen
interruptor = true;
//Calculo para manter o aspect ratio
defaultCameraW = 600;
defaultCameraH = 338;
newCameraH = round((displayH / displayW) * defaultCameraW );