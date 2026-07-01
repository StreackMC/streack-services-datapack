#function kdx:system/carpet_auto_setting
scoreboard objectives add kdx dummy "Streack Service Datapack 变量存储"
scoreboard players set kdx:state.ok kdx 200

# 模块初始化Call
function kdx.cleaner:initialize
function kdx.kits:initialize
function kdx.policynotice:initialize

data modify storage kdx:initialized status set value 1b
tellraw @a [{text:"Streack Service Datapack ", color:"aqua"}, {text:" 已完成初始化 ✓", color:"green"}]