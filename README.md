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
        item_modifiers/
            effects/
            enchantments/
            rarity/
            stats/
```

### Effects

Custom or Unusually high potion/ status effects

### Enchantments

Custom or Unusually high enchantment levels. E.g. Protection IV, Fortune IV

### Rarity

Dungeon Items have several different rarities, with more to come.
This dungeon engine includes item_modifiers to easily add rarity to these items.

Currently the rarities are:

```
Mystery Item    moxiecraft_dungeons:item_modifiers/rarity/mystery_item
Dungeon Item    moxiecraft_dungeons:item_modifiers/rarity/dungeon_item
Rare Item       moxiecraft_dungeons:item_modifiers/rarity/rare_item
Mythical Item   moxiecraft_dungeons:item_modifiers/rarity/mythical_item
Epic Item       moxiecraft_dungeons:item_modifiers/rarity/epic_item
```

### Stats

In general, specific loot with specific modifiers should belong to the dungeon specific datapack, however, moxiecraft dungeons have shared stats between multiple loot items.

Examples include: +4 Flame, +6 Toughness, +30 Attack Damage

**This project is not affiliated with, endorsed by, or sponsored by
Mojang Studios or Microsoft.
Minecraft is a trademark of Mojang Studios.**
  
                    
                
