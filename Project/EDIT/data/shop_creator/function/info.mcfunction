execute if score @s VSC_Tune matches 14 run scoreboard players reset @s VSC_Tune
#	|Change Villager Data [21]|
execute if score @s VSC_Tune matches 22 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 2
execute if score @s VSC_Tune matches 22 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 2
execute if score @s VSC_Tune matches 24 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 2
execute if score @s VSC_Tune matches 24 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 2
execute if score @s VSC_Tune matches 26 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 2
execute if score @s VSC_Tune matches 26 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 2
execute if score @s VSC_Tune matches 26 run scoreboard players reset @s VSC_Tune
#	|Add New Trade [31]|
execute if score @s VSC_Tune matches 32 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 2
execute if score @s VSC_Tune matches 32 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 2
execute if score @s VSC_Tune matches 32 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 2
execute if score @s VSC_Tune matches 34 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 2
execute if score @s VSC_Tune matches 34 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 2
execute if score @s VSC_Tune matches 34 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 2
execute if score @s VSC_Tune matches 34 run scoreboard players reset @s VSC_Tune
#	|Remove Trade [41]|
execute if score @s VSC_Tune matches 42 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 .6
execute if score @s VSC_Tune matches 44 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 .4
execute if score @s VSC_Tune matches 46 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 .2
execute if score @s VSC_Tune matches 46 run scoreboard players reset @s VSC_Tune
#	|Selected [51]|
execute if score @s VSC_Tune matches 52 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1.2
execute if score @s VSC_Tune matches 54 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1.4
execute if score @s VSC_Tune matches 56 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1.6
execute if score @s VSC_Tune matches 56 run scoreboard players reset @s VSC_Tune
#	|Save & Finish [61]|
execute if score @s VSC_Tune matches 62 run playsound entity.experience_orb.pickup master @a ~ ~ ~
execute if score @s VSC_Tune matches 64 run playsound entity.experience_orb.pickup master @a ~ ~ ~
execute if score @s VSC_Tune matches 64 run scoreboard players reset @s VSC_Tune
#	|Change Trade [71]|
execute if score @s VSC_Tune matches 72 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1
execute if score @s VSC_Tune matches 72 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1.3
execute if score @s VSC_Tune matches 72 run scoreboard players reset @s VSC_Tune
#	|Delete [81]|
execute if score @s VSC_Tune matches 82 run execute as @e[tag=VSC_Selected,type=villager] at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:0.0f,Duration:10,Tags:["VSC_Effect_5","VSC_Effect_All"]}
execute if score @s VSC_Tune matches 82 run execute as @e[tag=VSC_Selected,type=villager] run tag @s add VSC_Deleting
execute if score @s VSC_Tune matches 82 run execute as @e[tag=VSC_Selected,type=villager] run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] Silent set value 1b
execute if score @s VSC_Tune matches 82 run execute as @e[tag=VSC_Selected,type=villager] run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] ArmorItems[3] set value {}
execute if score @s VSC_Tune matches 82 run execute as @e[tag=VSC_Selected,type=villager] run data modify entity @e[type=villager,tag=VSC_Selected,limit=1] HandItems[0] set value {}
execute if score @s VSC_Tune matches 82 run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1 0.2
execute if score @s VSC_Tune matches 82 run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1 0.2
execute if score @s VSC_Tune matches 84 run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1 0
execute if score @s VSC_Tune matches 84 run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1 0
execute if score @s VSC_Tune matches 86 run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1 0
execute if score @s VSC_Tune matches 86 run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1 0
execute if score @s VSC_Tune matches 88 run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1 0
execute if score @s VSC_Tune matches 88 run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1 0
execute if score @s VSC_Tune matches 90 run function shop_creator:menu/delete
execute if score @s VSC_Tune matches 90 run scoreboard players reset @s VSC_Tune
#	|Remove Trade [91]|
execute if score @s VSC_Tune matches 92 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 .4
execute if score @s VSC_Tune matches 94 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 .2
execute if score @s VSC_Tune matches 96 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 0
execute if score @s VSC_Tune matches 96 run scoreboard players reset @s VSC_Tune
#	|Extract [101]|
execute if score @s VSC_Tune matches 102 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 .4
execute if score @s VSC_Tune matches 104 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 .6
execute if score @s VSC_Tune matches 106 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 .8
execute if score @s VSC_Tune matches 106 run scoreboard players reset @s VSC_Tune
#	|Kill [111]|
execute if score @s VSC_Tune matches 112 run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1 1.8
execute if score @s VSC_Tune matches 114 run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1 .8
execute if score @s VSC_Tune matches 116 run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1 0
execute if score @s VSC_Tune matches 116 run kill @s
execute if score @s VSC_Tune matches 116 run scoreboard players reset @s VSC_Tune
