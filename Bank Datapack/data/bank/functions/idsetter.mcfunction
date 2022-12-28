
scoreboard players add .counter counter 1

execute if score .counter counter matches 60.. run scoreboard players set .slot counter 0
execute if score .counter counter matches 60.. run data merge storage players {Players:[]}
execute if score .counter counter matches 60.. as @a[sort=furthest,limit=15] run function bank:list
execute if score .counter counter matches 60.. run data modify block 0 -64 0 Items set from storage players Players
execute if score .counter counter matches 60.. run scoreboard players set .counter counter 0
