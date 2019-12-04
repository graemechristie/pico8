pico-8 cartridge // http://www.pico-8.com
version 18
__lua__

player={ sprite = 1, x = 64, y = 64 , attack = {} }
h=112
w=128
timer5=0


debug=false

function _init()

end

function _update()
  timer5-=1
  player.attack = {}
  if (btn(0) and not cboth(player.x-1, player.y)) then player.x=player.x-1 end
  if (btn(1) and not cboth(player.x+1, player.y)) then player.x=player.x+1 end
  if (btn(2) and not cboth(player.x, player.y-1)) then player.y=player.y-1 end
  if (btn(3) and not cboth(player.x, player.y+1)) then player.y=player.y+1 end
  if (btn(0) and btn(4) and not cbounds(player.x-1,player.y)) then player.attack = { sprite=80, flip_x = true,  flip_y=false, x=-8, y=0 } end
  if (btn(1) and btn(4) and not cbounds(player.x+1,player.y)) then player.attack = { sprite=80, flip_x = false, flip_y=false, x=8, y=0 } end
  if (btn(2) and btn(4) and not cbounds(player.x,player.y+1)) then player.attack = { sprite=81, flip_x = false, flip_y=false, x=0, y=-8 } end
  if (btn(3) and btn(4) and not cbounds(player.x,player.y+1)) then player.attack = { sprite=81, flip_x = false, flip_y=true, x=0, y=8 } end
  if (btn(5) and timer5 < 0) then 
    player.sprite = player.sprite+1 
    timer5=10  
  end

  if (player.sprite > 8) then player.sprite=1 end

end

function _draw()
  map(0,0,0,0,16,14)
  spr(player.sprite, player.x, player.y)
  
  rectfill(0,113,128,128,0)

  for y=0,0 do
    for x=1,8 do
      spr(x+(y*16), (x-1)*8, 113+(y*8))
    end
  end
      
  local selectedx=(player.sprite % 8)*8-8
  local selectedy=(player.sprite > 16) and 121 or 113

  rect(selectedx, selectedy, selectedx+8, selectedy+8, 15)

  if (next(player.attack) != nil) then
    spr(player.attack.sprite, player.x + player.attack.x, player.y + player.attack.y, 1, 1, player.attack.flip_x, player.attack.flip_y)
  end

  if (debug) then
    print("flags: "..fget(mget(player.x/8, player.y/8)), 8, 2)
    print("sprite: "..mget(player.x/8, player.y/8), 64, 2)
  end

end

function cmap(x,y)
  local ct=false
  local x1=x/8
  local y1=y/8
  local x2=(x+7)/8
  local y2=(y+7)/8
  local a=fget(mget(x1,y1),0)
  local b=fget(mget(x1,y2),0)
  local c=fget(mget(x2,y2),0)
  local d=fget(mget(x2,y1),0)
  return a or b or c or d   
end

function cbounds(x,y)
  return (x<0 or x+8>w or y<0 or y+8>h)
end

function cboth(x,y)
  return cmap(x,y) or cbounds(x,y)
end
