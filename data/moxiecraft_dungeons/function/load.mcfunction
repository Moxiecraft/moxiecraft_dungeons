# Engine load (runs on /reload)
#
# Objectives used by all dungeons:
#  dg_active: per-dungeon active flag 
#  dg_room:   per-dungeon current room index
#  dg_timer:  per-dungeon timer 
#
scoreboard objectives add dg_active dummy
scoreboard objectives add dg_room dummy
scoreboard objectives add dg_timer dummy

tellraw @a {"text":"[Moxiecraft Dungeon Engine] Loaded. Dungeons may now register via #moxiecraft_dungeons:tick.","color":"gray"}

# Call any dungeon pack load hooks
function #moxiecraft_dungeons:load


