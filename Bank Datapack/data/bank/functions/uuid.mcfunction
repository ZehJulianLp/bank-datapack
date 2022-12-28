data modify storage bank:uuid UUIDchek set from storage bank:uuid inUUIDchek
execute store success score @s bank-ram run data modify storage bank:uuid UUIDchek set from entity @s UUID
tag @s[scores={bank-ram=0}] add UUIDtrue