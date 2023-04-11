

function love.load()
    cock = love.graphics.newImage("FNCfPdcXoAsM5yh.jpg")
    love.window.setMode(1600, 1600, {resizable=true, vsync=0, minwidth=400, minheight=300, centered=true})
end
function love.draw()
    love.window.setTitle("Hello World")
    love.graphics.draw(cock, 0, 0)
end