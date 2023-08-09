local message = ""
local TARGET_MESSAGE = "love you "
local currentIdx = 1 -- Since 'I' is already there

function love.load()
    love.graphics.setBackgroundColor(1, 1, 1) -- Sets the background color to white
    love.window.setTitle("Love Message")
    font = love.graphics.newFont("Roboto-Black.ttf", 40)
    love.graphics.setFont(font)
end

function addLetter()
    local charToAdd = string.sub(TARGET_MESSAGE, currentIdx, currentIdx)
    message = message .. charToAdd

    currentIdx = currentIdx + 1
    if currentIdx > #TARGET_MESSAGE then
        currentIdx = 1
    end
    if charToAdd == ' ' then
      addLetter()
    end
end

function love.keypressed(key)
  addLetter()
end

function love.draw()
    love.graphics.setColor(0, 0, 0)
    local xMargin = 30
    love.graphics.printf(message, xMargin, 20, love.graphics.getWidth() - xMargin * 2)
end

