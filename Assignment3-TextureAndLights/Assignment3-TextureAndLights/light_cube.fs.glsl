#version 330 core
out vec4 FragColor;

uniform vec4 lightColor; // ���һ��uniform������������ɫ

void main()
{
    FragColor = lightColor; // ʹ���Զ������ɫ
}
