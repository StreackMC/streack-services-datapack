# TNT计时器
execute as @e[type=tnt,nbt={fuse:0s}] at @s if entity @a[distance=..45] run data modify entity @s CustomName set value [{"text":"BOOM!",color:"#ff461f"}]
execute as @e[type=tnt,nbt={fuse:20s}] at @s if entity @a[distance=..45] run data modify entity @s CustomName set value [{"text":"1s",color:"#ff461f"}]
execute as @e[type=tnt,nbt={fuse:40s}] at @s if entity @a[distance=..45] run data modify entity @s CustomName set value [{"text":"2s",color:"#ff461f"}]
execute as @e[type=tnt,nbt={fuse:60s}] at @s if entity @a[distance=..45] run data modify entity @s CustomName set value [{"text":"3s",color:"#ff461f"}]
execute as @e[type=tnt,nbt={fuse:80s}] at @s if entity @a[distance=..45] run data modify entity @s CustomName set value [{"text":"4s",color:"#c9dd22"}]
execute as @e[type=tnt,nbt={fuse:100s}] at @s if entity @a[distance=..45] run data modify entity @s CustomName set value [{"text":"5s",color:"#c9dd22"}]
execute as @e[type=tnt,nbt={fuse:120s}] at @s if entity @a[distance=..45] run data modify entity @s CustomName set value [{"text":"6s",color:"#c9dd22"}]
execute as @e[type=tnt,nbt={fuse:140s}] at @s if entity @a[distance=..45] run data modify entity @s CustomName set value [{"text":"7s",color:"#00bc12"}]
execute as @e[type=tnt,nbt={fuse:160s}] at @s if entity @a[distance=..45] run data modify entity @s CustomName set value [{"text":"8s",color:"#00bc12"}]
execute as @e[type=tnt,nbt={fuse:180s}] at @s if entity @a[distance=..45] run data modify entity @s CustomName set value [{"text":"9s",color:"#00bc12"}]
execute as @e[type=tnt,nbt={fuse:200s}] at @s if entity @a[distance=..45] run data modify entity @s CustomName set value [{"text":"10s",color:"#00bc12"}]
execute as @e[type=tnt] at @s if entity @a[distance=..45] if data entity @s CustomName run data modify entity @s CustomNameVisible set value true

# 不稳定TNT爆炸 600s 即 12000tick 后爆炸
execute as @e[predicate=!kdx.joyous:has_unstable_tnt] run scoreboard players reset @s kdx.joyous.unstable_tnt_counter
execute as @e[predicate=kdx.joyous:has_unstable_tnt] run scoreboard players add @s kdx.joyous.unstable_tnt_counter 1
execute as @e[predicate=kdx.joyous:has_unstable_tnt,scores={kdx.joyous.unstable_tnt_counter=10800}] run tellraw @s [{text:"你物品栏里的",color:red},{text:"[不稳定的TNT]",color:aqua},{text:"快要爆炸了！",color:red}]
execute as @e[predicate=kdx.joyous:has_unstable_tnt,scores={kdx.joyous.unstable_tnt_counter=12000..}] run tag @s add streack_unstable_tnt_explosing
execute as @e[tag=streack_unstable_tnt_explosing] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[tag=streack_unstable_tnt_explosing] run clear @s tnt[custom_data={"streack":"unstable_tnt"}]
execute as @e[tag=streack_unstable_tnt_explosing] at @s as @a[distance=..3] run advancement grant @s only kdx.joyous:killed_by_unstable_tnt
execute as @e[tag=streack_unstable_tnt_explosing] at @s as @e[distance=..3] run damage @s 85.5 player_explosion by @n[tag=streack_unstable_tnt_explosing]
execute as @e[tag=streack_unstable_tnt_explosing] run scoreboard players set @s kdx.joyous.unstable_tnt_counter 0
execute as @e[tag=streack_unstable_tnt_explosing] run tag @s remove streack_unstable_tnt_explosing

# 不稳定TNT遇水恢复
execute at @e[type=splash_potion] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 tnt[unstable=false] replace tnt[unstable=true]
execute at @e[type=lingering_potion] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 tnt[unstable=false] replace tnt[unstable=true]
execute at @e[type=area_effect_cloud] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 tnt[unstable=false] replace tnt[unstable=true]