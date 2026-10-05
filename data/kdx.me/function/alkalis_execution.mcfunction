# 处决碱金属烧死的
execute at @s run particle explosion ~ ~ ~ 2 2 2 1 5 normal
execute at @s run summon marker ~ ~-2 ~ {NoGravity:true,Invulnerable:true,CustomName:{translate:"streack.death.alkalis",fallback:"碱金属遇水放出的热量"},Tags:["streack_death_alkalis"]}
execute at @s as @a[distance=..3] run advancement grant @s only kdx.me:grantable/dead_by_alkalis
execute at @s as @e[distance=..3] run damage @s 50 minecraft:player_attack by @n[tag=streack_death_alkalis,type=marker]
kill @n[tag=streack_death_alkalis,type=marker]