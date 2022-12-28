give @s bat_spawn_egg{display:{Name:'{"text":"Bankautomat setzen","italic":false}'},EntityTag:{id:"minecraft:marker",Tags:["bankomat"]}} 1
give @p salmon_spawn_egg{display:{Name:'{"text":"Bankautomat entfernen","italic":false}'},EntityTag:{DeathLootTable:"air",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["bank_remove"]}} 1
tellraw @s "Bankitems gegeben."