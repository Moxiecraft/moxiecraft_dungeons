execute if data storage scheduler:queue {handled:1b} run return 0

execute if data storage scheduler:queue {tmp:{type:"moxiecraft_dungeons:check_bounds"}} run function moxiecraft_dungeons:engine/event/call_bounds_hook

execute if data storage scheduler:queue {tmp:{type:"moxiecraft_dungeons:dungeon_tick"}} run function moxiecraft_dungeons:engine/event/call_tick_hook

execute if data storage scheduler:queue {tmp:{type:"moxiecraft_dungeons:check_bounds"}} run data modify storage scheduler:queue handled set value 1b

execute if data storage scheduler:queue {tmp:{type:"moxiecraft_dungeons:dungeon_tick"}} run data modify storage scheduler:queue handled set value 1b