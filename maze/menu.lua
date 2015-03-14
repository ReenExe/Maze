maze.menu.welcome = "Menu Maze LÖVE"

function maze.menu.draw()
    local width = love.window.getWidth()
    local height = love.window.getHeight()

    love.graphics.setBackgroundColor(32, 64, 128)

    love.graphics.setColor(255, 255, 255);

    love.graphics.print(maze.menu.welcome, width / 2, height / 5)
end

function maze.menu.keypressed(key)
    if key == "escape" then
        love.event.quit()
    elseif key == "return" then
        maze.step.set(maze.step.GAME)
    end
end