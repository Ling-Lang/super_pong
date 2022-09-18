player = {
    x = 0,
    y = 0,
    speed = 0,
    sp = 1,
    score = 1
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
    speedx = -1,
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
