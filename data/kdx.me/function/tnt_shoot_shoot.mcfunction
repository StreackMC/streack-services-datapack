# 生成一个TNT
execute at @s run summon tnt ~ ~ ~ {Tags:["streack_tnt_shoot"],fuse:120,explosion_power:3}
execute at @s run data modify entity @e[sort=nearest,type=tnt,limit=1,tag=streack_tnt_shoot] owner set from entity @s Owner
execute at @s run ride @e[sort=nearest,type=tnt,limit=1,tag=streack_tnt_shoot] mount @s
execute at @s run tag @e[sort=nearest,type=tnt,limit=1,tag=streack_tnt_shoot] remove streack_tnt_shoot

# 箭矢曳光
function kdx.me:lighting_shoot

# 删除原本会掉落的TNT
execute at @s run data remove entity @s item

# 不允许捡起箭矢
data modify entity @s "pickup" set value 2
data modify entity @s "crit" set value false
data modify entity @s "damage" set value 1