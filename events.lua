--hello
function game_over()
  if player.health < 1 then
    cls(136)
    player.last_score = player.score
    print("game over", 45, 20, 7)
    print("leader board", 37, 40, 7)
    print("___________________________________________________________________________________________________________________________________________________", 0, 45,7)
    print("your highscore:", 44, 55, 7)
    print(player.last_score, 110, 55, 7)
    print("dev highscore:", 44, 65, 7)
    print("11", 110, 65, 7)
    ball.speedx = 0
    ball.speedy= 0
  end
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
      sfx(0)
      --printh("playerhit")
    end
  elseif ball.y > hitboxp.y1
  and ball.y < hitboxp.y2
  and ball.x > hitboxp.x1
  and ball.x < hitboxp.x2 then
    if(playerhit==false) then
    sfx(0)
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
      sfx(0)
      --printh("playerhit")
    end
  elseif ball.y > hitboxp.y1
  and ball.y < hitboxp.y2
  and ball.x > hitboxp.x1
  and ball.x < hitboxp.x2 then
      sfx(0)
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
      sfx(0)
      --printh("playerhit")
    end
  elseif ball.y > hitboxp.y1
  and ball.y < hitboxp.y2
  and ball.x > hitboxp.x1
  and ball.x < hitboxp.x2 then
      ball.speedx = 3
      sfx(0)
  end
  if ball.y > hitboxe.y1
  and ball.y < hitboxe.y2
  and ball.x+8 > hitboxe.x1
  and ball.x < hitboxe.x2 then
    ball.speedx = -3
    sfx(0)
    playerhit = false
    ability.abilcount +=1
  end
  if ball.y > hitboxe.y1
  and ball.y < hitboxe.y2
  and ball.x+8 > hitboxe.x1
  and ball.x < hitboxe.x2
  and enemy.speed < 1 then
    ball.speedx = -3
    ball.speedy = -0.8
    sfx(0)
    playerhit = false
    ability.abilcount +=1
  end
  if ball.y > hitboxe.y1
  and ball.y < hitboxe.y2
  and ball.x+8 > hitboxe.x1
  and ball.x > hitboxe.x2
  and enemy.speed < 1 then
    ball.speedx = -3
    ball.speedy = 0.8
    playerhit = false
    ability.abilcount +=1
    sfx(0)
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
  --more abil points
  if (ability.abilcount >=3) and ability.counter <8 then
    ability.abilcount = 0
    ability.counter +=1
  end
  --speed
  if btnp(5) and ability.counter>0 and ball.speedx<0 then 
    playerhit = true
    ability.counter -=1
    --printh(ability.counter)
  end
  --shield
  if btnp(4) and ability.counter>0 and ability.shield==false then 
    ability.shield = true
    ability.counter -=1
    --printh(ability.counter)
  end
end
