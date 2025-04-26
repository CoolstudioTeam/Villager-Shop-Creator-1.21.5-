## | Spawning & Functions |
execute as @e[type=villager] at @s run execute if block ~ ~-1 ~ lodestone run execute if entity @a[scores={VSC_Spawn=1..},distance=..8,gamemode=creative] run function shop_creator:create
scoreboard players set @a[scores={VSC_Spawn=1..}] VSC_Spawn 0
scoreboard players set @a[scores={VSC_Egg=1..}] VSC_Egg 0
# currently broken
#execute as @e[tag=VSC_Selected] at @s run tp @s ~ ~ ~ facing entity @p

execute as @e[type=villager,tag=VSC_Finish_Villager] at @s run execute if entity @s[nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] run execute unless entity @s[team=VSC_HOTV] run tp @s ~ ~ ~ facing entity @p
execute as @e[type=villager,tag=VSC_Finish_Villager] at @s run execute if entity @p[nbt={SelectedItem:{id:"minecraft:debug_stick"}},distance=..3] run tp @s ~ ~ ~ facing entity @p[nbt={SelectedItem:{id:"minecraft:debug_stick"}},distance=..6]
execute as @e[type=villager,tag=VSC_Finish_Villager] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:barrier"}},distance=...5] run function shop_creator:menu/kill
execute as @e[type=villager,tag=VSC_Finish_Villager] at @s run execute if entity @e[type=item,nbt={Item:{id:"minecraft:villager_spawn_egg"},OnGround:1b},distance=...5] run execute unless entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:villager_spawn_egg",count:1,components:{"minecraft:entity_data":{Tags:["VSC_Finish_Villager"]}}}}] run function shop_creator:menu/new_egg

## | Run Effects |
execute as @e[tag=VSC_HOTV,type=area_effect_cloud] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=VSC_Creator,type=area_effect_cloud] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=VSC_Creator,type=area_effect_cloud] at @s run function shop_creator:effect
execute as @e[tag=VSC_Effect_All,type=area_effect_cloud] at @s run tp @s ~ ~.25 ~ ~20 ~
effect give @e[type=villager,tag=VSC_Selected] glowing 1 0 true
effect clear @e[type=villager,tag=VSC_Deleting] glowing

## | Run Change Villager |
execute as @e[tag=VSC_Selected,tag=VSC_Trade,type=villager] run data remove entity @s Offers.Recipes[]
execute as @e[tag=VSC_Selected] at @s unless entity @a[distance=..20,gamemode=creative] run tag @s remove VSC_Selected
execute as @e[type=villager,tag=VSC_Shop,nbt=!{Health:100.0f}] run function shop_creator:selected
execute as @e[tag=VSC_Selected,type=villager] at @s run execute if entity @e[sort=nearest,limit=1,nbt={Item:{components:{"minecraft:item_name":'{"bold":true,"color":"#8178FF","italic":false,"text":"Rename Villager"}'}}}] run data modify entity @s CustomName set from entity @e[sort=nearest,limit=1,nbt={Item:{components:{"minecraft:item_name":'{"bold":true,"color":"#8178FF","italic":false,"text":"Rename Villager"}'}}}] Item.components.minecraft:writable_book_content.pages[].raw
execute as @e[sort=nearest,limit=1,nbt={Item:{components:{"minecraft:item_name":'{"bold":true,"color":"#8178FF","italic":false,"text":"Rename Villager"}'}}}] run data modify entity @s PickupDelay set value 0s


## | Add Single Trade |
execute at @e[tag=VSC_Shop,type=villager] run execute if block ~ ~-1 ~ minecraft:hopper run item replace block ~ ~-1 ~ container.1 with player_head[profile={id:[I;1193398495,34619455,-1568546746,2064666550],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWEyZDg5MWM2YWU5ZjZiYWEwNDBkNzM2YWI4NGQ0ODM0NGJiNmI3MGQ3ZjFhMjgwZGQxMmNiYWM0ZDc3NyJ9fX0="}]},item_name='{"bold":true,"color":"blue","italic":false,"text":"+"}'] 1
execute at @e[tag=VSC_Shop,type=villager] run execute if block ~ ~-1 ~ minecraft:hopper run item replace block ~ ~-1 ~ container.3 with player_head[profile={id:[I;1983649761,-1626389621,-1075392986,-128231533],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDlmMTgxYjQxM2RhYTI2NDI0ZmRlMDYzZmYzMmNkOTcxNWM5NTI1NmIwZjI1MDM3YzJmMGVkZTFkNWU1M2I1In19fQ=="}]},item_name='{"bold":true,"color":"blue","italic":false,"text":"="}'] 1
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:player_head",components:{"minecraft:item_name":'{"bold":true,"color":"blue","italic":false,"text":"+"}'}}]}] run clear @s player_head[item_name='{"bold":true,"color":"blue","italic":false,"text":"+"}']
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:player_head",components:{"minecraft:item_name":'{"bold":true,"color":"blue","italic":false,"text":"="}'}}]}] run clear @s player_head[item_name='{"bold":true,"color":"blue","italic":false,"text":"="}']

## | Function for Sound |
execute as @e[tag=VSC_Selected,type=villager] at @s run execute if score @s VSC_Tune matches 1.. run function shop_creator:info
#execute as @e[type=player] at @s run execute if score @s VSC_Tune matches 1.. run function shop_creator:info


## | Debug Menu |
scoreboard players operation Tune VSC_Debug = @e[tag=VSC_Selected,type=villager] VSC_Tune
scoreboard players operation Effect VSC_Debug = @e[tag=VSC_Selected,type=villager] VSC_Effect
scoreboard players operation Data VSC_Debug = @e[tag=VSC_Selected,type=villager] VSC_Data
scoreboard players operation Create VSC_Debug = @p VSC_Spawn
scoreboard players operation Egg VSC_Debug = @p VSC_Egg
scoreboard players operation First VSC_Debug = VSC_Bot VSC_First
