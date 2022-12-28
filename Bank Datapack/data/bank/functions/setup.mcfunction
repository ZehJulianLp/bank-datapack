execute as @e[type=marker,tag=bankomat] at @s unless score @s banksetup matches 1..2 run setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Bankautomat","color":"green","bold":true}'} replace
execute as @e[type=marker,tag=bankomat] at @s unless score @s banksetup matches 1..2 run scoreboard players add @s banksetup 1
execute as @e[type=marker,tag=bankomat] at @s if score @s banksetup matches 1 run data merge block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},placehold:1b}},{Slot:1b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},placehold:1b}},{Slot:2b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},placehold:1b}},{Slot:3b,id:"minecraft:chest",Count:1b,tag:{display:{Name:'{"text":"Einzahlen","color":"aqua","bold":true,"italic":false}'},einzahlen:1b}},{Slot:4b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},placehold:1b}},{Slot:5b,id:"minecraft:observer",Count:1b,tag:{display:{Name:'{"text":"Abheben","color":"light_purple","bold":true,"italic":false}'},abheben:1b}},{Slot:6b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},placehold:1b}},{Slot:7b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},placehold:1b}},{Slot:8b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},placehold:1b}}],CustomName:'{"text":"Bankautomat","color":"green","bold":true}'}
execute as @e[type=marker,tag=bankomat] at @s if score @s banksetup matches 1 run scoreboard players set @s bank-page-id 0
execute as @e[type=marker,tag=bankomat] at @s if score @s banksetup matches 1 run tellraw @p "§2Bankautomat erfolgreich platziert."
execute as @e[type=marker,tag=bankomat] at @s if score @s banksetup matches 1 run scoreboard players add @s banksetup 1

execute as @e[type=salmon,tag=bank_remove] at @s if block ~ ~-1 ~ dropper[facing=up] run kill @e[type=marker,tag=bankomat,distance=..2]
execute as @e[type=salmon,tag=bank_remove] at @s if block ~ ~-1 ~ dropper[facing=up] run tellraw @p "§cBankautomat erfolgreich entfernt."
execute as @e[type=salmon,tag=bank_remove] at @s if block ~ ~-1 ~ dropper[facing=up] run setblock ~ ~-1 ~ air
execute as @e[type=salmon,tag=bank_remove] at @s run kill @s