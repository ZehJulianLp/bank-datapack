item replace block ~ ~ ~ container.0 with player_head{display:{Name:'{"text":"Info","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"Geben Sie den Betrag","italic":false}','{"text":"an, den sie überweisen","italic":false}','{"text":"möchten.","italic":false}']},info:1b,SkullOwner:{Id:[I;1699987509,1213481488,-2053774365,-34235879],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzU3NDcwMTBkODRhYTU2NDgzYjc1ZjYyNDNkOTRmMzRjNTM0NjAzNTg0YjJjYzY4YTQ1YmYzNjU4NDAxMDVmZCJ9fX0="}]}}} 1
item replace block ~ ~ ~ container.1 with black_stained_glass_pane{placehold:1b} 1
item replace block ~ ~ ~ container.7 with black_stained_glass_pane{placehold:1b} 1
item replace block ~ ~ ~ container.4 with emerald{emerald:1b}
data modify block ~ ~ ~ Items prepend from entity @s data.ItemID
execute as @p at @e[type=marker,tag=bankomat,limit=1,sort=nearest] run item modify block ~ ~ ~ container.4 bank:pending

execute unless data block ~ ~ ~ {Items:[{Slot:6b,id:"minecraft:player_head",Count:1b}]} run playsound ui.button.click master @p ~ ~ ~ 1 0.1 1
execute unless data block ~ ~ ~ {Items:[{Slot:6b,id:"minecraft:player_head",Count:1b}]} run scoreboard players set @s bank-page-id 0
execute unless data block ~ ~ ~ {Items:[{Slot:6b,id:"minecraft:player_head",Count:1b}]} run clear @p player_head{abort:1b}

execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:crimson_button",Count:1b}]} if score @p[distance=..10] bank-pending matches 2.. run playsound ui.button.click master @p ~ ~ ~ 1 2 1
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:crimson_button",Count:1b}]} if score @p[distance=..10] bank-pending matches ..1 run playsound block.note_block.bass master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:crimson_button",Count:1b}]} if score @p[distance=..10] bank-pending matches ..1 run tellraw @p ["",{"text":"Sie können nicht weniger als einen Emerald überweisen.","color":"red"}]
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:crimson_button",Count:1b}]} if score @p[distance=..10] bank-pending matches 2.. run scoreboard players remove @p[distance=..10] bank-pending 1
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:crimson_button",Count:1b}]} run clear @p crimson_button{removeOneE:1b}
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:crimson_button",Count:1b}]} run item replace block ~ ~ ~ container.3 with crimson_button{display:{Name:'{"text":"-1 Emerald","color":"red","italic":false}'},removeOneE:1b} 1

execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:warped_button",Count:1b}]} if score @p[distance=..10] bank-pending < @p[distance=..10] bank run playsound ui.button.click master @p ~ ~ ~ 1 2 1
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:warped_button",Count:1b}]} if score @p[distance=..10] bank-pending = @p[distance=..10] bank run playsound block.note_block.bass master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:warped_button",Count:1b}]} if score @p[distance=..10] bank-pending = @p[distance=..10] bank run tellraw @p ["",{"text":"Es ist nicht möglich, mehr Emeralds zu überweisen als ihr Konto aufweist.","color":"red"}]
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:warped_button",Count:1b}]} if score @p[distance=..10] bank-pending < @p[distance=..10] bank run scoreboard players add @p[distance=..10] bank-pending 1
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:warped_button",Count:1b}]} run clear @p warped_button{addOneE:1b}
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:warped_button",Count:1b}]} run item replace block ~ ~ ~ container.5 with warped_button{display:{Name:'{"text":"+1 Emerald","color":"dark_aqua","italic":false}'},addOneE:1b} 1

execute unless data block ~ ~ ~ {Items:[{Slot:8b,id:"minecraft:player_head",Count:1b}]} run function bank:transaction
execute unless data block ~ ~ ~ {Items:[{Slot:8b,id:"minecraft:player_head",Count:1b}]} run clear @p[distance=..10] player_head{yes:1b}
execute unless data block ~ ~ ~ {Items:[{Slot:8b,id:"minecraft:player_head",Count:1b}]} run scoreboard players set @s bank-page-id 0




clear @p[distance=..10] player_head{PlayerClear:1b}
clear @p[distance=..10] emerald{emerald:1b}