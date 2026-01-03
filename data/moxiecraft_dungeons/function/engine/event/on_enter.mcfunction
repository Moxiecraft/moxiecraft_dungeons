$tag @s add in_$(dungeon)
$scoreboard players set @s d_$(dungeon) 1
$team join d_$(dungeon) @s 

#Optional Hook Handling
$data modify storage scheduler:queue tmp.mcd_enter_fn set from storage moxiecraft_dungeons:registry dungeons.$(dungeon).enter
$function $(mcd_enter_fn)

#If first player, start ticking the dungeon
$execute unless entity @[team=d_$(dungeon)] run return 0

execute unless data storage moxiecraft_dungeons:registry {dungeons:{}} run return 0

$execute unless data storage moxiecraft_dungeons:registry dungeons.$(dungeon).active run data modify storage moxiecraft_dungeons:registry dungeons.$(dungeon).active set value 1b

$execute unless data storage moxiecraft_dungeons:registry dungeons.$(dungeon).active run return 0

$function scheduler:task_repeat_interval_keyed {key: "tick/$(dungeon)", interval_ticks: 1, type: "moxiecraft_dungeons:dungeon_tick", payload: {dungeon: "$(dungeon)"}