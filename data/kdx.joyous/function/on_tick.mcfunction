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

# 不稳定TNT遇水恢复
execute at @e[type=splash_potion] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 tnt[unstable=false] replace tnt[unstable=true]
execute at @e[type=lingering_potion] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 tnt[unstable=false] replace tnt[unstable=true]
execute at @e[type=area_effect_cloud] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 tnt[unstable=false] replace tnt[unstable=true]