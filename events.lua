--hello
function game_over()
    cls(136)
    print("game over", 60, 60, 7)
end
function hs()
    print("highscore:", 45, 5, 136)
    print(player.score, 85, 5, 136)
--    print(hitboxp.x1)
--    print(hitboxp.x2)
--    print(hitboxp.y1)
--    print(hitboxp.y2)
--    print(ball.y)
--    print(enemy.speed)
end

function update_posi()
  ball.x+=ball.speedx
  ball.y+=ball.speedy
  player.y +=player.speed
  enemy.y +=enemy.speed
  hitboxp.x1, hitboxp.x2  = player.x-1, player.x+2
  hitboxp.y1, hitboxp.y2 = player.y-6, player.y+14
  hitboxe.x1, hitboxe.x2 = enemy.x-1, enemy.x+2
  hitboxe.y1, hitboxe.y2 = enemy.y-7, enemy.y+14
  --enemy.speed = player.speed
end

function hit()
  if ball.y > hitboxp.y1
  and ball.y < hitboxp.y2
  and ball.x > hitboxp.x1
  and ball.x < hitboxp.x2 then
    if(playerhit==true) then
      ball.speedx *=3
      --printh("playerhit")
    end
  elseif ball.y > hitboxp.y1
  and ball.y < hitboxp.y2
  and ball.x > hitboxp.x1
  and ball.x < hitboxp.x2 then
    if(playerhit==false) then
      ball.speedx = 3
    end
  end
  if ball.y > hitboxp.y1
  and ball.y < hitboxp.y2
  and ball.x > hitboxp.x1
  and ball.x < hitboxp.x2
  and player.speed > 1 then
    ball.speedy = player.speed
    if(playerhit==true) then
      ball.speedx *=2
      ball.speedy *=2
      --printh("playerhit")
    end
  elseif ball.y > hitboxp.y1
  and ball.y < hitboxp.y2
  and ball.x > hitboxp.x1
  and ball.x < hitboxp.x2 then
      ball.speedx = 3
  end
  if ball.y > hitboxp.y1
  and ball.y < hitboxp.y2
  and ball.x > hitboxp.x1
  and ball.x < hitboxp.x2
  and player.speed < 1 then
    ball.speedy = player.speed
    if(playerhit==true) then
      ball.speedx *=2
      ball.speedy *=2
      --printh("playerhit")
    end
  elseif ball.y > hitboxp.y1
  and ball.y < hitboxp.y2
  and ball.x > hitboxp.x1
  and ball.x < hitboxp.x2 then
      ball.speedx = 3
  end
  if ball.y > hitboxe.y1
  and ball.y < hitboxe.y2
  and ball.x+8 > hitboxe.x1
  and ball.x < hitboxe.x2 then
    ball.speedx = -3
    playerhit = false
  end
  if ball.y > hitboxe.y1
  and ball.y < hitboxe.y2
  and ball.x+8 > hitboxe.x1
  and ball.x < hitboxe.x2
  and enemy.speed < 1 then
    ball.speedx = -3
    ball.speedy = -0.8
    playerhit = false
  end
  if ball.y > hitboxe.y1
  and ball.y < hitboxe.y2
  and ball.x+8 > hitboxe.x1
  and ball.x > hitboxe.x2
  and enemy.speed < 1 then
    ball.speedx = -3
    ball.speedy = 0.8
    playerhit = false
  end
end

function eai()
  local time = 1
  for time=1, 300 do
  --printh(time)
    if ball.y > enemy.y then enemy.speed = 1.8 end
    if ball.y < enemy.y then enemy.speed = -1.8 end
  end
end

function abil()
  --speed

  if btn(4) then
    playerhit = true
    --printh("speed")
  end
end
