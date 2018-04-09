require('firstOfNumbers')

colhomelo = {}
colhomelo.x = 40
colhomelo.y = 200
colhomelo.Moves = love.graphics.newImage("sprites/colhomelo.png")
colhomelo.button = love.graphics.newImage("sprites/E-button.png")
colhomelo.visiButton = 0

function colhomelo.update(dt)

end

function colhomelo.draw()
  love.graphics.draw(colhomelo.Moves, colhomelo.x -24, colhomelo.y -16)
  if colhomelo.visiButton == 1 then
    love.graphics.draw(colhomelo.button, colhomelo.x -8, colhomelo.y -36)
  end
end
