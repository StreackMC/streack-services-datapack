execute store result score kdx.cleaner:killed kdx run kill @e[type=minecraft:item,predicate=!kdx.cleaner:whitelist]
scoreboard players operation kdx.cleaner:killed.sum kdx += kdx.cleaner:killed kdx
execute store result score kdx.cleaner:killed kdx run kill @e[type=minecraft:falling_block,predicate=kdx.cleaner:blacklist_fb]
scoreboard players operation kdx.cleaner:killed.sum kdx += kdx.cleaner:killed kdx
tellraw @a [\
  {text: "扫地姬对累计",color: "white"},\
  {score: {objective: "kdx", name: "kdx.cleaner:killed.sum"}, color: "yellow"},\
  {text: "份掉落物",color: "yellow"},\
  {text: "使用了技能",color: "white"},\
  {text: "[冥河彼岸]",color: "aqua", hover_event: {action:"show_text",value: [\
    {text: "§r§b冥河彼岸\n§r\n§r§f将全部未被注魔§b[冥河抗性]§r§f的掉落物丢入冥河中，让其降解在死寂无声的冥河中，随后此技能进入10分钟的冷却。\n§r\n§r§7坏蛋服主天天就只知道使唤人，不是让澪奈做这个就是让干那个。不过，「清扫」掉落物？不是有5分钟自动销毁吗，用得着搞这个吗？“把冒险家的东西悄悄拿走”，提示词说的轻巧，那实际上呢？"}\
  ]}},\
  {text: "——效果拔群！",color: "#50BE90"}\
]
scoreboard players set kdx.cleaner:killed.sum kdx 0
bossbar set kdx.cleaner:timer visible false
execute as @a at @s run playsound minecraft:block.beacon.activate voice @a ~ ~ ~ 1 1
execute unless score kdx.cleaner:disabled kdx >= kdx:state.ok kdx run function kdx.cleaner:new_session
execute if score kdx.cleaner:disabled kdx >= kdx:state.ok kdx run advancement revoke @a only kdx.cleaner:enabled