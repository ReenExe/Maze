maze = {
    debug = true
}

require("maze/menu")
require("maze/debug")

function love.draw()
    maze.menu.enter()
    maze.debug.show();
end

function love.update()
end

function love.keypressed(key)
    maze.debug.push(key);

    if key == "escape" then
        love.event.quit()
    end
end