function game_over()
    cls(136)
    print("game over", 60, 60, 7)
end
function hs()
    print("highscore:", 45, 5, 136)
    print(player.score, 85, 5, 136)
    print(hitboxp.x1)
    print(hitboxp.x2)
    print(hitboxp.y1)
    print(hitboxp.y2)
    print(ball.y)
end

function update_posi()
  ball.x+=ball.speedx
  player.y +=player.speed
  enemy.y +=player.speed
  hitboxp.x1, hitboxp.x2 = player.x, player.x+2.5
  hitboxp.y1, hitboxp.y2 = player.y-3, player.y+10
  hitboxe.x1, hitboxe.x2 = enemy.x, enemy.x+2
  hitboxe.y1, hitboxe.y2 = enemy.y-3, enemy.y+10
end

function hit()
  if ball.y > hitboxp.y1
  and ball.y < hitboxp.y2
  and ball.x > hitboxp.x1
  and ball.x < hitboxp.x2 then
    ball.speedx = 3
  end

  if ball.y > hitboxe.y1
  and ball.y < hitboxe.y2
  and ball.x > hitboxe.x1
  and ball.x < hitboxe.x2 then
    ball.speedx = -3
  end
end
