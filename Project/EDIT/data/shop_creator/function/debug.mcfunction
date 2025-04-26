## Controlled Switch
execute if score VSC_Bot VSC_DebugToggle matches 2 run scoreboard players set VSC_Bot VSC_DebugToggle 0
## Function
execute if score VSC_Bot VSC_DebugToggle matches 0 run scoreboard objectives setdisplay sidebar VSC_Debug
execute if score VSC_Bot VSC_DebugToggle matches 1 run scoreboard objectives setdisplay sidebar
## Switching
execute if score VSC_Bot VSC_DebugToggle matches 1 run scoreboard players set VSC_Bot VSC_DebugToggle 2
execute if score VSC_Bot VSC_DebugToggle matches 0 run scoreboard players set VSC_Bot VSC_DebugToggle 1
