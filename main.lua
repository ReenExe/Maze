local projectName = "Maze LÖVE"

function love.load()
    dynamicColor = 1;
    size = 5;
    table = {
        distance = 50,
        width = 25,
        height = 25
    }
end

function love.update()
    dynamicColor = math.max((dynamicColor + 0.5) % 128, 32);
    love.graphics.setBackgroundColor(0, dynamicColor, 0)
end

function matrix(r, g, b)
    local redColorDynamic = r;
    for x = 1, size do
        for y = 1, size do
            redColorDynamic = redColorDynamic + 3;
            love.graphics.setColor(redColorDynamic, g, b);
            love.graphics.rectangle('fill', x * table.distance, y * table.distance, table.width, table.height);
        end
    end
end

function love.draw()
    matrix(dynamicColor, 100, 100)
    love.graphics.setColor(255, 255, 255);
    love.graphics.print(projectName, 300, 240)
end