# Moxiecraft Dungeon Engine

## Registering a Custom Dungeon to the Engine

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
This loot is created in and accessible via:

```
data/
    moxiecraft_dungeons/
        loot_table/
```

These items can be gotten in dungeons and ingame via the loot command:

`/loot give player loot moxiecraft_dunegons:item_name`

These loot tables should be used for global dungeon items, (and items purchasable with dungeons items) only. 
Special Server Items and Gifts should be put in https://github.com/Moxiecraft/moxiecraft_items

## Item Modifiers

```
data/
    moxiecraft_dungeons/
        item_modifier/
            effects/
            rarity/
            stats/
```

### Effects

Custom or Unusually high potion/ status effects

### Rarity

Dungeon Items have several different rarities, with more to come.
This dungeon engine includes item_modifiers to easily add rarity to these items.

Currently the rarities are:

```
Mystery Item            moxiecraft_dungeons:rarity/mystery_item
Dungeon Item            moxiecraft_dungeons:rarity/dungeon_item
Rare Item               moxiecraft_dungeons:rarity/rare_item
Mythical Item           moxiecraft_dungeons:rarity/mythical_item
Epic Item               moxiecraft_dungeons:rarity/epic_item
Overworld Artifact      moxiecraft_dunegons:rarity/overworld_artifact
Void Artifact (Red)     moxiecraft_dungeons:rarity/void_artifact_red
Void Artifact (Blue)    moxiecraft_dunegons:rarity/void_artifact_blue
```

To add rarity to your item on the dungeon loot table, simply add the function:

`{"function": "minecraft:reference", "name": "moxiecraft_dungeons:rarity/rare_item}`

### Stats

In general, specific loot with specific modifiers should belong to the dungeon specific datapack, however, moxiecraft dungeons have shared stats between multiple loot items.
Using stat modifiers will not only add special abilities to items, but it automatically will add the item lore as well!

Examples include: +4 Flame, +6 Toughness, +30 Attack Damage

```
data/
    moxiecraft_dungeons/
        item_modifier/
            *              - global item modifiers that should be easily accessible, such as tooltip hiding.
            effects/
            rarity/
            stats/
                armor/     - contains modifiers that add armor, protection, toughness to items
                attack/    - contains modifiers that add different damage types and values to items
                bow/       - contains bow specific modifiers
                crossbow/  - contains crossbow specific modifiers
                health/    - contains modifiers that affect player health
                luck/      - contains modifiers that affect luck
                movement/  - contains modifiers that affect player movement
                *          - global stat item modifiers that dont fit into a category, such as mending, enchantable, etc
```

To add a custom stat to your item on the dungeon loot table, simply add the function:

`{"function": "minecraft:reference", "name": "moxiecraft_dungeons:stats/mendable}`

Which will add the mending enchantment, and the lore "Mendable" in dark green.

**NOTE:**
stat modifiers use "insert" function. If lore needs to be in a specific order, add functions from last to first.

Example:
```
"functions": [
{"function": "minecraft:reference", "name": "moxiecraft_dungeons:stats/mendable},
{"function": "minecraft:reference", "name": "moxiecraft_dungeons:stats/enchantable}
]
```
This will result in the item having the following lore in this order:
```
Enchantable
Mendable
```

**This project is not affiliated with, endorsed by, or sponsored by
Mojang Studios or Microsoft.
Minecraft is a trademark of Mojang Studios.**
  
                    
                
