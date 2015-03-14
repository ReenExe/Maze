maze = {
    step = {},
    menu = {},
    game = {},
    debug = {
        switch = true
    }
}

require("maze/step")
require("maze/menu")
require("maze/game")
require("maze/debug")

function love.load()
    maze.step.set(maze.step.MENU)
end

function love.draw()
    if maze.step.get() == maze.step.MENU then
        maze.menu.enter()
    elseif maze.step.get() == maze.step.GAME then
        maze.game.show()
    end
    maze.debug.show();
end

function love.update()
end

function love.keypressed(key)
    maze.debug.push(key);

    if key == "escape" then
        love.event.quit()
    elseif key == "return" then
        maze.step.set(maze.step.GAME)
    end
end