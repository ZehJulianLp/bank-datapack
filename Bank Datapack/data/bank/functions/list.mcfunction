loot replace block 0 -64 0 container.0 loot bank:player
data modify storage players Players append from block 0 -64 0 Items[0]
execute store result storage players Players[-1].Slot byte 1 run scoreboard players get .slot counter
scoreboard players add .slot counter 1
execute store result storage players Players[-1].tag.BankID byte 1 run scoreboard players get .slot counter
