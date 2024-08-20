#version 460 core

layout (location = 0) in vec3 aPosition;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoord;

out vec3 vPos;
out vec3 vNormal;
out vec2 vTexCoord;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main() {
	vPos = vec3(model * vec4(aPosition, 1.0));
	vNormal = vec3(model * vec4(aNormal, 0.0));

	gl_Position = projection * view * vec4(vPos, 1.0);
	vTexCoord = aTexCoord;
}