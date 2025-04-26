scoreboard objectives remove VSC_Spawn
scoreboard objectives remove VSC_Egg
scoreboard objectives remove VSC_Tune
scoreboard objectives remove VSC_Effect
scoreboard objectives remove VSC_Data
scoreboard objectives remove VSC_Debug
scoreboard objectives remove VSC_First
scoreboard objectives remove VSC_DebugToggle
scoreboard objectives remove VSC_Untradable

team remove VSC_Selected
team remove VSC_HOTV

tag @a remove VSC_Selected

execute as @e[type=minecraft:area_effect_cloud,tag=VSC_Creator] at @s unless entity @e[type=minecraft:villager,tag=VSC_Shop,distance=..1.75] run kill @s
#scoreboard players set VSC_Bot VSC_First 0
reload
