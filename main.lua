
-- angle = (angle + dt) % (2 * math.pi)
-- Simple catcher game. Initial press of the arrow key jumps it. Then holding it down inches it forward. But simultaneouslty it build a ghost trail infront of it that builds longest faster. You can skip forward by pressing the opposite key. The strategy stemming from being able to travel in the reverse direction while building a plan to quickly fly to the other direction. Ultra simple game but want to amke is ultra polished. SOund design, graphics, game feel, settings etc.

WINDOW_WIDTH = 720
WINDOW_HEIGHT = 720

function love.load()
    player = love.graphics.newImage("the player.png")
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {resizable=true, vsync=0, minwidth=400, minheight=300, centered=true})
    love.window.setTitle("GG")
    xPlayerPos = 300
    yPlayerPos = 600
    playerSpeed = 1000
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        xPlayerPos = xPlayerPos + (playerSpeed * dt)
    end
    if love.keyboard.isDown("left") then
        xPlayerPos = xPlayerPos - (playerSpeed * dt)
    end

    if xPlayerPos < 0 then
        xPlayerPos = 0
    end
    if xPlayerPos > WINDOW_WIDTH - player:getWidth() then
        xPlayerPos = WINDOW_WIDTH - player:getWidth()
    end
end


function love.draw()
    love.graphics.draw(player, xPlayerPos, yPlayerPos)
    love.graphics.print("FPS: " .. love.timer.getFPS(), 10, 10)
    love.graphics.print("X: " .. xPlayerPos, 10, 30)
    love.graphics.print("Y: " .. yPlayerPos, 10, 50)
    love.graphics.print("Player Speed: " .. playerSpeed, 10, 70)
end
