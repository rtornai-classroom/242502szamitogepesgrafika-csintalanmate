#version 330 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 color;

out vec3 fragColor;

uniform vec2 circleCenter;
uniform bool colorSwap; // �rintkez�sn�l sz�n csere

void main() {
    // Az uniform �rt�k�nek megfelel�en mozgatjuk a k�rt
    gl_Position = vec4(position.x + circleCenter.x, position.y + circleCenter.y, position.z, 1.0);
    
    // Ha kell cser�l sz�nt
    if (colorSwap) {
        if (color.g > color.r) {  // Ha alapb�l z�ld a k�lseje
            fragColor = vec3(1.0f, 0.0f, 0.0f); // Pirosra v�lt
        } else { // Ha alapb�l piros a k�lseje
            fragColor = vec3(0.0f, 1.0f, 0.0f); // Z�ldre v�lt
        }
    } else {
        fragColor = color;
    }
}
