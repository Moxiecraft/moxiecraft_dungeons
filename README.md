# Moxiecraft Dungeon Engine

Registering a Dungeon to the engine:

Add the following to your dungeon datapack:
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
  
                    
                
