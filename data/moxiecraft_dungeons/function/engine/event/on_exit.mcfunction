$tag @s remove in_$(dungeon)

$scoreboard players reset @s d_$(dungeon)

team leave @s

#If no one left, stop tick loop.
$execute if entity @a[team=d_$(dungeon)] run return 0

$data modify storage moxiecraft_dungeons:registry dungeons.$(dungeon).active set value 0b

$function scheduler:task_cancel_key {key: "tick/$(dungeon)"} 

