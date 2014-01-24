// 001-square-matrix.glsl
//#vertex
attribute vec3 aVertexPosition;

uniform mat4 uMatrix;
uniform mat4 uProjection;
     
void main() {
	gl_Position = uProjection * uMatrix * vec4(aVertexPosition, 1.0);
}

//#fragment
#ifdef GL_ES
precision highp float;
#endif
               
uniform vec4 uColor;
               
void main() {
	gl_FragColor = uColor;
}