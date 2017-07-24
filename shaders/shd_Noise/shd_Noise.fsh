//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;
//uniform float aleatorio;



float rand(vec2 p) {

 return fract( cos( dot( p, vec2(5.237,6.378)))*8463.648); // * aleatorio

}

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor *= vec4( vec3( rand(v_vPosition) ), 1.0);
}

/* EXEMPLO DE COMO DEIXAR O SHADER ANIMADO
var randoom = shader_get_uniform(shd_Noise, "aleatorio");
shader_set(shd_Noise);
shader_set_uniform_f(randoom, random(1000.0));
draw_surface(application_surface, 0, 0);
shader_reset();
*/