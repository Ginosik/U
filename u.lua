require('firstOfNumbers')
require('move')
require('colhomelo')

U = {}

U.x = Width/2
U.y = Height/2
U.Moves = love.graphics.newImage("sprites/05.png")
U.direction = -1
U.ajust = 16
U.speed = 128
var = 16

visi = 0

function initialspeed(dt, x)
  x = x + 1 * dt
  return x
end

function U.move(dt)
  U.x = move(dt, U.x, U.y, U.speed, U.direction, 1, U.ajust)
  U.y = move(dt, U.x, U.y, U.speed, U.direction, 2, U.ajust)
  U.direction = move(dt, U.x, U.y, U.speed, U.direction, 3, U.ajust)
  U.ajust = move(dt, U.x, U.y, U.speed, U.direction, 4, U.ajust)
end

function U.update(dt)

  U.xdis = U.x - colhomelo.x
  U.ydis = U.y - colhomelo.y


  dis = (U.xdis + U.ydis) /2

  U.move()

  visi = visi + 10 * dt
end

function U.draw()
  love.graphics.setColor(255, 255, 255, visi)
  if dis < 40 then
    colhomelo.visiButton = 1
  else
    colhomelo.visiButton = 0
  end
  love.graphics.draw(U.Moves, U.x + U.ajust, U.y - 24, nill, U.direction, 1)
  love.graphics.setColor(0, 0, 0)
  love.graphics.circle('fill', Width/2, Height/2, 60)
  love.graphics.setColor(255, 255, 255, visi)
  love.graphics.circle('fill', Width/2, Height/2, 60)
  love.graphics.print(U.ajust)
end
