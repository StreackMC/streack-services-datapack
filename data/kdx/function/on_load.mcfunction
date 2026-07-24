execute unless data storage kdx:initialized {status: 1b} run function kdx:system/initialize

# 模块call
function kdx.joyous:load
function kdx.me:onload

tellraw @a [{text:"Streack Service Datapack 已加载", color:"aqua"}, {text:"作者@kdxiaoyi", color:"white", click_event:{action:"open_url", url:"http://github.com/kdxhub"}}]