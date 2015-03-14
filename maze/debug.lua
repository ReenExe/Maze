if maze.debug.switch then

    maze.debug.list = {}

    maze.debug.current = 1;

    maze.debug.setting = {
        size = 10,
        distance = 20
    }

    function maze.debug.show()
        if #maze.debug.list then
            local width = love.window.getWidth()
            local height = love.window.getHeight()

            local area = maze.debug.setting.size * maze.debug.setting.distance
            love.graphics.setColor(0, 0, 0);
            love.graphics.rectangle('fill', 0, height - area, width, area);

            local current = 1;
            local showed = maze.debug.setting.size - 1;
            if #maze.debug.list > showed then
                current = 1 + #maze.debug.list - showed
            end

            love.graphics.setColor(0, 128, 0);
            for index = current, #maze.debug.list do
                love.graphics.print(maze.debug.list[index], 5, height - area + maze.debug.setting.distance * (index - current + 1));
            end
        end
    end

    function maze.debug.push(value)
        maze.debug.list[maze.debug.current] = value

        maze.debug.current = maze.debug.current + 1;
    end
else
    function maze.debug.push()   end

    function maze.debug.show() end
end