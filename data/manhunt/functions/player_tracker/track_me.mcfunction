clear @a compass{tracker_compass:1b}
tag @a remove tracked
tag @s add tracked
execute as @a[tag=!tracked] run function manhunt:player_tracker/get_compass