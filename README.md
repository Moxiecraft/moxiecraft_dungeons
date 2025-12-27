# Moxiecraft Dungeon Engine

Registering a Dungeon to the engine:

Add the following to your dungeon datapack:
```
pack-name/
    pack.mcmeta
    data/
        moxiecraft_dunegons/
            tags/
                function/
                    load.json
                    tick.json
        dunegon_name/
            function/
                load.mcfunction
                tick.mcfunction
```
Inside your load function:
```json
{
  "replace": false,
  "values": [
    "dungeon_name:load"
  ]
}
```
Inside your tick function:
```json
{
  "replace": false,
  "values": [
    "dungeon_name:tick"
   ]
}
```

This will call your load and tick functions, and register your dungeon to the engine.


## Loot Tables

In general, dungeons should carry their own loot_tables, however moxiecraft dungeons have shared loot between dungeons.
This loot as accessible via:

```
data/
    moxiecraft_dungeons/
        loot_table/
```

These items can be gotten in dungeons and ingame via the loot command:

`/loot give player loot moxiecraft_dunegons:item_name`

These loot tables should be used for global dungeons only. 
Global Items should be in https://github.com/Moxiecraft/moxiecraft_items

**This project is not affiliated with, endorsed by, or sponsored by
Mojang Studios or Microsoft.
Minecraft is a trademark of Mojang Studios.**
  
                    
                
