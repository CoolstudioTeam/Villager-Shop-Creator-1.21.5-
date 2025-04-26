## | Add Team for Villager |
team add VSC_Selected
team modify VSC_Selected color aqua
team modify VSC_Selected deathMessageVisibility never
team modify VSC_Selected prefix {"text":"< ","bold":true}
team modify VSC_Selected suffix {"text":" >","bold":true}
team add VSC_HOTV
team modify VSC_HOTV color gold

## | Scoreboards |
scoreboard objectives add VSC_Spawn minecraft.used:minecraft.villager_spawn_egg
#scoreboard objectives add VSC_Egg minecraft.used:minecraft.egg
scoreboard objectives add VSC_Tune dummy
scoreboard objectives add VSC_Effect dummy
scoreboard objectives add VSC_Data dummy
scoreboard objectives add VSC_Debug dummy
scoreboard objectives add VSC_First dummy
scoreboard objectives add VSC_DebugToggle dummy
scoreboard objectives add VSC_Untradable dummy

## | First Time Setup |
execute unless score VSC_Bot VSC_First matches 1 run tellraw @a ["",{"text":"--------------------------------------","color":"dark_green"},{"text":"\n"},{"text":"   Welcome to Villager Shop Creator!","bold":true,"color":"dark_blue"},{"text":"\n"},{"text":"           by MeWithNoGoodUsername","color":"blue"},{"text":"\n\n"},{"text":" To Start, get a ","color":"dark_aqua"},{"text":"LodeStone","color":"gold"},{"text":" and ","color":"dark_aqua"},{"text":"Villager Egg,","color":"gold"},{"text":"\n"},{"text":"           check out the instruction","color":"dark_aqua"},{"text":" "},{"text":"here","color":"dark_green","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/villager-shop-creator/"}},{"text":"!\n\n       To show this message again, type:\n            /function shop_creator:fix","color":"dark_aqua"},{"text":"\n"},{"text":"--------------------------------------","color":"dark_green"}]
scoreboard players set VSC_Bot VSC_First 1
scoreboard players set VSC_Bot VSC_DebugToggle 0
scoreboard objectives setdisplay sidebar
