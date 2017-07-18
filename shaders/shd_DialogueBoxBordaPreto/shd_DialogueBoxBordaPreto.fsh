//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    
	vec4 original = texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 borda = vec4 (0.0, 0.0, 0.0, original.a); 
	
	if (original.b > 0.0) {
		borda = vec4 (1.0, 1.0, 1.0, original.a);
	}
	
	gl_FragColor = vec4 (borda.r, borda.g, borda.b, original.a);
}
