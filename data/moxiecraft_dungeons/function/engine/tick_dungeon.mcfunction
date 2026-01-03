#if scheduled but empty, self cancel
$execute if entity @a[team=d_$(dungeon)] run return 0

data modify storage scheduler:queue cancel_repeat set value 1b

$data modify storage moxiecraft_dungeons:registry dungeons.$(dungeon).active set value 0b

$data modify storage scheduler:queue tmp.mcd_tick_fn set from storage moxiecraft_dungeons:registry dungeons.$(dungeon).tick

$function $(mcd_tick_fn)