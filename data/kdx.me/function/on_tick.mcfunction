# 珍珠弩
execute as @a[scores={kdx.me.projectiles_loading=1..}] run scoreboard players remove @s kdx.me.projectiles_loading 1
execute as @a[scores={kdx.me.projectiles_loading=0}] run scoreboard players reset @s kdx.me.projectiles_loading

# 曳光弹
execute as @e[type=ender_pearl] at @s run particle portal ~ ~ ~ 0.04167 0.04167 0.04167 0.1 5 normal
execute as @e[type=!spectral_arrow,nbt={inGround:false},scores={kdx.me.projectiles_loading=..-199}] at @s run particle glow ~ ~ ~ 0 0 0 0.1 3 normal
execute as @e[type=!spectral_arrow,nbt={inGround:true},scores={kdx.me.projectiles_loading=..-199}] at @s run particle glow ~ ~ ~ 0 0 0 0.1 1 normal
execute as @e[type=spectral_arrow,nbt={inGround:false},scores={kdx.me.projectiles_loading=..-199}] at @s run particle glow ~ ~ ~ 0.04167 0.04167 0.04167 0.1 4 normal
execute as @e[type=spectral_arrow,nbt={inGround:true},scores={kdx.me.projectiles_loading=..-199}] at @s run particle glow ~ ~ ~ 0.04167 0.04167 0.04167 0.1 2 normal
execute as @e[type=arrow,nbt={inGround:false},predicate=kdx:on_fire] at @s run particle lava ~ ~ ~ 0 0 0 0.1 1 normal
execute as @e[type=spectral_arrow,nbt={inGround:false},predicate=kdx:on_fire] at @s run particle lava ~ ~ ~ 0 0 0 0.1 1 normal