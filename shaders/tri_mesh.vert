#version 450

layout (location = 0) in vec3 vPosition;
layout (location = 1) in vec3 vNormal;
layout (location = 2) in vec3 vColor;

layout (location = 0) out vec3 outColor;

//push constants block
layout ( push_constant ) uniform constnats
{
	vec4 data;
	mat4 render_matrix;
} PushConstants;

void main(){
	gl_Position = vec4(vPosition, 1.0f) * vec4(vPosition, 1.0f);
	outColor = vColor;
}