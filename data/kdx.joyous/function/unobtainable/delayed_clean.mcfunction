execute store result score @s kdx.joyous.unobtainable run clear @s[gamemode=!creative,gamemode=!spectator] *[custom_data={"streack.unobtainable":"delayed"}]
tellraw @s [\
  {"text":"已回收您背包内", "color": "white"},\
  {"score": {"name": "@s", "objective": "kdx.joyous.unobtainable"}, "color": "white"},\
  {"text":"个物品", "color": "white"}\
]