# 阻止挖掘岩浆块
execute as @e[type=armor_stand,tag=streack_enchantment_lava_walker] unless block ~ ~ ~ magma_block if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:magma_block"}}] run setblock ~ ~ ~ lava
execute as @e[type=armor_stand,tag=streack_enchantment_lava_walker] unless block ~ ~ ~ magma_block if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:magma_block"}}] run kill @s

# 清除无效岩浆块
execute as @e[type=armor_stand,tag=streack_enchantment_lava_walker] unless entity @e[type=player,distance=..1,predicate=kdx.me:has_lava_walker] run fill ~ ~ ~ ~ ~ ~ lava replace magma_block destroy
execute as @e[type=armor_stand,tag=streack_enchantment_lava_walker] unless entity @e[type=player,distance=..1,predicate=kdx.me:has_lava_walker] run kill @s