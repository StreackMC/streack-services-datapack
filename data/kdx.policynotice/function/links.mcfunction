# 下面第3行为用户协议，第5行为隐私政策
# 网址后面需要添加一个英文反斜杠（\）
tellraw @s [{"text": "[用户协议]",click_event: {"action": "open_url","url": "\
https://streack.top/about/legal/?selector=legal%3A%E7%94%A8%E6%88%B7%E5%8D%8F%E8%AE%AE\
"},"color": "aqua","underlined": true},{"text": " | ","color": "gray","underlined": false},{"text": "[隐私政策]","click_event":{"action": "open_url","url": "\
https://streack.top/about/legal/?selector=legal%3A%E9%9A%90%E7%A7%81%E6%94%BF%E7%AD%96\
"},"color": "aqua","underlined": true},{"text": " | ","color": "gray","underlined": false},{"text": "[守则方针]","click_event":{"action": "open_url","url": "\
https://streack.top/doc/policy/rule/\
"},"color": "aqua","underlined": true},{"text": " | ","color": "gray","underlined": false},{"text": "[帮助文档]","click_event":{"action": "open_url","url": "\
https://streack.top/doc/\
"}}]
# 第8行为服规链接，第10行为服务器文档

# 群服互联的额外内容
tellraw @s [{"text": "有关可选的“Neonaic游群互联”服务："},\
{"text": " | ","color": "gray","underlined": false},{"text": "[隐私政策]","click_event":{"action": "open_url","url": "\
https://streack.top/about/legal/?selector=legal%3A%E9%9A%90%E7%A7%81%E6%94%BF%E7%AD%96\
"},"color": "aqua","underlined": true},{"text": " | ","color": "gray","underlined": false},{"text": "[守则方针]","click_event":{"action": "open_url","url": "\
https://streack.top/doc/policy/rule/\
"},"color": "aqua","underlined": true},{"text": " | ","color": "gray","underlined": false},{"text": "[帮助文档]","click_event":{"action": "open_url","url": "\
https://streack.top/doc/\
"}}]

# 下方为音效通知
execute at @s as @s run playsound block.anvil.land