#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <iostream>
#include <unistd.h>
#include <cmath>
#include "mtyps/mtyps.hpp"
#include "shader/shader.hpp"  

void framebuffer_size_callback(GLFWwindow *, int, int);
void processInput(GLFWwindow *);
void procces_colors_inputs(GLFWwindow *);

int main()
{

  glfwInit();

  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
  // glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);

  GLFWwindow *window = glfwCreateWindow(800, 600, "my first window", NULL, NULL);
  if (window == NULL)
  {
    std::cout << "Failed to create GLFW window" << std::endl;
    glfwTerminate();
    return -1;
  }

  glfwMakeContextCurrent(window);

  if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
  {
    std::cout << "Failed to initialize GLAD" << std::endl;
    return -1;
  }

  glViewport(0, 0, 800, 600);
  ///
  glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
  //
  float vertices[] = {
      // triangl
      0.5f, -0.5f, 0.0f, 1.0f, 0.0f, 0.0f,
      -0.5f, -0.5f, 0.0f, 0.0f, 1.0f, 0.0f,
      0.0f, 0.5f, 0.0f, 0.0f, 0.0f, 1.0f

      // squar
      //  0.5f,  0.5f, 0.0f,   1.0f, 0.0f, 0.0f,
      //  0.5f, -0.5f, 0.0f,   0.0f, 1.0f, 0.0f,
      // -0.5f, -0.5f, 0.0f,   0.0f, 0.0f, 1.0f,
      // -0.5f,  0.5f, 0.0f,   0.5f, 0.1f, 0.9f,

      //  -0.5f, -0.0f, 0.0f, 0.5f,-0.0f, 0.2f,
      //  -0.0f,  0.5f, 0.0f,-0.0f, 0.5f, 0.7f

  };
  unsigned int indices[] = {

       0, 1, 2

      // 0, 1, 3,

      // 1, 2, 3
  };
  VAO triangle_vao;
  VBO triangle_vbo;
  EBO triangle_ebo;

  glGenVertexArrays(1, &triangle_vao);
  glGenBuffers(1, &triangle_vbo);
  glGenBuffers(1, &triangle_ebo);
  glBindVertexArray(triangle_vao);
  glBindBuffer(GL_ARRAY_BUFFER, triangle_vbo);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, triangle_ebo);

  glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

  glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
  glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void *)0);
  glEnableVertexAttribArray(0);
  glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void *)(3 * sizeof(float)));
  glEnableVertexAttribArray(1);

  glBindVertexArray(0);
  glBindBuffer(GL_ARRAY_BUFFER, 0);

 
  // square
  float sqr[] = {
      0.5f, 0.5f, 0.0f,   // top right
      0.5f, -0.5f, 0.0f,  // bottom right
      -0.5f, -0.5f, 0.0f, // bottom left
      -0.5f, 0.5f, 0.0f   // top left
  };

  VAO sqr_vao;
  VBO sqr_vbo;
  EBO sqr_ebo;
  glGenVertexArrays(1, &sqr_vao);
  glGenBuffers(1, &sqr_vbo);
  glGenBuffers(1, &sqr_ebo);
  glBindVertexArray(sqr_vao);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, sqr_ebo);
  glBindBuffer(GL_ARRAY_BUFFER, sqr_vbo);
  glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
  glBufferData(GL_ARRAY_BUFFER, sizeof(sqr), sqr, GL_STATIC_DRAW);
  glVertexAttribPointer(0, 3, GL_FLOAT, false, 3 * sizeof(float), (void *)0);
  glEnableVertexAttribArray(0);
  glBindVertexArray(0);
  glBindBuffer(GL_ARRAY_BUFFER, 0);
  // end_squar


  //  using uniform to gradualy change color

  //  int VertexColorLocation=glGetUniformLocation(shaderProgram,"ourColor");
  // using our shader class
  Shader myshader("/home/stof/openGL/proj2/shaders/vertex.glsl", "/home/stof/openGL/proj2/shaders/fragment.glsl");

  // end using our shader class
  glClearColor(0.8f, 0.1f, 1.0f, 0.2f);

  //  glPolygonMode(GL_FRONT_AND_BACK,GL_LINE);
  while (!glfwWindowShouldClose(window))
  {

    procces_colors_inputs(window);
    processInput(window);
    glBindVertexArray(triangle_vao);
    myshader.use();
    // float TimeValue = glfwGetTime();
    // float GreenValue = sin(TimeValue) / 2 + 0.5;

    // glDrawElements(GL_TRIANGLES, 3, GL_UNSIGNED_INT, 0);

    // glUseProgram(shaderProgram);
    glDrawArrays(GL_TRIANGLES, 0, 3);

    glfwSwapBuffers(window);
    glfwPollEvents();
  }

  // Cleanup
  glDeleteVertexArrays(1, &triangle_vao);
  glDeleteBuffers(1, &triangle_vbo);

  //  int nrAttributes;
  //  glGetIntegerv(GL_MAX_VERTEX_ATTRIBS, &nrAttributes);
  //  std::cout << "Maximum nr of vertex attributes supported: " << nrAttributes
  //  << std::endl;

  glfwTerminate();

  return 0;
}

// end//

void processInput(GLFWwindow *window)
{
  if (glfwGetKey(window, GLFW_KEY_RIGHT_ALT) == GLFW_PRESS)
    glfwSetWindowShouldClose(window, true);
}
void framebuffer_size_callback(GLFWwindow *window, int width, int height)
{
  glViewport(0, 0, width, height);
}
void procces_colors_inputs(GLFWwindow *window)
{
  int R = glfwGetKey(window, GLFW_KEY_R);
  int G = glfwGetKey(window, GLFW_KEY_G);
  int B = glfwGetKey(window, GLFW_KEY_B);

  if (R)
    glClearColor(1.0, 0, 0, 1.0f);
  else if (G)
    glClearColor(0.1, 1, 0, 1.0f);
  else if (B)
    glClearColor(0.0, 0, 1, 1.0f);
  glClear(GL_COLOR_BUFFER_BIT);
}
