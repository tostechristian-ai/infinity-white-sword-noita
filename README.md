# Infinity White Sword - Noita Mod

A powerful sword mod for Noita that spawns the White Sword (Usamaki) at the start of the game.

## Features

- **White Sword (Usamaki)**: A powerful sword that moves you forward into the slice
- **Auto-spawn**: The sword spawns automatically at the start of the game, to the right of the player
- **Overpowered configuration**: Pre-loaded with HEAVY_SHOT, LUMINOUS_DRILL, and ADD_MANA spells for infinite rapid-fire casting
- **Custom projectile effects**: Purple particle effects for visual flair

## Installation

1. Download or clone this repository
2. Copy the `infinity_white_sword` folder to your Noita mods directory:
   - Windows: `C:\Program Files (x86)\Steam\steamapps\common\Noita\mods\`
   - Linux: `~/.steam/steam/steamapps/common/Noita/mods/`
3. Launch Noita and enable the "Infinity White Sword" mod in the mod menu
4. Start a new game - the White Sword will spawn to the right of your character

## Mod Configuration

The sword is pre-configured with the following spell loadout:
- 3x HEAVY_SHOT (massive damage boost)
- 1x PING_PONG_PATH (extends drill travel pattern)
- 3x LUMINOUS_DRILL (safe laser beam/lightsaber effect)
- 3x ADD_MANA (infinite mana sustain)

The wand is configured for:
- Instant firing (1 frame fire rate)
- 10 actions per round
- 0 reload time
- 99,999 mana for infinite casting

## File Structure

```
infinity_white_sword/
├── mod.xml                    # Mod metadata
├── init.lua                   # Spawn logic
├── files/
│   ├── entities/
│   │   ├── usamaki.xml               # Main sword entity
│   │   ├── night_s_edge_projectile.xml # Projectile entity
│   │   └── night_s_edge_slash.xml   # Melee hitbox entity
│   ├── items_gfx/
│   │   └── night_s_edge.xml         # Sprite definition
│   └── scripts/
│       ├── night_s_edge_setup.lua   # Wand spell configuration
│       ├── night_s_edge_damage.lua  # Projectile damage logic
│       ├── night_s_edge_slash.lua   # Melee damage logic
│       ├── gun_action_nights_edge.lua # Custom spell action
│       └── usamaki_spawn.lua        # Random spawn logic
```

## Credits

Originally based on Terraria mod concepts, adapted for Noita.

## License

This mod is provided as-is for the Noita community.
