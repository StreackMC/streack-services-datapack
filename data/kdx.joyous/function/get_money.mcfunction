$give @s minecraft:structure_void[\
  max_stack_size=99,item_name={text:"栈钱"},\
  lore=[\
    {text:"这片大地的普适通用货币，却似乎与这片大地格格不入。",color:white,italic:false},\
    {text:"可以通过出售兑换等额栈钱。",color:white,italic:false},\
    {text:"活动或其它玩法中获取",color:gray,italic:true}\
    ],\
  custom_data={"sakura_auto_bind":"","streack": "money"},\
  rarity=common,\
  tooltip_display={hidden_components:["attribute_modifiers"]},\
  attribute_modifiers=[{operation:add_value,amount:-2147483647,type:"minecraft:block_interaction_range",id:"streack"}]\
] $(amout)