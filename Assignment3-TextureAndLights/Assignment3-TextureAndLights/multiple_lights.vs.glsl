#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;

out vec3 FragPos; // 片段在世界空间的位置向量
out vec3 Normal; // 片段在世界空间的法向量
out vec2 TexCoords; // 片段的纹理坐标

uniform mat4 model; // 模型矩阵
uniform mat4 view; // 观察矩阵
uniform mat4 projection; // 投影矩阵

void main()
{
    FragPos = vec3(model * vec4(aPos, 1.0)); // 将顶点位置从局部空间变换到世界空间
    Normal = mat3(transpose(inverse(model))) * aNormal;  // 法线变换到世界空间
    TexCoords = aTexCoords; // 纹理坐标不需要变换
    
    gl_Position = projection * view * vec4(FragPos, 1.0); // 将顶点位置从世界空间变换到裁剪空间
}