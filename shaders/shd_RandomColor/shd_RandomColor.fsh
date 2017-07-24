//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;
uniform vec3 randomColor;

void main()
{
	gl_FragColor = texture2D( gm_BaseTexture,v_vTexcoord);
	gl_FragColor.rgb *= randomColor;	
}


/* EXEMPLO DE COMO IMPLEMENTAR

var randoom = shader_get_uniform(shd_RandomColor, "randomColor");
shader_set(shd_RandomColor);
shader_set_uniform_f(randoom, random(1.0), random(1.0), random(1.0));
draw_surface(application_surface, 0, 0);
shader_reset();
*/
