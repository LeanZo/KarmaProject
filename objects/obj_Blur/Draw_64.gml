///Draw
//get the blur uniforms
var bsize = shader_get_uniform(shd_Blur,"size");
var bradius = shader_get_uniform(shd_Blur,"radius");
if enable
{   
    shader_set(shd_Blur)
}
//set the blur uniforms
val += (mouse_wheel_down()-mouse_wheel_up())//Mouse wheel
shader_set_uniform_f(bsize,512,512)//size of background
shader_set_uniform_f(bradius,val)//radius of blur
draw_surface(application_surface, 0, 0)//replacement draw codes go here


if enable
{
    shader_reset()//this ends the shader effect
}
draw_text(16,16,"Press space to enable blur Move mouse wheel to change blur amount")//guide text