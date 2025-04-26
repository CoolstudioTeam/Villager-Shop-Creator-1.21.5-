title @s title [{"text":"Hero of The Village","color":"gold"},{"text":" Warning!","color":"red","bold":true}]
title @s subtitle [{"text":"getting close to this ","color":"dark_red"},{"text":"Villager","color":"gold"},{"text":" will clear the effect","color":"dark_red"}]
title @s times 0 5 0
execute at @s[has_effect:hero_of_the_village] run team join VSC_HOTV @e[type=villager,tag=VSC_Finish_Villager,distance=..10]
execute as @e[type=villager,tag=VSC_Finish_Villager,team=VSC_HOTV] run execute unless entity @e[team=VSC_HOTV,distance=...5] run summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:2147483647,Tags:["VSC_HOTV"]}

execute at @e[tag=VSC_HOTV,type=area_effect_cloud] run particle minecraft:falling_dust yellow_concrete_powder ^ ^.15 ^5.6 0 0 0 1 1 force
execute at @e[tag=VSC_HOTV,type=area_effect_cloud] run particle minecraft:falling_dust yellow_concrete_powder ^ ^.15 ^-5.6 0 0 0 1 1 force
execute at @e[tag=VSC_HOTV,type=area_effect_cloud] run particle minecraft:falling_dust red_concrete_powder ^5.6 ^.15 ^ 0 0 0 1 1 force
execute at @e[tag=VSC_HOTV,type=area_effect_cloud] run particle minecraft:falling_dust red_concrete_powder ^-5.6 ^.15 ^ 0 0 0 1 1 force

execute as @e[type=villager,tag=VSC_Finish_Villager] run effect clear @s minecraft:glowing
execute as @e[team=VSC_HOTV] run effect give @s minecraft:glowing 1 0 false