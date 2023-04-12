
-- when press mousebutton1 increase the rot_speed by 1



function love.load()
    cock = love.graphics.newImage("FNCfPdcXoAsM5yh.jpg")
    love.window.setMode(1600, 1600, {resizable=true, vsync=0, minwidth=400, minheight=300, centered=true})
    love.window.setTitle("Hello World")
    angle = 0
    rot_speed = 1
end

function love.mousepressed(x, y, button, istouch)
    if button == 1 then
        rot_speed = rot_speed + 1
    end
    if button == 2 then
        rot_speed = rot_speed - 1
    end
end

function love.update(dt)
    angle = (angle + dt) % (2 * math.pi)
end

function love.draw()
    love.graphics.draw(cock, love.mouse.getX(), love.mouse.getY(),angle*rot_speed)
end
