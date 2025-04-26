## | Check Custom Trade |
execute as @e[tag=VSC_Selected,type=villager] at @s run tag @s add VSC_Custom_Trade
execute as @e[tag=VSC_Selected,tag=VSC_Custom_Trade,type=villager] unless data entity @s Offers.Recipes run tag @s remove VSC_Trade

## | Check if Trade is Viable |
execute as @e[tag=VSC_Selected,type=villager] at @s unless data block ~ ~-1 ~ Items[{Slot:0b}] run execute if block ~ ~-1 ~ minecraft:hopper run scoreboard players set @s VSC_Untradable 1
execute as @e[tag=VSC_Selected,type=villager] at @s unless data block ~ ~-1 ~ Items[{Slot:4b}] run execute if block ~ ~-1 ~ minecraft:hopper run scoreboard players set @s VSC_Untradable 1

## | Do Single Trade |
execute as @e[tag=VSC_Selected,type=villager] at @s unless score @s VSC_Untradable matches 1 run execute if block ~ ~-1 ~ minecraft:hopper run data modify entity @s Offers.Recipes append value {maxUses:9999999,sell:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"red","italic":true,"text":"None"}'}},buyB:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"red","italic":true,"text":"None"}'}},buy:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"red","italic":true,"text":"None"}'}},xp:0,rewardExp:0b}
execute as @e[tag=VSC_Selected,type=villager] at @s unless score @s VSC_Untradable matches 1 run execute if block ~ ~-1 ~ minecraft:hopper run data modify entity @s Offers.Recipes[-1].buy set from block ~ ~-1 ~ Items[{Slot:0b}]
execute as @e[tag=VSC_Selected,type=villager] at @s unless score @s VSC_Untradable matches 1 run execute if block ~ ~-1 ~ minecraft:hopper run data modify entity @s Offers.Recipes[-1].buyB set from block ~ ~-1 ~ Items[{Slot:2b}]
execute as @e[tag=VSC_Selected,type=villager] at @s unless score @s VSC_Untradable matches 1 run execute if block ~ ~-1 ~ minecraft:hopper run data modify entity @s Offers.Recipes[-1].sell set from block ~ ~-1 ~ Items[{Slot:4b}]

execute as @e[tag=VSC_Selected,type=villager] at @s unless score @s VSC_Untradable matches 1 unless data block ~ ~-1 ~ Items[{Slot:2b}] run execute if block ~ ~-1 ~ minecraft:hopper run data modify entity @s Offers.Recipes[-1].buyB set value {id:"minecraft:air",count:1}

## | Text |
execute unless entity @e[type=villager,tag=VSC_Selected] run tellraw @a[distance=..8] [{"text":"| [VSC]: ","color":"dark_green"},{"text":"No Villager Selected.","color":"dark_red"}]

## | Make Sound if Error |
execute as @e[tag=VSC_Selected,type=villager] at @s if score @s VSC_Untradable matches 1 run tellraw @a[distance=..8] [{"text":"| [VSC]: ","color":"dark_green"},{"text":"Warning, Trade Not Possible, Fix Arrangement","color":"yellow"}]
execute as @e[tag=VSC_Selected,type=villager] at @s if score @s VSC_Untradable matches 1 run playsound block.anvil.place master @a ~ ~ ~ 1 1.5

## | Make Sound if Succesful |
execute as @e[tag=VSC_Selected,type=villager] at @s unless score @s VSC_Untradable matches 1 run execute if block ~ ~-1 ~ minecraft:hopper run scoreboard players set @s VSC_Tune 31
execute as @e[tag=VSC_Selected,type=villager] at @s unless score @s VSC_Untradable matches 1 run execute if block ~ ~-1 ~ minecraft:hopper run scoreboard players set @s VSC_Effect 1
execute as @e[tag=VSC_Selected,type=villager] at @s unless score @s VSC_Untradable matches 1 run execute if block ~ ~-1 ~ minecraft:hopper run tellraw @a[distance=..8] [{"text":"| [VSC]: ","color":"dark_green"},{"text":"Added 1 Trade ","color":"green"}]

## | Revert Score |
execute as @e[tag=VSC_Selected,type=villager] at @s run scoreboard players set @s VSC_Untradable 0

## | Make Sound if Changing |
execute as @e[tag=VSC_Selected,type=villager] at @s run execute unless block ~ ~-1 ~ minecraft:hopper run scoreboard players set @s VSC_Tune 71
execute as @e[tag=VSC_Selected,type=villager] at @s run execute unless block ~ ~-1 ~ minecraft:hopper run scoreboard players set @s VSC_Effect 2

## | Change to other Trade |
execute as @e[tag=VSC_Selected,type=villager] at @s run execute unless block ~ ~-1 ~ minecraft:hopper run tellraw @a[distance=..8] [{"text":"| [VSC]: ","color":"dark_green"},{"text":"Switching to ","color":"green"},{"text":"Add Single Trade","color":"dark_aqua"}] 
execute as @e[tag=VSC_Selected,type=villager] at @s run execute unless block ~ ~-1 ~ minecraft:hopper run setblock ~ ~-1 ~ hopper[facing=down]{TransferCooldown:0,CustomName:'{"text":"Add Trade","color":"dark_aqua","bold":true,"italic":false}'} replace

