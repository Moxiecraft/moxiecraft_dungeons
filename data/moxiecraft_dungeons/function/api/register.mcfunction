#Register Dungeon to storage registry
#Expects the namespace key
$tellraw @a {"text":"Registering Dungeon: $(dungeon)"}
$data modify storage moxiecraft_dungeons:registry dungeons append value $(dungeon)

#create a scoreboard and team for the dungeon
$scoreboard objectives add in_$(dungeon) dummy
$team add d_$(dungeon) {"text":"Dungeon: $(dungeon)"}

#Default Optional Dungeon Hooks ->

$data modify storage moxiecraft_dungeons:registry dungeons.$(dungeon).enter set value "moxiecraft_dungeons:api/nohook"
$data modify storage moxiecraft_dungeons:registry dungeons.$(dungeon).exit set value "moxiecraft_dungeons:api/nohook"
$data modify storage moxiecraft_dungeons:registry dungeons.$(dungeon).tick set value "moxiecraft_dungeons:api/nohook"

#Override defaults if provided
execute if data storage moxiecraft_dungeons:registry {__dummy:0} run return 0


#If passed, overwrite
#$data modify storage moxiecraft_dungeons:registry dungeons.$(dungeon).enter set value "$(enter)"
#$data modify storage moxiecraft_dungeons:registry dungeons.$(dungeon).exit set value "$(exit)"
#$data modify storage moxiecraft_dungeons:registry dungeons.$(dungeon).tick set value "$(tick)"

#Schedule repeating bounds check task.
$function scheduler:task_repeat_interval_keyed { key: "bounds/$(dungeon)", interval_ticks: 20, type: "moxiecraft_dungeons:check_bounds", payload: { dungeon: "$(dungeon)" } }
