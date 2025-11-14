attribute vec3 aPosition;
attribute vec3 aTexCoord;

uniform mat4 uMVMatrix;
uniform mat4 uPMatrix;

uniform int uFlip;
uniform float lighttimers[5];
uniform float lightType;
uniform float lightLevel;

varying vec2 vTexCoord;
varying float vLight;

void main(void){
	if (uFlip == 1)
		vTexCoord = aTexCoord.zy;
	else
		vTexCoord = aTexCoord.xy;
	
	vLight = lightLevel * lighttimers[int(lightType)];

	gl_Position = uPMatrix * uMVMatrix * vec4(aPosition, 1.0);
}
