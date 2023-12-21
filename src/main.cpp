#include <stdio.h>
#include <stdlib.h>
#include <glad/gl.h>
#include <GLFW/glfw3.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

#include "glm/glm.hpp"
#include "glm/gtc/matrix_transform.hpp"
#include "glm/gtc/type_ptr.hpp"


long long int getFileLength(const char * path)
{
        FILE *file;
        file = fopen(path, "r");
	
        if(file == NULL)
        {
                printf("unable to open file %s\n", path);
                return -1;
        }
        else
        {
                fseek(file, 0, SEEK_END); 
                long long int size = ftell(file);
                fclose(file);
                return size;
	      }
}


unsigned char* readFile(const char * path)
{
	FILE *file;
	file = fopen(path, "r");

	if(file == NULL)
	{
		printf("unable to open file titled \"%s\".\n", path);
	}
	
	long long int size = getFileLength(path);
	
	unsigned char * out = (unsigned char*)malloc((size+1)*sizeof(unsigned char));

	for (unsigned long long int i = 0 ; i < size ; i++)
	{
		char c = fgetc(file);
		out[i] = c;
	}
	fclose(file);
	out[size] = '\0';
	return (unsigned char*)out;
}


unsigned int loadShader(const char* vertexShaderPath, const char* fragmentShaderPath)
{
	unsigned char* vertexSource = readFile(vertexShaderPath);
	unsigned char* fragmentSource = readFile(fragmentShaderPath);

	
	//VERTEX SHADER PARSE
	unsigned int vertexShader;
	vertexShader = glCreateShader(GL_VERTEX_SHADER);
	glShaderSource(vertexShader, 1, (const char* const *)&vertexSource, NULL);
	glCompileShader(vertexShader);

	int vertex_success;
	char vertexInfoLog[512];
	glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &vertex_success);
	if(!vertex_success)
	{
		glGetShaderInfoLog(vertexShader, 512, NULL, vertexInfoLog);
		printf("ERROR::SHADER::VERTEX::COMPILATION_FAILED: %s\n",vertexInfoLog);
	}
	free(vertexSource);

	//FRAGMENT SHADER PARSE
	unsigned int fragmentShader;
	fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
	glShaderSource(fragmentShader, 1, (const char* const *)&fragmentSource, NULL);
	glCompileShader(fragmentShader);
	
	int fragment_success;
	char fragmentInfoLog[512];
	glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &fragment_success);
	if(!fragment_success)
	{
		glGetShaderInfoLog(fragmentShader, 512, NULL, fragmentInfoLog);
		printf("ERROR::SHADER::FRAGMENT::COMPILATION_FAILED: %s\n",fragmentInfoLog);
	}
	free(fragmentSource);

	//SHADER PROGRAM
	unsigned int shader = glCreateProgram();
	glAttachShader(shader, vertexShader);
	glAttachShader(shader, fragmentShader);
	glLinkProgram(shader);

	int shader_success;
	char shaderInfoLog[512];
	glGetProgramiv(shader, GL_LINK_STATUS, &shader_success);
	if(!shader_success)
	{
		glGetProgramInfoLog(shader, 512, NULL, shaderInfoLog);
		printf("ERROR::SHADER::PROGRAM::COMPILATION_FAILED: %s\n",shaderInfoLog);
	}
	
	glDeleteShader(vertexShader);
	glDeleteShader(fragmentShader);

	return shader;
}


float vertex_data[] = {
        // VERTEX           COLOR           UV
        -1.0f,-1.0f, 0.0f,  1.0f,1.0f,1.0f, 0.0f,0.0f,
        -1.0f, 1.0f, 0.0f,  1.0f,0.0f,0.0f, 0.0f,1.0f,
         1.0f, 1.0f, 0.0f,  0.0f,0.0f,0.0f, 1.0f,1.0f,

        -1.0f, -1.0f, 0.0f, 1.0f,1.0f,1.0f, 0.0f,0.0f,
         1.0f, -1.0f, 0.0f, 0.0f,1.0f,1.0f, 1.0f,0.0f,
         1.0f,  1.0f, 0.0f, 0.0f,1.0f,1.0f, 1.0f,1.0f
};


// Update the framebuffer size to the window size 
void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
        glViewport(0,0,width,height);
}


int main(int argc, char* argv[])
{
        GLFWwindow* window;
	    int width,height;
	    width = 640;
	    height = 480;

	    //Check if glfw has initialized
	    if (!glfwInit())
		        return -1;

	    window = glfwCreateWindow(width,height, "Boiler Plate!", NULL, NULL);
	    if(!window)
	    {
	    	glfwTerminate();
	    	printf("unable to open a Window context.");
	    	return -1;
	    }

	    glfwMakeContextCurrent(window);
	    gladLoadGL(glfwGetProcAddress);

        glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);


	    unsigned int shader = loadShader("resources/genericVertex.glsl","resources/genericFragment.glsl");

	    unsigned int VAO,VBO;
	    glGenVertexArrays(1, &VAO);
	    glGenBuffers(1, &VBO);

	    glBindVertexArray(VAO);

	    glBindBuffer(GL_ARRAY_BUFFER, VBO);
	    glBufferData(GL_ARRAY_BUFFER, sizeof(vertex_data), vertex_data, GL_STATIC_DRAW);

	    //Vertex Postion
	    glVertexAttribPointer(0,3,GL_FLOAT,GL_FALSE,8*sizeof(float),(void*)0);
	    glEnableVertexAttribArray(0);

        //Color Postion
        glVertexAttribPointer(1,3,GL_FLOAT,GL_FALSE,8*sizeof(float),(void*)(3*sizeof(float)));
        glEnableVertexAttribArray(1);

	    //UV Postion
	    glVertexAttribPointer(2,2,GL_FLOAT,GL_FALSE,8*sizeof(float),(void*)(5*sizeof(float)));
	    glEnableVertexAttribArray(2);

	    
        glBindBuffer(GL_ARRAY_BUFFER, 0);
	    glBindVertexArray(0);

	    if (argc == 2){
	    	glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
	    }

	    glUseProgram(shader);

        while(!glfwWindowShouldClose(window))
        {
		        float time = glfwGetTime();

                glClearColor(0.4f,0.5f,0.6f,1.0f);
		        glClear(GL_COLOR_BUFFER_BIT);

		        glUseProgram(shader);
	        
		        glBindVertexArray(VAO);

                glDrawArrays(GL_TRIANGLES, 0, 6);

		        glBindVertexArray(0);

		        glfwSwapBuffers(window);

		        glfwPollEvents();
	    }

        glfwTerminate();

        return 0;
}
