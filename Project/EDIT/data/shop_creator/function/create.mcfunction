## | Making a Cloud Display |
summon area_effect_cloud ~ ~1.7 ~ {NoGravity:1b,CustomNameVisible:1b,Radius:0.0f,Duration:2147483647,Tags:["VSC_Creator","VSC"],CustomName:'{"text":"Shop Creator","color":"light_purple","bold":true}'}

## | Merging Data with Villager Spawn & Tune |
execute unless entity @s[tag=VSC_Finish_Villager] run data merge entity @s {Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["VSC_Shop","VSC","VSC_Trade"],CustomName:'{"color":"white","text":"Custom Name"}',attributes:[{id:"minecraft:max_health",base:1000}],VillagerData:{profession:"minecraft:none"}}
execute if entity @s[tag=VSC_Finish_Villager] run data merge entity @s {Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["VSC_Shop","VSC","VSC_Custom_Trade"],attributes:[{id:"minecraft:max_health",base:1000}]}
execute as @s at @s run tp @s ~ ~ ~ facing entity @p
scoreboard players set @s VSC_Tune 1

## | Setting up Single Trade |
setblock ~ ~-1 ~ hopper[facing=down]{TransferCooldown:0,CustomName:'{"text":"Add Trade","color":"dark_aqua","bold":true,"italic":false}'} replace

## | Selected |
function shop_creator:selected

## | Give book (If doesnt have already) |
#execute as @a[limit=1,sort=nearest,gamemode=creative] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:written_book",tag:{display:{Name:'{"text":"Villager Shop Creator","color":"gold","bold":true,"italic":false}'}}}]}] run function shop_creator:menu/books/shop_maker

## | Add Tune & Effect |
scoreboard players set @e[tag=VSC_Selected,limit=1] VSC_Tune 1
execute as @e[tag=VSC_Selected,type=villager] at @s run scoreboard players set @s VSC_Effect 6