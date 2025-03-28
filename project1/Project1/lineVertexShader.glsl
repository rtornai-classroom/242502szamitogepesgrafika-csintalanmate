#version 330 core
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 color;

out vec3 fragColor;

uniform float lineY;  // Move line up and down

void main() {
    gl_Position = vec4(position.x, position.y + lineY, position.z, 1.0);
    fragColor = color;  // Pass color to the fragment shader
}