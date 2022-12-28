data modify storage bank:uuid inUUIDchek set from entity @s data.ItemID.tag.SkullOwner.Id
execute as @a at @s run function bank:uuid

execute as @p[distance=..10] if entity @a[tag=UUIDtrue,limit=1] run scoreboard players operation .transfer bank-pending = @s bank-pending

execute as @p[distance=..10] if entity @a[tag=UUIDtrue,limit=1] run scoreboard players operation @s bank -= .transfer bank-pending
execute as @a[tag=UUIDtrue,limit=1] run scoreboard players operation @s bank += .transfer bank-pending
tellraw @a[tag=UUIDtrue] ["",{"text":"Sie haben eine Überweisung von ","color":"green"},{"score":{"name":".transfer","objective":"bank-pending"},"bold":true,"color":"gold"},{"text":" Emerald(s)","color":"yellow"},{"text":" vom Spieler","color":"green"},{"text":" "},{"selector":"@p","bold":true,"color":"aqua"},{"text":" erhalten!","color":"green"}]
execute if entity @a[tag=UUIDtrue,limit=1] run tellraw @p[distance=..10] ["",{"text":"Überweisung von ","color":"green"},{"score":{"name":".transfer","objective":"bank-pending"},"bold":true,"color":"gold"},{"text":" Emerald(s)","color":"yellow"},{"text":" an","color":"green"},{"text":" "},{"selector":"@a[tag=UUIDtrue]","bold":true,"color":"aqua"},{"text":" gesendet!","color":"green"}]
execute if entity @a[tag=UUIDtrue,limit=1] run playsound entity.player.levelup master @p[distance=..10] ~ ~ ~ 1 1 1
execute unless entity @a[tag=UUIDtrue,limit=1] run tellraw @p[distance=..10] "§4Fehler 404. Spieler nicht online."
execute unless entity @a[tag=UUIDtrue,limit=1] run playsound entity.villager.no master @p[distance=..10] ~ ~ ~ 1 1 1

tag @e remove UUIDtrue
