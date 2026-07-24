# 克隆一个末影珍珠
execute at @s run summon ender_pearl ~ ~ ~ {LeftOwner:false,Tags:["streack_ender_shoot"]}
execute at @s run data modify entity @e[sort=nearest,type=ender_pearl,limit=1,tag=streack_ender_shoot] Owner set from entity @s Owner
execute at @s run data modify entity @e[sort=nearest,type=ender_pearl,limit=1,tag=streack_ender_shoot] Motion set from entity @s Motion
execute at @s run data modify entity @e[sort=nearest,type=ender_pearl,limit=1,tag=streack_ender_shoot] Rotation set from entity @s Rotation
execute at @s run data modify entity @e[sort=nearest,type=ender_pearl,limit=1,tag=streack_ender_shoot] HasBeenShot set from entity @s HasBeenShot
execute at @s run data modify entity @e[sort=nearest,type=ender_pearl,limit=1,tag=streack_ender_shoot] Tags set from entity @s Tags
execute at @s run tag @e[sort=nearest,type=ender_pearl,limit=1,tag=streack_ender_shoot] remove streack_ender_shoot

# 处理曳光兼容
execute at @s run scoreboard players operation @e[sort=nearest,type=ender_pearl,limit=1,tag=streack_ender_shoot] kdx.me.projectiles_loading += @s kdx.me.projectiles_loading

# 删除箭矢
kill @s