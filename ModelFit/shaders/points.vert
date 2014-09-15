#version 150

in vec3 v_position;

uniform float point_size_constant;
uniform mat4 PVW_mat;
uniform mat4 VW_mat;

void main(void) {
  // Multiply the mvp matrix by the vertex to obtain our final vertex position
  gl_PointSize = point_size_constant / -(VW_mat * vec4(v_position, 1.0)).z;
  gl_Position = PVW_mat * vec4(v_position, 1.0);
}
