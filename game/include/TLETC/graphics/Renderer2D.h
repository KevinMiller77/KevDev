#ifndef __2D_GL_RENDERER__
#define __2D_GL_RENDERER__

#include <cstddef>
#include <string>
#include "TextureManager.h"
#include "buffers/VertexArray.h"
#include "renderables/Sprite2D.h"

#define RENDERER_MAX_SPRITES 50000
#define RENDERER_VERTEX_SIZE sizeof(VertexData)
#define RENDERER_SPRITE_SIZE (RENDERER_VERTEX_SIZE * 4)
#define RENDERER_BUFFER_SIZE (RENDERER_SPRITE_SIZE * RENDERER_MAX_SPRITES)
#define RENDERER_INDICIES_SIZE (RENDERER_MAX_SPRITES * 6)

#define MAX_TEXTURE_SLOTS 16

#define SHADER_VERTEX_INDEX 0
#define SHADER_COLOR_INDEX 1
#define SHADER_TEXTURE_INDEX 2
#define SHADER_TEXTURE_ID_INDEX 3

class Renderer2D
{
private:
    GLuint VAO;
    GLuint VBO;
    IndexBuffer *IBO;
    GLsizei indexCount;
    VertexData *VDataBuffer;
    VertexData *VDataHeapLoc = nullptr;

    std::vector<GLuint> TextureSlots;
    std::vector<Mat4f> TransformationStack;
    const Mat4f* curTransformationBack;

public:
    Renderer2D();
    ~Renderer2D();

    void submit(const Renderable2D *renderable);
    void draw();
    void drawString(std::string text, Vec3f position, uint32_t color);
    void begin();
    void end();

    void push(const Mat4f &matrix, bool  = false);
    void pop();

private:
    void init();
};

#endif