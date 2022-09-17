player = {
    x = 0,
    y = 0,
    speed = 0,
    sp = 1,
    score = 1
}
enemy = {
    x = player.x,
    y = player.y,
    speed = 0,
    sp = 1,
    score = 1
}
ball = {
    x = 60,
    y = 60,
    speedx = 3,
    speedy = 1
}
function hs()
    print("highscore:", 45, 5, 136)
    print(player.score, 85, 5, 136)
end
