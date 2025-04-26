## | Execute Extraction |
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[0] run function shop_creator:extract/1
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[9] run function shop_creator:extract/2
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[18] run function shop_creator:extract/3
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[27] run function shop_creator:extract/4
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[36] run function shop_creator:extract/5
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[45] run function shop_creator:extract/6
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[54] run function shop_creator:extract/7
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[63] run function shop_creator:extract/8
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[72] run function shop_creator:extract/9
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[81] run function shop_creator:extract/10
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[90] run function shop_creator:extract/11
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[99] run function shop_creator:extract/12
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[108] run function shop_creator:extract/13
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[117] run function shop_creator:extract/14
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[126] run function shop_creator:extract/15
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[135] run function shop_creator:extract/16
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[144] run function shop_creator:extract/17
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[153] run function shop_creator:extract/18
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[162] run function shop_creator:extract/19
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[171] run function shop_creator:extract/20
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[180] run function shop_creator:extract/21
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[189] run function shop_creator:extract/22
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[198] run function shop_creator:extract/23
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[207] run function shop_creator:extract/24
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[216] run function shop_creator:extract/25
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[225] run execute as @e[tag=VSC_Selected,type=villager] at @s run tellraw @a[distance=..8] [{"text":"| [VSC]: ","color":"dark_green"},{"text":"Warning, Trade #225 & Beyond Cannot Be Extracted","color":"yellow"}]
execute if data entity @e[limit=1,tag=VSC_Selected,type=villager] Offers.Recipes[225] run execute as @e[tag=VSC_Selected,type=villager] at @s run playsound block.anvil.place master @a ~ ~ ~ 1 1.5

## | Set Tune & Effect |
scoreboard players set @e[tag=VSC_Selected,limit=1] VSC_Tune 101
scoreboard players set @e[tag=VSC_Selected,limit=1] VSC_Effect 9

## | Text |
execute if entity @e[type=villager,tag=VSC_Selected] run tellraw @a[distance=..8] [{"text":"| [VSC]: ","color":"dark_green"},{"text":"Extracted Trades from Villager","color":"red"}]
execute unless entity @e[type=villager,tag=VSC_Selected] run tellraw @a[distance=..8] [{"text":"| [VSC]: ","color":"dark_green"},{"text":"No Villager Selected.","color":"dark_red"}]