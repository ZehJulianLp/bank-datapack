item replace block ~ ~ ~ container.0 with black_stained_glass_pane{placehold:1b} 1
item replace block ~ ~ ~ container.2 with black_stained_glass_pane{placehold:1b} 1
item replace block ~ ~ ~ container.8 with black_stained_glass_pane{placehold:1b} 1
item replace block ~ ~ ~ container.1 with player_head{display:{Name:'{"text":"Info","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"Wählen Sie den Betrag,","italic":false}','{"text":"den Sie abheben möchten.","italic":false}']},info:1b,SkullOwner:{Id:[I;1699987509,1213481488,-2053774365,-34235879],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzU3NDcwMTBkODRhYTU2NDgzYjc1ZjYyNDNkOTRmMzRjNTM0NjAzNTg0YjJjYzY4YTQ1YmYzNjU4NDAxMDVmZCJ9fX0="}]}}} 1

execute unless data block ~ ~ ~ {Items:[{Slot:6b,id:"minecraft:arrow",Count:1b}]} run playsound ui.button.click master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:6b,id:"minecraft:arrow",Count:1b}]} run scoreboard players set @s bank-page-id 0
execute unless data block ~ ~ ~ {Items:[{Slot:6b,id:"minecraft:arrow",Count:1b}]} run clear @p arrow{back:1b}


execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches ..0 run playsound block.note_block.bass master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches ..0 run tellraw @p ["",{"text":"Sie haben nicht genug Geld auf dem Konto.","color":"red"}]
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 1.. run playsound block.note_block.bell master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 1.. run give @p emerald 1
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 1.. run tellraw @p ["",{"text":"Sie haben ","color":"aqua"},{"text":"1 Emerald","bold":true,"color":"green"},{"text":" abgehoben.","color":"aqua"}]
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 1.. run scoreboard players remove @p bank 1
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:emerald",Count:1b}]} run clear @p emerald{one:1b}
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:emerald",Count:1b}]} run item replace block ~ ~ ~ container.3 with emerald{display:{Name:'{"text":"1 Emerald abheben","color":"green","bold":true,"italic":false}'},one:1b} 1
execute unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:emerald",Count:1b}]} run scoreboard players remove @p bank 1


execute unless data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches ..15 run playsound block.note_block.bass master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches ..15 run tellraw @p ["",{"text":"Sie haben nicht genug Geld auf dem Konto.","color":"red"}]
execute unless data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 16.. run playsound block.note_block.bell master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 16.. run give @p emerald 16
execute unless data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 16.. run tellraw @p ["",{"text":"Sie haben ","color":"aqua"},{"text":"16 Emeralds","bold":true,"color":"green"},{"text":" abgehoben.","color":"aqua"}]
execute unless data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 16.. run scoreboard players remove @p bank 16
execute unless data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:emerald",Count:1b}]} run clear @p emerald{sixteen:1b}
execute unless data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:emerald",Count:1b}]} run item replace block ~ ~ ~ container.4 with emerald{display:{Name:'{"text":"16 Emerald abheben","color":"green","bold":true,"italic":false}'},sixteen:1b} 1
execute unless data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:emerald",Count:1b}]} run scoreboard players remove @p bank 16


execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches ..63 run playsound block.note_block.bass master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches ..63 run tellraw @p ["",{"text":"Sie haben nicht genug Geld auf dem Konto.","color":"red"}]
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 64.. run playsound block.note_block.bell master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 64.. run give @p emerald 64
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 64.. run tellraw @p ["",{"text":"Sie haben ","color":"aqua"},{"text":"64 Emeralds","bold":true,"color":"green"},{"text":" abgehoben.","color":"aqua"}]
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 64.. run scoreboard players remove @p bank 64
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:emerald",Count:1b}]} run clear @p emerald{sixtyfour:1b}
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:emerald",Count:1b}]} run item replace block ~ ~ ~ container.5 with emerald{display:{Name:'{"text":"64 Emerald abheben","color":"green","bold":true,"italic":false}'},sixtyfour:1b} 1
execute unless data block ~ ~ ~ {Items:[{Slot:5b,id:"minecraft:emerald",Count:1b}]} run scoreboard players remove @p bank 64


execute unless data block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches ..127 run playsound block.note_block.bass master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches ..127 run tellraw @p ["",{"text":"Sie haben nicht genug Geld auf dem Konto.","color":"red"}]
execute unless data block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 128.. run playsound block.note_block.bell master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 128.. run give @p emerald 128
execute unless data block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 128.. run tellraw @p ["",{"text":"Sie haben ","color":"aqua"},{"text":"128 Emeralds","bold":true,"color":"green"},{"text":" abgehoben.","color":"aqua"}]
execute unless data block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:emerald",Count:1b}]} if score @p bank matches 128.. run scoreboard players remove @p bank 128
execute unless data block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:emerald",Count:1b}]} run clear @p emerald{hundred:1b}
execute unless data block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:emerald",Count:1b}]} run item replace block ~ ~ ~ container.7 with emerald{display:{Name:'{"text":"128 Emerald abheben","color":"green","bold":true,"italic":false}'},hundred:1b} 1
execute unless data block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:emerald",Count:1b}]} run scoreboard players remove @p bank 128
