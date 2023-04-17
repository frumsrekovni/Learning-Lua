
-- angle = (angle + dt) % (2 * math.pi)
-- Simple catcher game. Initial press of the arrow key jumps it. Then holding it down inches it forward. But simultaneouslty it build a ghost trail infront of it that builds longest faster. You can skip forward by pressing the opposite key. The strategy stemming from being able to travel in the reverse direction while building a plan to quickly fly to the other direction. Ultra simple game but want to amke is ultra polished. SOund design, graphics, game feel, settings etc.


function love.load()
    player = love.graphics.newImage("player.png")
    love.window.setMode(720, 720, {resizable=true, vsync=0, minwidth=400, minheight=300, centered=true})
    love.window.setTitle("GG")
    xPlayerPos = 600
    yPlayerPos = 600
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        xPlayerPos = xPlayerPos + 1 * dt
    end
    if love.keyboard.isDown("left") then
        xPlayerPos = xPlayerPos - 1
    end
end

function love.draw()
    love.graphics.draw(player, xPlayerPos, yPlayerPos)
end
