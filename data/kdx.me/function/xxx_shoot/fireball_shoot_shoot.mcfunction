# 克隆一个烈焰弹实体（小号）
execute as @s[nbt={"item":{components:{"minecraft:custom_data":{"streack":"enchantment_small_fireball_loaded"}}}}] at @s run summon small_fireball ~ ~ ~ {LeftOwner:false,Tags:["streack_fireball_shoot"],acceleration_power:0}
execute as @s[nbt={"item":{components:{"minecraft:custom_data":{"streack":"enchantment_small_fireball_loaded"}}}}] at @s run data modify entity @e[sort=nearest,type=small_fireball,limit=1,tag=streack_fireball_shoot] Owner set from entity @s Owner
execute as @s[nbt={"item":{components:{"minecraft:custom_data":{"streack":"enchantment_small_fireball_loaded"}}}}] at @s run data modify entity @e[sort=nearest,type=small_fireball,limit=1,tag=streack_fireball_shoot] Motion set from entity @s Motion
execute as @s[nbt={"item":{components:{"minecraft:custom_data":{"streack":"enchantment_small_fireball_loaded"}}}}] at @s run data modify entity @e[sort=nearest,type=small_fireball,limit=1,tag=streack_fireball_shoot] Rotation set from entity @s Rotation
execute as @s[nbt={"item":{components:{"minecraft:custom_data":{"streack":"enchantment_small_fireball_loaded"}}}}] at @s run data modify entity @e[sort=nearest,type=small_fireball,limit=1,tag=streack_fireball_shoot] HasBeenShot set from entity @s HasBeenShot
execute as @s[nbt={"item":{components:{"minecraft:custom_data":{"streack":"enchantment_small_fireball_loaded"}}}}] at @s run data modify entity @e[sort=nearest,type=small_fireball,limit=1,tag=streack_fireball_shoot] Tags set from entity @s Tags
execute at @s run scoreboard players operation @e[sort=nearest,type=small_fireball,limit=1,tag=streack_fireball_shoot] kdx.me.projectiles_loading += @s kdx.me.projectiles_loading
execute as @s[nbt={"item":{components:{"minecraft:custom_data":{"streack":"enchantment_small_fireball_loaded"}}}}] at @s run tag @e[sort=nearest,type=small_fireball,limit=1,tag=streack_fireball_shoot] remove streack_fireball_shoot

# 克隆一个烈焰弹实体（大号）
execute as @s[nbt={"item":{components:{"minecraft:custom_data":{"streack":"enchantment_large_fireball_loaded"}}}}] at @s run summon fireball ~ ~ ~ {LeftOwner:false,Tags:["streack_fireball_shoot"],acceleration_power:0,Item:{id:"fire_charge",components:{enchantment_glint_override:true}}}
execute as @s[nbt={"item":{components:{"minecraft:custom_data":{"streack":"enchantment_large_fireball_loaded"}}}}] at @s run data modify entity @e[sort=nearest,type=fireball,limit=1,tag=streack_fireball_shoot] Owner set from entity @s Owner
execute as @s[nbt={"item":{components:{"minecraft:custom_data":{"streack":"enchantment_large_fireball_loaded"}}}}] at @s run data modify entity @e[sort=nearest,type=fireball,limit=1,tag=streack_fireball_shoot] Motion set from entity @s Motion
execute as @s[nbt={"item":{components:{"minecraft:custom_data":{"streack":"enchantment_large_fireball_loaded"}}}}] at @s run data modify entity @e[sort=nearest,type=fireball,limit=1,tag=streack_fireball_shoot] Rotation set from entity @s Rotation
execute as @s[nbt={"item":{components:{"minecraft:custom_data":{"streack":"enchantment_large_fireball_loaded"}}}}] at @s run data modify entity @e[sort=nearest,type=fireball,limit=1,tag=streack_fireball_shoot] HasBeenShot set from entity @s HasBeenShot
execute as @s[nbt={"item":{components:{"minecraft:custom_data":{"streack":"enchantment_large_fireball_loaded"}}}}] at @s run data modify entity @e[sort=nearest,type=fireball,limit=1,tag=streack_fireball_shoot] Tags set from entity @s Tags
execute at @s run scoreboard players operation @e[sort=nearest,type=fireball,limit=1,tag=streack_fireball_shoot] kdx.me.projectiles_loading += @s kdx.me.projectiles_loading
execute as @s[nbt={"item":{components:{"minecraft:custom_data":{"streack":"enchantment_large_fireball_loaded"}}}}] at @s run tag @e[sort=nearest,type=fireball,limit=1,tag=streack_fireball_shoot] remove streack_fireball_shoot

# 删除箭矢
kill @s