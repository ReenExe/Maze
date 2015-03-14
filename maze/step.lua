maze.step.MENU = 1
maze.step.GAME = 3

function maze.step.set(step)
    maze.step.current = step;
end

function maze.step.get()
    return maze.step.current
end