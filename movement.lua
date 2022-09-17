function move()
    if btn(3) then player.speed=1end
    if btn(2) then player.speed=-1end
    if(player.y<0) then player.y=120end
    if(player.y>120) then player.y=0end
    if btn(4) then player.speed=-5end
    if btn(5) then player.speed=5end
    if(enemy.y<0) then enemy.y=120end
    if(enemy.y>120) then enemy.y=0end
    if(ball.x>120) then player.score+=1end
    if(ball.x<0) then player.score-=1end
end