function move(dt, x, y, speed, direction, axis, ajust)
  if direction == -1 then
    isRight = true
  else
    isRight = false
  end
  if love.keyboard.isDown('d') then
    x = x + speed * dt
    direction = -1
    if isRight then
      ajust = 16
      isRight = false
    end
    if speed < 128 then
      speed = initialspeed(dt, speed)
    end
  end
  if love.keyboard.isDown('s') then
    y = y + speed * dt
    if speed < 128 then
      initialspeed(dt, speed)
    end
  end
  if love.keyboard.isDown('a') then
    x = x - speed * dt
    if isRight == false then
    ajust = -16
    isRight = true
    end
    direction = 1
    if speed < 128 then
      initialspeed(dt, speed)
    end
  end
  if love.keyboard.isDown('w') then
    y = y - speed * dt
    if speed < 128 then
      initialspeed(dt, speed)
    end
  end
  if axis == 1 then
    return x
  end
  if axis == 2 then
    return y
  end
  if axis == 3 then
    return direction
  end
  if axis == 4 then
    return ajust
  end
end
