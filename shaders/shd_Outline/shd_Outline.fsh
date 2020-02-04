//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_texel_size;

void main()
{
	vec4 color = texture2D( gm_BaseTexture, v_vTexcoord );
	
	float alpha = color.a;
	float alphaBase = alpha;
	
	vec2 offset_x = vec2(u_texel_size.x, 0.0);
	vec2 offset_y = vec2(0.0, u_texel_size.y);
	
	vec4 colorL = texture2D( gm_BaseTexture, v_vTexcoord + offset_x );
	vec4 colorR = texture2D( gm_BaseTexture, v_vTexcoord - offset_x );
	vec4 colorT = texture2D( gm_BaseTexture, v_vTexcoord + offset_y );
	vec4 colorB = texture2D( gm_BaseTexture, v_vTexcoord - offset_y );
	
	//vec4 colorTL = texture2D( gm_BaseTexture, v_vTexcoord + offset_normalized_y - offset_normalized_x );
	//vec4 colorTR = texture2D( gm_BaseTexture, v_vTexcoord + offset_normalized_y + offset_normalized_x );
	//vec4 colorBL = texture2D( gm_BaseTexture, v_vTexcoord - offset_normalized_y - offset_normalized_x );
	//vec4 colorBR = texture2D( gm_BaseTexture, v_vTexcoord - offset_normalized_y + offset_normalized_x );
	
	alpha = max(alpha, colorL.a);
	alpha = max(alpha, colorR.a);
	alpha = max(alpha, colorT.a);
	alpha = max(alpha, colorB.a);
	
	vec3 col = mix(texture2D( gm_BaseTexture, v_vTexcoord ).rgb, v_vColour.rgb,  alpha - alphaBase);
	
	//alpha = max(alpha, colorTL.a);
	//alpha = max(alpha, colorTR.a);
	//alpha = max(alpha, colorBL.a);
	//alpha = max(alpha, colorBR.a);
	
    gl_FragColor = vec4(col, alpha);
}
