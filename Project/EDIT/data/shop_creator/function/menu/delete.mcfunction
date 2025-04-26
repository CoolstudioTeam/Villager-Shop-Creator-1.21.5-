## | Text |
execute if entity @e[type=villager,tag=VSC_Selected] run tellraw @a[distance=..8] [{"text":"| [VSC]: ","color":"dark_green"},{"text":"Deleted Villager","color":"green"}]
execute unless entity @e[type=villager,tag=VSC_Selected] run tellraw @a[distance=..8] [{"text":"| [VSC]: ","color":"dark_green"},{"text":"No Villager Selected.","color":"dark_red"}]

## | Kill Villager, Trade, & Cloud |
execute as @e[tag=VSC_Selected,type=villager] run tag @s add VSC_Deleting
execute as @e[tag=VSC_Selected,type=villager] run effect give @s minecraft:invisibility 10 1 true
execute at @e[tag=VSC_Selected,type=villager] run setblock ~ ~-1 ~ air destroy
execute at @e[tag=VSC_Selected,type=villager] run setblock ~ ~ ~ air destroy
execute at @e[tag=VSC_Selected,type=villager] run kill @e[tag=VSC_Creator,sort=nearest,limit=1]
execute as @e[tag=VSC_Selected,type=villager] run kill @s