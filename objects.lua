--Moin
player = {
    x = 0,
    y = 60,
    speed = 0,
    sp = 1,
    score = 0,
    health = 4,
    last_score =nil,
    last_score2 = nil
}
ability = {
    counter = 3,
    shield =false,
    abilcount =0
}
enemy = {
    x = 125,
    y = player.y,
    speed = 0,
    sp = 1,
    score = 1
}
ball = {
    x = 60,
    y = 60,
    speedx = -3,
    speedy = 0
}
hitboxp = {
  x1, x2 = player.x, player.x+1,
  y1, y2 = player.y, player.y
}
hitboxe = {
  x1, x2 = enemy.x, enemy.x+1,
  y1, y2 = enemy.y, enemy.y+8
}
