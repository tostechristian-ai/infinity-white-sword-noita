dofile_once( "data/scripts/lib/utilities.lua" )

-- Infinity White Sword
-- Spawns at start (to the right of player)

-- Spawn at player start (to the right of player)
function OnPlayerSpawned( player_entity )
	local init_check_flag = "white_sword_spawned_start"
	if GameHasFlagRun( init_check_flag ) then
		return
	end
	GameAddFlagRun( init_check_flag )

	-- Get player position
	local x, y = EntityGetTransform( player_entity )

	-- Spawn to the RIGHT of player (positive x offset)
	local spawn_x = x + 20
	local spawn_y = y + 10

	-- Check if safe
	local did_hit, hit_x, hit_y = RaytracePlatforms( x, y, spawn_x, spawn_y )

	if did_hit then
		-- If blocked, spawn closer
		spawn_x = x + 10
		spawn_y = y + 5
	end

	-- Spawn White Sword
	local white_sword = EntityLoad( "mods/infinity_white_sword/files/entities/usamaki.xml", spawn_x, spawn_y )

	if white_sword ~= nil then
		GamePrint( "White Sword spawned!" )
	else
		GamePrint( "Failed to spawn White Sword" )
	end
end
