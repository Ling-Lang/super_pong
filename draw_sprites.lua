function dsprite()
  sspr(8,0,2,8,player.x, player.y)
  sspr(22,0,2,8,126, player.y)
  spr(3,ball.x,ball.y)
  rect(hitboxp.x1, hitboxp.y1, hitboxp.x2, hitboxp.y2, 3)
  rect(hitboxe.x1, hitboxe.y1, hitboxe.x2, hitboxe.y2, 10)
end
