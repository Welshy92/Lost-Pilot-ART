extends Node

## Signal emitted when the player's turn ends.
signal player_turn_end

## Reference to the AStarGrid2D node for pathfinding.
var pathfinder: AStarGrid2D

## Reference to the TileMapLayer node for interacting with the game map.
var map: TileMapLayer

var player: PlayerNode

## return A [PackedVector2Array] containing a path as a series of points from the start to the end position.
## [param start]: A [Vector2] representing the starting position in the world.
## [param end]: A [Vector2] representing the target position in the world.
## [param tf]: A [bool] (optional, defaults to true) that toggles whether the algorithm can retun partial paths.[br]
func calculate_path(start: Vector2, end: Vector2, tf: bool = true) -> PackedVector2Array:
	return global.pathfinder.get_id_path(
		map.local_to_map(start), 
		map.local_to_map(end),
		tf
	)
