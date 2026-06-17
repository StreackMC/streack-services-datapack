# advancement
execute unless score kdx.cleaner:disabled kdx >= kdx:state.ok kdx run advancement grant @a only kdx.cleaner:enabled
execute if score kdx.cleaner:disabled kdx >= kdx:state.ok kdx run advancement revoke @a only kdx.cleaner:enabled

# update timing
execute if score kdx.cleaner:timing.enable kdx >= kdx:state.ok kdx store result bossbar kdx.cleaner:timer value run scoreboard players add kdx.cleaner:timing kdx 1

# calc sec and display
execute if score kdx.cleaner:timing.enable kdx >= kdx:state.ok kdx store result storage minecraft:run display int -0.5 run scoreboard players get kdx.cleaner:timing kdx
execute if score kdx.cleaner:timing.enable kdx >= kdx:state.ok kdx store result score kdx.cleaner:timing.display kdx run data get storage minecraft:run display
execute if score kdx.cleaner:timing.enable kdx >= kdx:state.ok kdx store result storage minecraft:run display int 0.1 run scoreboard players add kdx.cleaner:timing.display kdx 610
execute if score kdx.cleaner:timing.enable kdx >= kdx:state.ok kdx if score kdx.cleaner:timing kdx matches 20..600 run bossbar set kdx.cleaner:timer name \
  [{"text": "扫地姬","color": "#A352D1"},\
  {"text": "技能蓄力进度 ","color": "#CA74AE","underlined": false},\
  {"text": "[","color": "green"},\
  {"storage":"minecraft:run", nbt:"display", "color": "green"},\
  {"text": "s]","color": "green"}]
execute if score kdx.cleaner:timing.enable kdx >= kdx:state.ok kdx if score kdx.cleaner:timing kdx matches 601..1000 run bossbar set kdx.cleaner:timer name \
  [{"text": "扫地姬","color": "#A352D1"},\
  {"text": "技能蓄力进度 ","color": "#CA74AE","underlined": false},\
  {"text": "[","color": "yellow"},\
  {"storage":"minecraft:run", nbt:"display", "color": "yellow"},\
  {"text": "s]","color": "yellow"}]
execute if score kdx.cleaner:timing.enable kdx >= kdx:state.ok kdx if score kdx.cleaner:timing kdx matches 1001.. run bossbar set kdx.cleaner:timer name \
  [{"text": "扫地姬","color": "#A352D1"},\
  {"text": "技能蓄力进度 ","color": "#CA74AE","underlined": false},\
  {"text": "[","color": "red"},\
  {"storage":"minecraft:run", nbt:"display", "color": "red"},\
  {"text": "s]","color": "red"}]