#version 330 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 color;

out vec3 fragColor;

uniform vec2 circleCenter;
uniform bool colorSwap; // Érintkezésnél szín csere

void main() {
    // Az uniform értékének megfelelõen mozgatjuk a kört
    gl_Position = vec4(position.x + circleCenter.x, position.y + circleCenter.y, position.z, 1.0);
    
    // Ha kell cserél színt
    if (colorSwap) {
        if (color.g > color.r) {  // Ha alapból zöld a külseje
            fragColor = vec3(1.0f, 0.0f, 0.0f); // Pirosra vált
        } else { // Ha alapból piros a külseje
            fragColor = vec3(0.0f, 1.0f, 0.0f); // Zöldre vált
        }
    } else {
        fragColor = color;
    }
}
