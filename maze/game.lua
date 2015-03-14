maze.game.circle = {
    position = {
        x = love.window.getWidth() / 3,
        y = love.window.getHeight() / 3
    }
}

maze.game.move = {
    up = {0, -1},
    right = {1, 0},
    left = {-1, 0},
    down = {0, 1},
    multi = 7
}

function maze.game.circle.move(position, dx, dy)
    position.x = position.x + maze.game.move.multi * dx;
    position.y = position.y + maze.game.move.multi * dy;
end

function maze.game.draw()
    love.graphics.setBackgroundColor(16, 32, 64)

    love.graphics.setColor(255, 255, 255, 128);

    love.graphics.print("Game", love.window.getWidth() / 2, 128)

    love.graphics.circle("fill", maze.game.circle.position.x, maze.game.circle.position.y, 5, 64);
end

function maze.game.keypressed(key)
    if key == "escape" then
        maze.step.set(maze.step.MENU)
    elseif maze.game.move[key] then
        maze.game.circle.move(maze.game.circle.position, unpack(maze.game.move[key]));
    end
end