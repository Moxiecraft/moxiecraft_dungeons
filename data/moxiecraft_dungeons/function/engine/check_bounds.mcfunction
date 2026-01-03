$execute as @a at @s if predicate $(dungeon):bounds unless entity @s[tag=in_$(dunegon)] run function moxiecraft_dungeons:engine/event/on_enter with storage scheduler:queue tmp

$execute as @a[tag=in_$(dungeon)] at @s unless predicate $(dungeon):bounds run function moxiecraft_dungeons:engine/event/on_exit with storage scheduler:queue tmp