//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 OC = texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 timeShader = vec4(OC.r + 0.05, OC.g + 0.0, OC.b + 0.05, OC.a);
    gl_FragColor = vec4(timeShader.r, timeShader.g, timeShader.b, timeShader.a);
}