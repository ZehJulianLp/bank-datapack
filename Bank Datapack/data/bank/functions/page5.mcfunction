item replace block ~ ~ ~ container.1 with player_head{display:{Name:'{"text":"Info","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"Wählen Sie einen Spieler,","italic":false}','{"text":"den Sie Geld überweisen","italic":false}','{"text":"möchten.","italic":false}']},info:1b,SkullOwner:{Id:[I;1699987509,1213481488,-2053774365,-34235879],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzU3NDcwMTBkODRhYTU2NDgzYjc1ZjYyNDNkOTRmMzRjNTM0NjAzNTg0YjJjYzY4YTQ1YmYzNjU4NDAxMDVmZCJ9fX0="}]}}}

execute unless data block ~ ~ ~ {Items:[{Slot:6b,id:"minecraft:player_head",Count:1b}]} run playsound ui.button.click master @p ~ ~ ~ 1 0.1 1
execute unless data block ~ ~ ~ {Items:[{Slot:6b,id:"minecraft:player_head",Count:1b}]} run scoreboard players set @s bank-page-id 0
execute unless data block ~ ~ ~ {Items:[{Slot:6b,id:"minecraft:player_head",Count:1b}]} run clear @p player_head{abort:1b}

execute unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:player_head",Count:1b}]} run playsound ui.button.click master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:player_head",Count:1b}]} run scoreboard players set @s bank-page-id 10
execute unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:player_head",Count:1b}]} run clear @p player_head{next:1b}

execute unless data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:player_head",Count:1b}]} run playsound ui.button.click master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:player_head",Count:1b}]} run scoreboard players set @s bank-page-id 6
execute unless data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:player_head",Count:1b}]} run clear @p player_head{before:1b}


data modify block 0 -64 0 Items set from storage players Players

execute as @p store success score @p bank-data run clear @p player_head{BankID:6b}
execute if score @p bank-data matches 1 run data modify entity @s data.ItemID set from block 0 -64 0 Items[5]
execute if score @p bank-data matches 1 run scoreboard players set @s bank-page-id 12
execute if score @p bank-data matches 1 run playsound block.iron_door.open master @p ~ ~ ~ 1 1.5 1
execute if entity @a[scores={bank-data=1..},limit=1] run scoreboard players reset @a bank-data

execute as @p store success score @p bank-data run clear @p player_head{BankID:7b}
execute if score @p bank-data matches 1 run data modify entity @s data.ItemID set from block 0 -64 0 Items[6]
execute if score @p bank-data matches 1 run scoreboard players set @s bank-page-id 12
execute if score @p bank-data matches 1 run playsound block.iron_door.open master @p ~ ~ ~ 1 1.5 1
execute if entity @a[scores={bank-data=1..},limit=1] run scoreboard players reset @a bank-data

execute as @p store success score @p bank-data run clear @p player_head{BankID:8b}
execute if score @p bank-data matches 1 run data modify entity @s data.ItemID set from block 0 -64 0 Items[7]
execute if score @p bank-data matches 1 run scoreboard players set @s bank-page-id 12
execute if score @p bank-data matches 1 run playsound block.iron_door.open master @p ~ ~ ~ 1 1.5 1
execute if entity @a[scores={bank-data=1..},limit=1] run scoreboard players reset @a bank-data

execute as @p store success score @p bank-data run clear @p player_head{BankID:9b}
execute if score @p bank-data matches 1 run data modify entity @s data.ItemID set from block 0 -64 0 Items[8]
execute if score @p bank-data matches 1 run scoreboard players set @s bank-page-id 12
execute if score @p bank-data matches 1 run playsound block.iron_door.open master @p ~ ~ ~ 1 1.5 1
execute if entity @a[scores={bank-data=1..},limit=1] run scoreboard players reset @a bank-data

execute as @p store success score @p bank-data run clear @p player_head{BankID:10b}
execute if score @p bank-data matches 1 run data modify entity @s data.ItemID set from block 0 -64 0 Items[9]
execute if score @p bank-data matches 1 run scoreboard players set @s bank-page-id 12
execute if score @p bank-data matches 1 run playsound block.iron_door.open master @p ~ ~ ~ 1 1.5 1
execute if entity @a[scores={bank-data=1..},limit=1] run scoreboard players reset @a bank-data