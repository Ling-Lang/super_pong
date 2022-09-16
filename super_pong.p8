pico-8 cartridge // http://www.pico-8.com
version 38
__lua__
--init
#include player_init.lua
function _init()
	cls(0)
	print(player.speed, 20, 20, 4)
end


-->8
--update
#include movement.lua
function _draw()
cls(0)
	spr(1, player.x, player.y)
	hs()
end

function _update()
	move()
	player.y +=player.speed
	player.speed=0
end
__gfx__
00000000700000000000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000670000000000007600000000000000000000000000000000077777777777777007777777777777700777777777777770077777777777777000000000
00700700670000000000007600077000000220000001100000088000070000000000007007000000000000700700000000000070070000000000007000000000
00077000670000000000007600766700002ef200001c7100008f9800070000080000007007000002200000700700000000000070070000000000007000000000
00077000670000000000007600766700002fe2000017c1000089f80007000088808000700700002ef20000700700000000000070070000000000007000000000
0070070067000000000000760007700000022000000110000008800007000089888000700700002fe20000700700000000000070070000000000007000000000
00000000670000000000007600000000000000000000000000000000070008999898007007000002200000700700066600110070070000000000007000000000
000000007000000000000007000000000000000000000000000000000700889f9998007007000000000000700700000001c71070070000000000007000000000
000000000000000000000000000000000000000000000000000000000700899ff9980070070000000000007007066600017c1070070000000000007000000000
00000000000000000000000000000000000000000000000000000000070089ffff98007007002200002200700700000000110070070000000000007000000000
000000000000000000000000000000000000000000000000000000000700899fff9800700702ef2002ef20700700006660000070070000000000007000000000
0000000000000000000000000000000000000000000000000000000007000899998800700702fe2002fe20700700000000000070070000000000007000000000
00000000000000000000000000000000000000000000000000000000070000888880007007002200002200700700000000000070070000000000007000000000
00000000000000000000000000000000000000000000000000000000070000000000007007000000000000700700000000000070070000000000007000000000
00000000000000000000000000000000000000000000000000000000077777777777777007777777777777700777777777777770077777777777777000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000008880000008880000000000000000000000000000000000000000000000000000000000000000000000000000000000
00888000000888000000000000000000088e88000088e88000000000000080000000700000000000000000000000000000000000000000000000000000000000
088e88000088e880000888000088800088e8888008888e8800000000000898000007970000222200007777000000000000000000000000000000000000000000
08e8888008888e800088e880088e88008e888888888888e8000000000089980000799700000ef000000ef000001c1c10007c7c70000000000000000000000000
08e8888888888e80008e88888888e8008e888888888888e8000000000089f8000079f700002222000077770001c1c10007c7c700000000000000000000000000
0888888888888e80008888888888e80088888888888888e800000000000880000007700000000000000000000000000000000000000000000000000000000000
0888888888888e800088888888888800888888888888888800000000000000000000000000000000000000000000000000000000000000000000000000000000
00888888888888000008888888888000088888888888888000000000000000000000000000000000000000000000000000000000000000000000000000000000
00888888888888000008888888888000088888888888888000000000000000000000000000000000000000000000000000000000000000000000000000000000
0008888888888000000088888e880000008888888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000
0008888888e8800000008888e888000000888888888e880000000000000000000000000000000000000000000000000000000000000000000000000000000000
000088888e88000000000888888000000008888888e8800000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000888888000000000008888000000000088888e88000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000088880000000000000880000000000008888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000008800000000000000000000000000000888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000088000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09999999999999900999999999999990099999999999999009999999999999900999999999999990099999999999999009999999999999900999999999999990
90000000000000099a000000000000099aa00000000000099aaa0000000000099aaaa000000000099aaaaa00000000099aaaaaa0000000099aaaaaaa00000009
09999999999999900999999999999990099999999999999009999999999999900999999999999990099999999999999009999999999999900999999999999990
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09999999999999900999999999999990099999999999999009999999999999900999999999999990099999999999999009999999999999900999999999999990
9aaaaaaaa00000099aaaaaaaaa0000099aaaaaaaaaa000099aaaaaaaaaaa00099aaaaaaaaaaaa0099aaaaaaaaaaaaa099aaaaaaaaaaaaaa99777777777777779
09999999999999900999999999999990099999999999999009999999999999900999999999999990099999999999999009999999999999900999999999999990
