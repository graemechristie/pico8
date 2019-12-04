pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
x = 64  y = 64
function _update()
  if (btn(0)) then x=x-1 end
  if (btn(1)) then x=x+1 end
  if (btn(2)) then y=y-1 end
  if (btn(3)) then y=y+1 end
end

function _draw()
  rectfill(0,0,127,127,5)
  circfill(x,y,7,8)
end
__gfx__
0000000000000000000000000000000000888880000000003b3b3b3b3b3b3b3b0000000000000333bbbbbbb30000000000000000000030000000000000000000
000000000000000000000000000000000088888000000000b3b3b3b3b3b3b3b300000000000033bbb33bb3330000000000000000333303300000000000000000
007007000089998000000000000000000088fffff00000003b3b3b3b3b3b3b3b000000000033bbbb33333bbb0000000000000003883338000000000000000000
000770000995959900000000000000000088fcfcf0000000b3b3b3b3b3b3b3b300000000033bb333bbb33bbb0000000000000000885858000000000000000000
0007700009799979000000000000000000887fff7000000044444444444444440000000033bb33bbbbbbbbbb0000000000000000868568000000000000000000
007007000987778900000000000000000000f777f0000000444444444444444400000000bbb3bbbbbbbbbbbb0000000000000000888887700000000000000000
00000000088999880000000000000000000ccccccc800000444444444444444400000000bb3bbbbbbbbbbbbb0000000000000000888877800000000000000000
00000000000909000000000000000000000c8ccc8c800000444444444444444400000000b3bbbbbbbbbbbbbb0000000000000000777778000000000000000000
00000000000000000000000000000000008c81118c8000004444444444444444000000003bbbbbbbbbbbbbbb0000000000000000888888000000000000000000
00000000000000000000000000000000008881818880000044444444444444440000000000000000000000000000000000000008888880000000000000000000
00000000000000000000000000000000008881818880000044444444444444440000000000000000000000000000000000000088888880000000000000000000
00000000000000000000000000000000000001010000000044444444444444440000000000000000000000000000000000000888888880000000000000000000
00000000000000000000000000000000000000000000000044444444444444440000000000000000000000000000000000008888888800000000000000000000
00000000000000000000000000000000000000000000000044444444444444440000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000044444444444444440000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000044444444444444440000000000000000000000000000000000000000000000000000000000000000
00000000000000bbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000b00bbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000b0bbbbbb0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000b08585800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000008757800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000008787800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000088889800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000889998800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000008888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
