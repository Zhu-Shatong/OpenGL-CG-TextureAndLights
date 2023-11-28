#version 330 core
out vec4 FragColor;

uniform vec4 lightColor; // 添加一个uniform变量来设置颜色

void main()
{
    FragColor = lightColor; // 使用自定义的颜色
}
