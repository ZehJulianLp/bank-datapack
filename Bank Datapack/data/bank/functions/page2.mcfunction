item replace block ~ ~ ~ container.1 with player_head{display:{Name:'{"text":"Info","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"Legen Sie die Emeralds","italic":false}','{"text":"in die Mitte. Sie werden","italic":false}','{"text":"auf das Bankkonto hinzugefügt.","italic":false}']},info:1b,SkullOwner:{Id:[I;1699987509,1213481488,-2053774365,-34235879],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzU3NDcwMTBkODRhYTU2NDgzYjc1ZjYyNDNkOTRmMzRjNTM0NjAzNTg0YjJjYzY4YTQ1YmYzNjU4NDAxMDVmZCJ9fX0="}]}}} 1
item replace block ~ ~ ~ container.0 with black_stained_glass_pane{placehold:1b} 1
item replace block ~ ~ ~ container.2 with black_stained_glass_pane{placehold:1b} 1
item replace block ~ ~ ~ container.3 with black_stained_glass_pane{placehold:1b} 1
item replace block ~ ~ ~ container.5 with black_stained_glass_pane{placehold:1b} 1
item replace block ~ ~ ~ container.7 with black_stained_glass_pane{placehold:1b} 1
item replace block ~ ~ ~ container.8 with black_stained_glass_pane{placehold:1b} 1
execute unless data block ~ ~ ~ {Items:[{Slot:6b,id:"minecraft:arrow",Count:1b}]} run playsound ui.button.click master @p ~ ~ ~ 1 1 1
execute unless data block ~ ~ ~ {Items:[{Slot:6b,id:"minecraft:arrow",Count:1b}]} run scoreboard players set @s bank-page-id 0
execute unless data block ~ ~ ~ {Items:[{Slot:6b,id:"minecraft:arrow",Count:1b}]} run clear @p arrow{back:1b}


execute if data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:emerald"}]} store result score @p[distance=..10] bank-deposit run data get block ~ ~ ~ Items[4].Count
execute if data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:emerald"}]} run playsound block.note_block.pling master @p ~ ~ ~ 1 2 1
execute if data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:emerald"}]} run scoreboard players operation @p[distance=..10] bank += @p[distance=..10] bank-deposit
execute if data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:emerald"}]} run tellraw @p[distance=..10] ["",{"text":"Sie haben ","color":"aqua"},{"score":{"name":"@p[distance=..10]","objective":"bank-deposit"},"bold":true,"color":"green"},{"text":" Emerald(s)","bold":true,"color":"green"},{"text":" eingezahlt.","color":"aqua"}]
execute if data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:emerald"}]} run scoreboard players reset @p[distance=..10] bank-deposit
execute if data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:emerald"}]} run item replace block ~ ~ ~ container.4 with air
