function love.load()
  love.window.setFullscreen(true)

  require('firstOfNumbers')
  require('u')
  require('colhomelo')
end

function love.update(dt)
  U.update(dt)
  colhomelo.update(dt)
end

function love.draw()
  U.draw()
  colhomelo.draw()
end
