# Engine load (runs on /reload)

#Clean registry
data remove storage moxiecraft_dungeons:registry dungeons

tellraw @a {"text":"[Moxiecraft Dungeon Engine] Loaded. Dungeons may now register via #moxiecraft_dungeons:tick.","color":"gray"}

# Call any dungeon pack load hooks
function #moxiecraft_dungeons:load

function moxiecraft_dungeons:engine/print_registered


