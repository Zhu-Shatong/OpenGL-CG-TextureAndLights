# OpenGL - TextureAndLights (CG)

### 项目介绍：

这个基于OpenGL的3D渲染项目专注于实现多种光源、多种材质处理以及天空盒效果的展示。它利用了GLFW、GLAD和GLM库来创建窗口、处理用户输入和进行数学运算。项目的核心在于使用OpenGL渲染技术，展示不同类型的光源（如定向光、点光源和聚光灯）和材质效果（如漫反射和镜面高光贴图）。此外，通过实现天空盒功能，项目增强了3D场景的深度和沉浸感。用户可以通过键盘和鼠标控制相机，观察由多种光源照亮的具有不同材质的物体，以及周围的天空盒环境。

This OpenGL-based 3D rendering project focuses on showcasing multiple light sources, various material handling, and skybox effects. Utilizing libraries such as GLFW, GLAD, and GLM, it creates windows, processes user inputs, and performs mathematical operations. The project's essence lies in employing OpenGL rendering techniques to display different types of light sources (like directional lights, point lights, and spotlights) and material effects (such as diffuse and specular mapping). Additionally, by implementing the skybox feature, the project enhances the depth and immersion of the 3D scene. Users can control the camera using the keyboard and mouse, observing objects with different materials illuminated by various light sources, surrounded by a skybox environment.

这同时也是 同济大学计算机系 CG 100433 计算机图形学 课程作业 Assignment3。

```
Programming 作业要求：
• 1. Render several 3D models with more than two types of lights and various materials (textures)
• 2. Add a Skybox to the rendered scene.
```

<iframe src="//player.bilibili.com/player.html?aid=408921621&bvid=BV1iG411S7TG&cid=1346776345&p=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>

![{8A94C9BF-04C6-478e-B1F5-1B40083F1AF5}](https://cdn.jsdelivr.net/gh/Zhu-Shatong/cloudimg/img/{8A94C9BF-04C6-478e-B1F5-1B40083F1AF5}.png)

### 关键词：

- OpenGL
- 计算机图形学 CG
- 3D渲染
- 多种光源
- 多种材质
- 天空盒 Skybox
- GLFW
- GLAD
- GLM



### 功能特点：

1. **多种光源支持**：支持不同类型的光源，包括定向光（Directional Light）、点光源（Point Lights）和聚光灯（Spotlight），为场景提供丰富的照明效果。
2. **多种材质处理**：程序能够加载和应用不同的材质贴图，如漫反射贴图（Diffuse Map）、镜面高光贴图（Specular Map）等，提升物体表面的真实感。
3. **天空盒（Skybox）**：实现了天空盒的功能，能够在3D场景中创建一个包裹整个场景的立方体，用于展示周围环境，增强场景的深度和沉浸感。

### Features:

1. **Multiple Light Sources**: Supports various types of light sources, including directional light, point lights, and spotlights, providing rich lighting effects for the scene.
2. **Multiple Material Handling**: The program can load and apply different material textures, such as diffuse maps and specular maps, enhancing the realism of object surfaces.
3. **Skybox**: Implements the skybox feature, creating a cube that envelops the entire scene to display the surrounding environment, enhancing the depth and immersion of the scene.

### 技术栈：

- **OpenGL**：用于渲染3D图形。
- **GLFW**：提供了创建窗口、接收输入等功能。
- **GLM**：用于数学运算，尤其是矩阵变换。
- **GLAD**：用于加载OpenGL函数指针。
- **stb_image**：用于加载图片文件，作为纹理。

### Tech Stack:

- **OpenGL**: For rendering 3D graphics.
- **GLFW**: For creating windows and handling inputs.
- **GLM**: For mathematical operations, especially matrix transformations.
- **GLAD**: For loading OpenGL function pointers.
- **stb_image**: For loading image files as textures.

### 主要功能实现：

- 利用GLFW创建窗口和处理输入。
- 使用GLAD加载OpenGL函数指针。
- 实现了基本的3D物体（立方体）的渲染。
- 加载并应用不同的纹理到3D物体。
- 实现了基本的相机系统，支持视角转换和缩放。
- 实现了多种光源和材质的效果。
- 实现了天空盒，增强了场景的真实感。

### Main Implementations:

- Using GLFW to create windows and handle inputs.
- Loading OpenGL function pointers with GLAD.
- Rendering basic 3D objects (cubes).
- Loading and applying different textures to 3D objects.
- Implementing a basic camera system supporting view transformation and zoom.
- Implementing various light sources and material effects.
- Implementing a skybox to enhance the realism of the scene.



To run the program, follow the instructions below.  (using Visual Studio)

## Getting Started

1. Download and unzip the `Assignment3-TextureAndLights.zip` file.

2. Open Visual Studio 2022 (or later).

3. Click on `File` > `Open` > `Project/Solution`.

4. Navigate to the unzipped folder and select `Assignment3-TextureAndLights.sln`. 

   ![image-20231128133044786](https://cdn.jsdelivr.net/gh/Zhu-Shatong/cloudimg/img/image-20231128133044786.png)

   **Note:** If you are using a Visual Studio version earlier than 2022 (e.g., 2019 or lower), follow these additional steps:

   - Right-click on the project in the Solution Explorer.
   - Select `Properties`.
   - Under `General`, go to `Platform Toolset` and choose the corresponding version.
   - ![image-20231128133106611](https://cdn.jsdelivr.net/gh/Zhu-Shatong/cloudimg/img/image-20231128133106611.png)

5. Press `F5` to build and run the program.




## Requirements

- Visual Studio 2022 or later (or earlier versions with adjustments as mentioned above).

  

## Additional Configuration

To enhance the portability of the project and ensure that downloaders can run it seamlessly, we've made the following modifications to the project settings. 

Users don't need to perform these actions; this is provided for informational purposes.

### Include Directories

We've added the following paths to the project's include directories:

- `$(ProjectDir)include`
- `$(IncludePath)`

This ensures that the project can locate necessary header files and dependencies without manual configuration.

### Library Directories

We've included the following paths in the project's library directories:

- `$(ProjectDir)lib`
- `$(LibraryPath)`

By doing so, we make sure that the project can find required libraries and link them correctly during compilation.

These modifications have been made to simplify the setup process for users and promote the project's portability.

![image-20231128133148724](https://cdn.jsdelivr.net/gh/Zhu-Shatong/cloudimg/img/image-20231128133148724.png)
