execute as @s run scoreboard players add @s kdx.me.projectiles_loading 2
execute as @s[scores={kdx.me.projectiles_loading=22..}] run item modify entity @s[gamemode=!creative] weapon.offhand kdx:item_remove_one
execute as @s[scores={kdx.me.projectiles_loading=22..}] run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:charged_projectiles":[{"id":"ender_pearl"}]}}
execute as @s[scores={kdx.me.projectiles_loading=22..}] run scoreboard players reset @s kdx.me.projectiles_loading
advancement revoke @s only kdx.me:xxx_shoot/ender_shoot_trigger