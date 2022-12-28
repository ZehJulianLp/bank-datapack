scoreboard objectives add bank dummy
scoreboard objectives add banksetup dummy
scoreboard objectives add bank-page-id dummy
scoreboard objectives add players-online dummy
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add headsetter dummy
scoreboard objectives add counter dummy
scoreboard objectives add bank-data dummy
scoreboard objectives add bank-pending dummy
scoreboard objectives add bank-ram dummy
scoreboard objectives add bank-deposit dummy
setblock 0 -64 0 chest


tellraw @a [{"text": "Bank-Datapack erfolgreich geladen. /function bank:give, um die benötigten Items zu erhalten.", "color": "dark_green"}]