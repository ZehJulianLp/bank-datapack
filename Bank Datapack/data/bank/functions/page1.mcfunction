item replace block ~ ~ ~ container.0 with black_stained_glass_pane{placehold:1b} 1
item replace block ~ ~ ~ container.1 with redstone{placehold:1b} 1
execute as @p[distance=..10] at @e[type=marker,tag=bankomat,sort=nearest,limit=1] run item modify block ~ ~ ~ container.1 bank:konto
item replace block ~ ~ ~ container.2 with black_stained_glass_pane{placehold:1b} 1
item replace block ~ ~ ~ container.4 with black_stained_glass_pane{placehold:1b} 1
item replace block ~ ~ ~ container.6 with black_stained_glass_pane{placehold:1b} 1
item replace block ~ ~ ~ container.8 with black_stained_glass_pane{placehold:1b} 1
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:chest",Count:1b}]} run playsound block.chest.open master @p ~ ~ ~ 1 2 1
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:chest",Count:1b}]} run playsound ui.button.click master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:chest",Count:1b}]} run scoreboard players set @s bank-page-id 2
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:chest",Count:1b}]} run clear @p chest{einzahlen:1b}

execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:observer",Count:1b}]} run playsound ui.button.click master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:observer",Count:1b}]} run playsound block.piston.extend master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:observer",Count:1b}]} run scoreboard players set @s bank-page-id 4
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:observer",Count:1b}]} run clear @p observer{abheben:1b}


execute unless data block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:writable_book",Count:1b}]} unless score @p[distance=..10] bank matches 1.. run playsound block.beacon.deactivate master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:writable_book",Count:1b}]} unless score @p[distance=..10] bank matches 1.. run tellraw @p ["",{"text":"Sie haben nicht genug Geld auf dem Konto, um Überweisungen durchzuführen.","color":"red"}]
execute unless data block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:writable_book",Count:1b}]} unless score @p[distance=..10] bank matches 1.. run scoreboard players set @s bank-page-id 0
execute unless data block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:writable_book",Count:1b}]} if score @p[distance=..10] bank matches 1.. run playsound block.ender_chest.open master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:writable_book",Count:1b}]} if score @p[distance=..10] bank matches 1.. run scoreboard players set @s bank-page-id 6
execute unless data block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:writable_book",Count:1b}]} run clear @p writable_book{transfer:1b}