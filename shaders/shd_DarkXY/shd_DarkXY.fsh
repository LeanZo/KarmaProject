//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

void main()
{
    gl_FragColor = texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor *= vec4(vec3(v_vPosition.y/512.0),1.0);
//	gl_FragColor *= vec4(vec3(v_vPosition.x/512.0),1.0);
//	gl_FragColor *= vec4(vec3(-1.0*(1.0 - v_vPosition.y)/512.0),1.0);
//	gl_FragColor /= vec4(vec3(v_vPosition.x*512.0),1.0);
}
