schedule function manhunt:player_tracker/main_10t 10t

execute at @e[tag=track_aec] run setblock ~ ~ ~ air
kill @e[tag=track_aec]
execute as @a[tag=tracked] at @s run function manhunt:player_tracker/track