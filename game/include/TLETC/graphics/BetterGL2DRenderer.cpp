#include "BetterGL2DRenderer.h"

BetterGL2DRenderer::BetterGL2DRenderer()
{
    indexCount = 0;
    init();
}

BetterGL2DRenderer::~BetterGL2DRenderer()
{
    delete IBO;
    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
}

void BetterGL2DRenderer::init()
{
    //Generate all of the necessary spaces in memory
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);

    //Bind the buffers used
    glBindVertexArray(VAO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, RENDERER_BUFFER_SIZE, NULL, GL_DYNAMIC_DRAW);

    //Enable the attributes our renderer will use (vertex, color, texture, etc.)
    glEnableVertexAttribArray(SHADER_VERTEX_INDEX);
    glEnableVertexAttribArray(SHADER_COLOR_INDEX);
    glEnableVertexAttribArray(SHADER_TEXTURE_INDEX);
    glEnableVertexAttribArray(SHADER_TEXTURE_ID_INDEX);

    //Describe our memory map
    glVertexAttribPointer(SHADER_VERTEX_INDEX, 3, GL_FLOAT, GL_FALSE, RENDERER_VERTEX_SIZE, (const GLvoid *)offsetof(VertexData, VertexData::vertex));
    glVertexAttribPointer(SHADER_COLOR_INDEX, 4, GL_UNSIGNED_BYTE, GL_TRUE, RENDERER_VERTEX_SIZE, (const GLvoid *)(offsetof(VertexData, VertexData::color)));
    glVertexAttribPointer(SHADER_TEXTURE_INDEX, 2, GL_FLOAT, GL_TRUE, RENDERER_VERTEX_SIZE, (const GLvoid *)(offsetof(VertexData, VertexData::texture)));
    glVertexAttribPointer(SHADER_TEXTURE_ID_INDEX, 1, GL_FLOAT, GL_FALSE, RENDERER_VERTEX_SIZE, (const GLvoid*)(offsetof(VertexData, VertexData::texID))); 

    //Unbind VBO
    glBindBuffer(GL_ARRAY_BUFFER, 0);

    //Generate Index Buffer data for drawing pleasure
    GLuint *indicies = new GLuint[RENDERER_INDICIES_SIZE];

    GLuint offset = 0;
    for (int i = 0; i < RENDERER_INDICIES_SIZE; i += 6)
    {
        indicies[i + 0] = offset + 0;
        indicies[i + 1] = offset + 1;
        indicies[i + 2] = offset + 2;
        indicies[i + 3] = offset + 2;
        indicies[i + 4] = offset + 3;
        indicies[i + 5] = offset + 0;

        offset += 4;
    }

    //Fill an Index buffer with the generated data
    IBO = new IndexBuffer(indicies, RENDERER_INDICIES_SIZE);

    //Unbind VAO
    glBindVertexArray(0);    
}

void BetterGL2DRenderer::begin()
{
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    VDataBuffer = (VertexData *)glMapBuffer(GL_ARRAY_BUFFER, GL_WRITE_ONLY);
    VDataHeapLoc = VDataHeapLoc ? VDataHeapLoc : VDataBuffer; 
}

void BetterGL2DRenderer::submit(const Renderable2D *renderable)
{
    const Vec3f position = renderable->getPosition();
    const Vec2f size = renderable->getSize();
    const uint32_t color = renderable->getColor();
    const GLuint texID = renderable->getTextureID();

    float ts = 0.0f;
    if (texID > 0)
    {
        bool found = false;
        for (unsigned int i = 0; i < TextureSlots.size(); i++)
        {
            if (TextureSlots[i] == texID)
            {
                
                ts = (float)(i + 1);
                found = true;
                break;           
            }
        }

        if (!found)
        {
            LOG_INF("New texture slot\n");
            if (TextureSlots.size() >= MAX_TEXTURE_SLOTS)
            {
                end();
                draw();
                begin();
            }
            TextureSlots.push_back(texID);
            ts = (float)(TextureSlots.size());
        }
    }

    VDataBuffer->vertex = *curTransformationBack * position;
    VDataBuffer->color = color;
    VDataBuffer->texture = Vec2f(1.0f, 1.0f);
    VDataBuffer->texID = ts;
    VDataBuffer++;

    VDataBuffer->vertex = *curTransformationBack * Vec3f(position.x, position.y + size.y, position.z);
    VDataBuffer->color = color;
    VDataBuffer->texture = Vec2f(1.0f, 0.0f);
    VDataBuffer->texID = ts;
    VDataBuffer++;

    VDataBuffer->vertex = *curTransformationBack * Vec3f(position.x + size.x, position.y + size.y, position.z);
    VDataBuffer->color = color;
    VDataBuffer->texture = Vec2f(0.0f, 0.0f);
    VDataBuffer->texID = ts;
    VDataBuffer++;

    VDataBuffer->vertex = *curTransformationBack * Vec3f(position.x + size.x, position.y, position.z);
    VDataBuffer->color = color;
    VDataBuffer->texture = Vec2f(0.0f, 1.0f);
    VDataBuffer->texID = ts;
    VDataBuffer++;


    indexCount += 6;
}

void BetterGL2DRenderer::drawString(std::string text, Vec3f position, FontInfo* font, uint32_t color)
{
    using namespace ftgl;

    float ts = 0.0f;
    bool found = false;
    for (unsigned int i = 0; i < TextureSlots.size(); i++)
    {
        if (TextureSlots[i] == font->atlas->id)
        {
            
            ts = (float)(i + 1);
            found = true;
            break;           
        }
    }
    if (!found)
    {
        if (TextureSlots.size() >= MAX_TEXTURE_SLOTS)
        {
            end();
            draw();
            begin();
        }
        TextureSlots.push_back(font->atlas->id);
        ts = (float)(TextureSlots.size());
    }

    float scaleX = 960.0f / 32.0f;
	float scaleY = 540.0f / 18.0f;  

    float x = position.x;

    for (int i = 0; i < text.length(); i++)
    {
        char c = text[i];
        texture_glyph_t* glyph = texture_font_get_glyph(font->font, c);
        if (glyph != NULL)
        {

            float x0 = x + glyph->offset_x / scaleX;
            float y0 = position.y + (glyph->height - glyph->offset_y) / scaleY;
            float x1 = x0 + glyph->width / scaleX;
            float y1 = y0 - glyph->height / scaleY;                

            float u0 = glyph->s0;
            float v0 = glyph->t1;
            float u1 = glyph->s1;
            float v1 = glyph->t0;

            

            VDataBuffer->vertex = *curTransformationBack * Vec3f(x0, y0, 0);
            VDataBuffer->texture = Vec2f(u0, v0);
            VDataBuffer->texID = ts;
            VDataBuffer->color = color;
            VDataBuffer++;

            VDataBuffer->vertex = *curTransformationBack * Vec3f(x0, y1, 0);
            VDataBuffer->texture = Vec2f(u0, v1);
            VDataBuffer->texID = ts;
            VDataBuffer->color = color;
            VDataBuffer++;

            VDataBuffer->vertex = *curTransformationBack * Vec3f(x1, y1, 0);
            VDataBuffer->texture = Vec2f(u1, v1);
            VDataBuffer->texID = ts;
            VDataBuffer->color = color;
            VDataBuffer++;

            VDataBuffer->vertex = *curTransformationBack * Vec3f(x1, y0, 0);
            VDataBuffer->texture = Vec2f(u1, v0);
            VDataBuffer->texID = ts;
            VDataBuffer->color = color;
            VDataBuffer++;

            indexCount += 6;

            x += glyph->advance_x / scaleX;
        }

    }
}

void BetterGL2DRenderer::end()
{
    glUnmapBuffer(GL_ARRAY_BUFFER);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
}

void BetterGL2DRenderer::draw()
{
    for (unsigned int tex = 0; tex < TextureSlots.size(); tex++)
    {
        glActiveTexture(GL_TEXTURE0 + tex);
        glBindTexture(GL_TEXTURE_2D, TextureSlots[tex]);
    }

    glBindVertexArray(VAO);
    IBO->bind();

    glDrawElements(GL_TRIANGLES, indexCount, GL_UNSIGNED_INT, NULL);

    IBO->unbind();
    glBindVertexArray(0);

    indexCount = 0;
}


