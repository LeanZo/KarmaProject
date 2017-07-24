//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 original = texture2D( gm_BaseTexture, v_vTexcoord );
	
	gl_FragColor = vec4(vec3(1.0 - original.rgb), original.a);
	
//	vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord ); Da no mesmo, porem o codigo acima foi feito
//  gl_FragColor = vec4( vec3(1.0) - Color.rgb, Color.a);  por mim.
	// 1.0  0.0
	// 5.0  5.0
	// 8.0  2.0
	// 3.0  7.0
}
