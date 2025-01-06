#Fetch item's stored points and max points
execute store result score @s xpb_temp_points run data get entity @s SelectedItem.components.minecraft:custom_data.xpb_points
execute store result score @s xpb_temp_max run data get entity @s SelectedItem.components.minecraft:custom_data.xpb_max
execute store result score @s xpb_temp_tier run data get entity @s SelectedItem.components.minecraft:custom_data.xpb_tier

#Subtracts 9 and stores to different score. This is to calculate whether 10 can be stored or not.
scoreboard players operation $9 xpb_temp_max_subtracted = @s xpb_temp_max
scoreboard players remove $9 xpb_temp_max_subtracted 9

#Subtracts 90 and stores to different score. This is to calculate whether 100 can be stored or not.
scoreboard players operation $90 xpb_temp_max_subtracted = @s xpb_temp_max
scoreboard players remove $90 xpb_temp_max_subtracted 90

#Subtracts 900 and stores to different score. This is to calculate whether 100 can be stored or not.
scoreboard players operation $900 xpb_temp_max_subtracted = @s xpb_temp_max
scoreboard players remove $900 xpb_temp_max_subtracted 900