--Hello
function dsprite()

--  rect(hitboxp.x1, hitboxp.y1, hitboxp.x2, hitboxp.y2, 3)
--  rect(hitboxe.x1, hitboxe.y1, hitboxe.x2, hitboxe.y2, 10)
spr(108,0,112,16,5)
spr(108,16,112,16,5)
spr(108,32,112,16,5)
spr(108,48,112,16,5)
spr(108,64,112,16,5)
spr(108,80,112,16,5)
spr(108,96,112,16,5)
spr(108,112,112,16,5)
sspr(8,0,2,14,player.x, player.y)
sspr(16,0,2,14,126, enemy.y)
spr(5,ball.x,ball.y)
end
