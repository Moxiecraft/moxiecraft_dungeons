# Engine load (runs on /reload)
scoreboard objectives add mcd_debug dummy
scoreboard players set #hb mcd_debug 0
#Clean registry
data remove storage moxiecraft_dungeons:registry dungeons

tellraw @a {"text":"[Moxiecraft Dungeon Engine] Loaded. Dungeons may now register via moxiecraft_dungeons:api/register.","color":"gray"}

# Call any dungeon pack load hooks
function #moxiecraft_dungeons:load

function moxiecraft_dungeons:engine/internal/print_registered


