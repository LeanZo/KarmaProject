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

float noise( vec2 p)
{
    float x1 = rand(vec2(floor(p.x),floor(p.y)));
    float x2 = rand(vec2(ceil(p.x),floor(p.y)));
    float top = mix(x1,x2,smoothstep(0.0,1.0,fract(p.x)));
    
    x1 = rand(vec2(floor(p.x),ceil(p.y)));
    x2 = rand(vec2(ceil(p.x),ceil(p.y)));
    float bottom = mix(x1,x2,smoothstep(0.0,1.0,fract(p.x)));
    
    return mix(top,bottom,smoothstep(0.0,1.0,fract(p.y)));
}

void main()
{
	float n = (noise(v_vPosition/16.0)*0.2 +noise(v_vPosition/32.0)*0.2 
		+noise(v_vPosition/64.0)*0.3 +noise(v_vPosition/128.0)*0.3 );
	gl_FragColor = vec4(vec3(n),1.0);
}

/* EXEMPLO DE COMO DEIXAR O SHADER ANIMADO
var randoom = shader_get_uniform(shd_PerlinNoise, "aleatorio");
shader_set(shd_Noise);
shader_set_uniform_f(randoom, random(1000.0));
draw_surface(application_surface, 0, 0);
shader_reset();
*/