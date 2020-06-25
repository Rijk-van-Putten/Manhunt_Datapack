summon area_effect_cloud ~ 0 ~ {Tags:["track_aec"]}
setblock ~ 0 ~ lodestone

data remove block 42069 0 42069 Items
data modify block 42069 0 42069 Items[] set value {id:"compass",Count:1b,tag:{tracker_compass:1b,LodestoneDimension:"overworld",LodestoneTracked:1b,LodestonePos:{X:0,Y:0,Z:0}}}

execute store result block 42069 0 42069 Items[0].tag.LodestonePos.X int 1 run data get entity @s Pos[0]
data modify block 42069 0 42069 Items[0].tag.LodestonePos.Y set value 0
execute store result block 42069 0 42069 Items[0].tag.LodestonePos.Z int 1 run data get entity @s Pos[2]

execute as @a[tag=!tracked,nbt={Inventory:[{tag:{tracker_compass:1b}}]}] run function manhunt:player_tracker/refresh_compass