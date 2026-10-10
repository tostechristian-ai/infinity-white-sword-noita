dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform(entity_id)

local ability_comp = EntityGetFirstComponent(entity_id, "AbilityComponent")

-- White Sword Spell Loadout (7 slots)
-- OVERPOWERED Lightsaber: Infinite rapid-fire with laser drills

-- Spells fire in REVERSE order (last added fires first)

-- Slot 1: PING_PONG_PATH - Extends drill travel pattern
AddGunAction(entity_id, "PING_PONG_PATH")

-- Slot 2: LUMINOUS_DRILL - Safe laser beam (lightsaber effect)
AddGunAction(entity_id, "LUMINOUS_DRILL")

-- Slot 3: LUMINOUS_DRILL - More lasers
AddGunAction(entity_id, "LUMINOUS_DRILL")

-- Slot 4: LUMINOUS_DRILL - Even more lasers
AddGunAction(entity_id, "LUMINOUS_DRILL")

-- Slot 5: ADD_MANA - Infinite mana sustain
AddGunAction(entity_id, "ADD_MANA")

-- Slot 6: ADD_MANA - More mana
AddGunAction(entity_id, "ADD_MANA")

-- Slot 7: ADD_MANA - Even more mana
AddGunAction(entity_id, "ADD_MANA")

-- Configure wand for OVERPOWERED infinite casting
ComponentObjectSetValue(ability_comp, "gun_config", "reload_time", 0)
ComponentObjectSetValue(ability_comp, "gun_config", "actions_per_round", 7)
ComponentObjectSetValue(ability_comp, "gun_config", "shuffle_deck_when_empty", 0)

-- Configure attack behavior for instant firing
ComponentObjectSetValue(ability_comp, "gunaction_config", "fire_rate_wait", 1)
ComponentObjectSetValue(ability_comp, "gunaction_config", "spread_degrees", 3)
ComponentObjectSetValue(ability_comp, "gunaction_config", "speed_multiplier", 2.0)

-- Set INSANE mana for infinite casting
ComponentSetValue(ability_comp, "mana_max", 99999)
ComponentSetValue(ability_comp, "mana_charge_speed", 99999)
ComponentSetValue(ability_comp, "mana", 99999)
