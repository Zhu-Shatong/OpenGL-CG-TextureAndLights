#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;

out vec3 FragPos; // Ƭ��������ռ��λ������
out vec3 Normal; // Ƭ��������ռ�ķ�����
out vec2 TexCoords; // Ƭ�ε���������

uniform mat4 model; // ģ�;���
uniform mat4 view; // �۲����
uniform mat4 projection; // ͶӰ����

void main()
{
    FragPos = vec3(model * vec4(aPos, 1.0)); // ������λ�ôӾֲ��ռ�任������ռ�
    Normal = mat3(transpose(inverse(model))) * aNormal;  // ���߱任������ռ�
    TexCoords = aTexCoords; // �������겻��Ҫ�任
    
    gl_Position = projection * view * vec4(FragPos, 1.0); // ������λ�ô�����ռ�任���ü��ռ�
}