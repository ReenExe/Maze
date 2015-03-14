maze.menu = {
    welcome = "Menu Maze LÖVE"
}

function maze.menu.enter()
    local width = love.window.getWidth()
    local height = love.window.getHeight()

    love.graphics.setBackgroundColor(32, 64, 128)

    love.graphics.setColor(255, 255, 255);

    love.graphics.print(maze.menu.welcome, width / 2, height / 5)
end