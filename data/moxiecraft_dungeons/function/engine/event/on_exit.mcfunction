$tag @s remove in_$(dungeon)

$scoreboard players reset @s d_$(dungeon)

team leave @s

$data modify storage scheduler:queue tmp.mcd_exit_fn set from storage moxiecraft_dungeons:registry dungeons.$(dungeon).exit

$function $(mcd_exit_fn)

#If no one left, stop tick loop.
$execute if entity @a[team=d_$(dungeon)] run return 0

$data modify storage moxiecraft_dungeons:registry dungeons.$(dungeon).active set value 0b

$function scheduler:task_cancel_keyed {key: "tick/$(dungeon)"} 

