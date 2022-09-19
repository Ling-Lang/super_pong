--Moin
function move()
    if btn(3) then player.speed=2end
    if btn(2) then player.speed=-2end
    if(player.y<0) then player.y=120end
    if(player.y>120) then player.y=0end
    -- Debug stuff
    -- Debug end
    if(enemy.y<0) then enemy.y=120end
    if(enemy.y>120) then enemy.speed=0end
    if(ball.x>130) then player.score+=1 ball.x=60 ball.y = 60 player.y = 60 ball.speedy = 0 enemy.y = 60end
    if(ball.x<-2) and ability.shield==false then
      player.health-=1
      deli(hearts, player.health)
      ball.x=60
      ball.y = 60
      player.y = 60
      ball.speedy = 0
      enemy.y=60
    elseif(ball.x<-2) and ability.shield==true then
        ability.shield=false
        deli(hearts, player.health)
        ball.x=60
        ball.y = 60
        player.y = 60
        ball.speedy = 0
        enemy.y=60
      
    end
    if ball.y > 126 then ball.speedy *= -1 end
    if ball.y < 2 then ball.speedy *= -1 end
end
