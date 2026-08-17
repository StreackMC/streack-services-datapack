scoreboard objectives add kdx dummy "Streack Service Datapack 变量存储"
scoreboard players set kdx:state.ok kdx 200

# 模块初始化Call
function kdx.cleaner:on_init
function kdx.kits:on_init
function kdx.policynotice:on_init
function kdx.me:on_init
function kdx.joyous:on_init

# Endup
$data modify storage kdx:main version set value $(version)
execute if data storage kdx:main version run tellraw @a [{text:"✓ StreackSD 已升级至新版本", color: "green"}]
execute unless data storage kdx:main version run tellraw @a [{text:"✓ StreackSD 已完成初始化", color: "green"}]
execute as @a run function kdx:_about