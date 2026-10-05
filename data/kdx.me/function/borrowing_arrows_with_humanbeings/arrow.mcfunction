execute store result storage minecraft:run random int 1.0 run random roll 1..100
execute if data storage minecraft:run {random:1..20} if dimension minecraft:overworld run give @s arrow 1
execute if data storage minecraft:run {random:21..40} if dimension minecraft:the_nether run give @s arrow 1
execute if data storage minecraft:run {random:41..60} if dimension minecraft:the_end run give @s arrow 1