maze = {
    step = {},
    menu = {},
    game = {},
    state = {},
    debug = {
        switch = true
    }
}

require("maze/step")
require("maze/menu")
require("maze/game")
require("maze/debug")

function love.load()
    maze.state[maze.step.MENU] = maze.menu;
    maze.state[maze.step.GAME] = maze.game;

    maze.step.set(maze.step.MENU)

    maze.debug.push("console...");
end

function love.draw()
    maze.state[maze.step.get()].draw()

    maze.debug.show();
end

function love.update()
end

function love.keypressed(key)
    maze.debug.push("keypress " .. key);

    maze.state[maze.step.get()].keypressed(key)
end