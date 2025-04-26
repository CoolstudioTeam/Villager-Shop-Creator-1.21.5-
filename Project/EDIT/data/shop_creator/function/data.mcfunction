## | Villager Shop Level |
execute if score VSC_Data VSC_Data matches 1 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.level set value 1
execute if score VSC_Data VSC_Data matches 2 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.level set value 2
execute if score VSC_Data VSC_Data matches 3 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.level set value 3
execute if score VSC_Data VSC_Data matches 4 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.level set value 4
execute if score VSC_Data VSC_Data matches 5 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.level set value 5

## | Villager Proffesion |
execute if score VSC_Data VSC_Data matches 10 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.profession set value "minecraft:none"
execute if score VSC_Data VSC_Data matches 11 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.profession set value "minecraft:shepherd"
execute if score VSC_Data VSC_Data matches 12 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.profession set value "minecraft:cleric"
execute if score VSC_Data VSC_Data matches 13 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.profession set value "minecraft:librarian"
execute if score VSC_Data VSC_Data matches 14 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.profession set value "minecraft:mason"
execute if score VSC_Data VSC_Data matches 15 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.profession set value "minecraft:armorer"
execute if score VSC_Data VSC_Data matches 16 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.profession set value "minecraft:farmer"
execute if score VSC_Data VSC_Data matches 17 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.profession set value "minecraft:toolsmith"
execute if score VSC_Data VSC_Data matches 18 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.profession set value "minecraft:fletcher"
execute if score VSC_Data VSC_Data matches 19 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.profession set value "minecraft:butcher"
execute if score VSC_Data VSC_Data matches 20 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.profession set value "minecraft:fisherman"
execute if score VSC_Data VSC_Data matches 21 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.profession set value "minecraft:nitwit"
execute if score VSC_Data VSC_Data matches 22 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.profession set value "minecraft:weaponsmith"
execute if score VSC_Data VSC_Data matches 23 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.profession set value "minecraft:cartographer"
execute if score VSC_Data VSC_Data matches 24 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.profession set value "minecraft:leatherworker"

## | Villager Shop Type Biome |
execute if score VSC_Data VSC_Data matches 30 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.type set value "minecraft:desert"
execute if score VSC_Data VSC_Data matches 31 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.type set value "minecraft:jungle"
execute if score VSC_Data VSC_Data matches 32 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.type set value "minecraft:plains"
execute if score VSC_Data VSC_Data matches 33 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.type set value "minecraft:savanna"
execute if score VSC_Data VSC_Data matches 34 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.type set value "minecraft:snow"
execute if score VSC_Data VSC_Data matches 35 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.type set value "minecraft:swamp"
execute if score VSC_Data VSC_Data matches 36 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] VillagerData.type set value "minecraft:taiga"

## | Shop Name Hide |
execute if score VSC_Data VSC_Data matches 40 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] CustomNameVisible set value 1b
execute if score VSC_Data VSC_Data matches 41 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] CustomNameVisible set value 0b

## | Silent |
execute if score VSC_Data VSC_Data matches 50 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] Silent set value 1b
execute if score VSC_Data VSC_Data matches 51 run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] Silent set value 0b

## | Head Item |
execute as @p[scores={VSC_Data=60}] run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] ArmorItems[3] set value {}
execute as @p[scores={VSC_Data=60},nbt={Inventory:[{Slot:-106b}]}] run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] ArmorItems[3] set from entity @s Inventory[-1]

## | Held Item |
execute as @p[scores={VSC_Data=70}] run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] HandItems[0] set value {}
execute as @p[scores={VSC_Data=70},nbt={Inventory:[{Slot:-106b}]}] run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] HandItems[0] set from entity @s Inventory[-1]

## | Effect and Sound |
execute at @p[scores={VSC_Data=1..}] run execute if score @p VSC_Data matches 1.. run execute if entity @e[type=villager,tag=VSC_Selected] run tellraw @a[distance=..8] [{"text":"| [VSC]: ","color":"dark_green"},{"text":"Changed Villager's Data ","color":"dark_aqua"}]
execute at @p[scores={VSC_Data=1..}] run execute if score @p VSC_Data matches 1.. run execute unless entity @e[type=villager,tag=VSC_Selected] run tellraw @a[distance=..8] [{"text":"| [VSC]: ","color":"dark_green"},{"text":"No Villager Selected.","color":"dark_red"}]
execute if score @p VSC_Data matches 1.. run scoreboard players set @e[tag=VSC_Selected,limit=1] VSC_Tune 21
execute at @e[type=villager,tag=VSC_Selected,limit=1] run execute if score @p VSC_Data matches 1.. run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:0.0f,Duration:10,Tags:["VSC_Effect_7","VSC_Effect_All"]}
execute as @a at @s if score @s VSC_Data matches 1.. run scoreboard players reset @s VSC_Data
execute at @p run execute if score VSC_Data VSC_Data matches 1.. run execute if entity @e[type=villager,tag=VSC_Selected] run tellraw @a[distance=..8] [{"text":"| [VSC]: ","color":"dark_green"},{"text":"Changed Villager's Data ","color":"dark_aqua"}]
execute at @p run execute if score VSC_Data VSC_Data matches 1.. run execute unless entity @e[type=villager,tag=VSC_Selected] run tellraw @a[distance=..8] [{"text":"| [VSC]: ","color":"dark_green"},{"text":"No Villager Selected.","color":"dark_red"}]
execute if score VSC_Data matches 1.. run scoreboard players set @e[tag=VSC_Selected,limit=1] VSC_Tune 21
execute at @e[type=villager,tag=VSC_Selected,limit=1] run execute if score VSC_Data matches 1.. run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:0.0f,Duration:10,Tags:["VSC_Effect_7","VSC_Effect_All"]}
execute if score VSC_Data VSC_Data matches 1.. run scoreboard players reset VSC_Data VSC_Data

