## | VSC_Effect Function |
execute as @e[tag=VSC_Selected,type=villager] at @s run execute if score @s VSC_Effect matches 1 run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:0.0f,Duration:10,Tags:["VSC_Effect_1","VSC_Effect_All"]}
execute as @e[tag=VSC_Selected,type=villager] at @s run execute if score @s VSC_Effect matches 2 run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:0.0f,Duration:10,Tags:["VSC_Effect_2","VSC_Effect_All"]}
execute as @e[tag=VSC_Selected,type=villager] at @s run execute if score @s VSC_Effect matches 3 run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:0.0f,Duration:10,Tags:["VSC_Effect_3","VSC_Effect_All"]}
execute as @e[tag=VSC_Selected,type=villager] at @s run execute if score @s VSC_Effect matches 4 run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:0.0f,Duration:10,Tags:["VSC_Effect_4","VSC_Effect_All"]}
execute as @e[tag=VSC_Selected,type=villager] at @s run execute if score @s VSC_Effect matches 5 run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:0.0f,Duration:10,Tags:["VSC_Effect_5","VSC_Effect_All"]}
execute as @e[tag=VSC_Selected,type=villager] at @s run execute if score @s VSC_Effect matches 6 run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:0.0f,Duration:1,Tags:["VSC_Effect_6"]}
execute as @e[tag=VSC_Selected,type=villager] at @s run execute if score @s VSC_Effect matches 7 run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:0.0f,Duration:10,Tags:["VSC_Effect_7","VSC_Effect_All"]}
execute as @e[tag=VSC_Selected,type=villager] at @s run execute if score @s VSC_Effect matches 8 run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:0.0f,Duration:10,Tags:["VSC_Effect_8","VSC_Effect_All"]}
execute as @e[tag=VSC_Selected,type=villager] at @s run execute if score @s VSC_Effect matches 9 run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:0.0f,Duration:10,Tags:["VSC_Effect_9","VSC_Effect_All"]}
execute if score @e[tag=VSC_Selected,type=villager,limit=1] VSC_Effect matches 1.. run scoreboard players reset @e[tag=VSC_Shop,type=villager] VSC_Effect

## | Not Selected |
execute if entity @e[tag=VSC_Shop,tag=!VSC_Selected,type=villager,distance=..1.75,limit=1] run particle falling_dust{block_state:"white_concrete_powder"} ^.8 ^-1.25 ^ 0 0 0 0 1 force
execute if entity @e[tag=VSC_Shop,tag=!VSC_Selected,type=villager,distance=..1.75,limit=1] run particle falling_dust{block_state:"white_concrete_powder"} ^-.8 ^-1.25 ^ 0 0 0 0 1 force
execute if entity @e[tag=VSC_Shop,tag=!VSC_Selected,type=villager,distance=..1.75,limit=1] run particle falling_dust{block_state:"white_concrete_powder"} ^ ^-1.25 ^.8 0 0 0 0 1 force
execute if entity @e[tag=VSC_Shop,tag=!VSC_Selected,type=villager,distance=..1.75,limit=1] run particle falling_dust{block_state:"white_concrete_powder"} ^ ^-1.25 ^-.8 0 0 0 0 1 force

## | Selected |
execute if entity @e[tag=VSC_Shop,tag=VSC_Selected,type=villager,distance=..1.75,limit=1] run particle falling_dust{block_state:"light_blue_concrete_powder"} ^.8 ^-1.25 ^ 0 0 0 0 1 force
execute if entity @e[tag=VSC_Shop,tag=VSC_Selected,type=villager,distance=..1.75,limit=1] run particle falling_dust{block_state:"light_blue_concrete_powder"} ^-.8 ^-1.25 ^ 0 0 0 0 1 force
execute if entity @e[tag=VSC_Shop,tag=VSC_Selected,type=villager,distance=..1.75,limit=1] run particle falling_dust{block_state:"blue_concrete_powder"} ^ ^-1.25 ^.8 0 0 0 0 1 force
execute if entity @e[tag=VSC_Shop,tag=VSC_Selected,type=villager,distance=..1.75,limit=1] run particle falling_dust{block_state:"blue_concrete_powder"} ^ ^-1.25 ^-.8 0 0 0 0 1 force

## | Trade Success |
execute as @e[tag=VSC_Effect_1,type=area_effect_cloud] at @s run particle dust{color:[0.000,0.569,1.000],scale:1} ^.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_1,type=area_effect_cloud] at @s run particle dust{color:[0.000,0.569,1.000],scale:1} ^-.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_1,type=area_effect_cloud] at @s run particle dust{color:[0.000,0.380,0.671],scale:1} ^ ^ ^.5 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_1,type=area_effect_cloud] at @s run particle dust{color:[0.000,0.380,0.671],scale:1} ^ ^ ^-.5 0 0 0 0 1 force

## | Switch Trade |
execute as @e[tag=VSC_Effect_2,type=area_effect_cloud] at @s run particle dust{color:[1.000,0.000,0.965],scale:1} ^.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_2,type=area_effect_cloud] at @s run particle dust{color:[1.000,0.000,0.965],scale:1} ^-.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_2,type=area_effect_cloud] at @s run particle dust{color:[0.671,0.000,0.647],scale:1} ^ ^ ^.5 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_2,type=area_effect_cloud] at @s run particle dust{color:[0.671,0.000,0.647],scale:1} ^ ^ ^-.5 0 0 0 0 1 force

## | Remove Trade | AB5C02
execute as @e[tag=VSC_Effect_3,type=area_effect_cloud] at @s run particle dust{color:[1.000,0.537,0.012],scale:1} ^.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_3,type=area_effect_cloud] at @s run particle dust{color:[1.000,0.537,0.012],scale:1} ^-.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_3,type=area_effect_cloud] at @s run particle dust{color:[0.620,0.333,0.008],scale:1} ^ ^ ^.5 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_3,type=area_effect_cloud] at @s run particle dust{color:[0.620,0.333,0.008],scale:1} ^ ^ ^-.5 0 0 0 0 1 force

## | Save |
execute as @e[tag=VSC_Effect_4,type=area_effect_cloud] at @s run particle dust{color:[0.086,1.000,0.020],scale:1} ^.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_4,type=area_effect_cloud] at @s run particle dust{color:[0.086,1.000,0.020],scale:1} ^-.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_4,type=area_effect_cloud] at @s run particle dust{color:[0.055,0.620,0.012],scale:1} ^ ^ ^.5 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_4,type=area_effect_cloud] at @s run particle dust{color:[0.055,0.620,0.012],scale:1} ^ ^ ^-.5 0 0 0 0 1 force

## | Deleted |
execute as @e[tag=VSC_Effect_5,type=area_effect_cloud] at @s run particle dust{color:[1.000,0.039,0.039],scale:1} ^.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_5,type=area_effect_cloud] at @s run particle dust{color:[1.000,0.039,0.039],scale:1} ^.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_5,type=area_effect_cloud] at @s run particle dust{color:[0.620,0.000,0.000],scale:1} ^ ^ ^.5 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_5,type=area_effect_cloud] at @s run particle dust{color:[0.620,0.000,0.000],scale:1} ^ ^ ^-.5 0 0 0 0 1 force

## | Summoned |
execute as @e[tag=VSC_Effect_6,type=area_effect_cloud] at @s run particle flash ~ ~-1 ~ 0 0 0 .1 1 force

## | Data Change |
execute as @e[tag=VSC_Effect_7,type=area_effect_cloud] at @s run particle composter ^.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_7,type=area_effect_cloud] at @s run particle composter ^.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_7,type=area_effect_cloud] at @s run particle composter ^ ^ ^.5 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_7,type=area_effect_cloud] at @s run particle composter ^ ^ ^-.5 0 0 0 0 1 force

## | Reset Trades |
execute as @e[tag=VSC_Effect_8,type=area_effect_cloud] at @s run particle squid_ink ^.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_8,type=area_effect_cloud] at @s run particle squid_ink ^.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_8,type=area_effect_cloud] at @s run particle squid_ink ^ ^ ^.5 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_8,type=area_effect_cloud] at @s run particle squid_ink ^ ^ ^-.5 0 0 0 0 1 force

## | Extract |
execute as @e[tag=VSC_Effect_9,type=area_effect_cloud] at @s run particle soul ^.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_9,type=area_effect_cloud] at @s run particle soul ^.5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_9,type=area_effect_cloud] at @s run particle soul ^ ^ ^.5 0 0 0 0 1 force
execute as @e[tag=VSC_Effect_9,type=area_effect_cloud] at @s run particle soul ^ ^ ^-.5 0 0 0 0 1 force
