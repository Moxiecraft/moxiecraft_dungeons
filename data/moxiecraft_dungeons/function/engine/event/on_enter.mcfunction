$tag @s add in_$(dungeon)
$scoreboard players set @s d_$(dungeon) 1
$team join d_$(dungeon) @s 

$execute unless data storage moxiecraft_dungeons:registry dungeons.$(dungeon).active run return 0

$execute unless data storage moxiecraft_dungeons:registry dungeons.$(dungeon).active run data modify storage moxiecraft_dungeons:registry dungeons.$(dungeon).active set value 1b

$function scheduler:task_repeat_interval_keyed {key: "tick/$(dungeon)", interval_ticks: 1, type: "moxiecraft_dungeons:dungeon_tick", payload: {dungeon: "$(dungeon)"}}