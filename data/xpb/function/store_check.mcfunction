advancement revoke @s only xpb:store_xp

function xpb:fetch_item_data

#Check if 1000 points can be added without going over max, and if tier is 3 or above. If yes, store 1000
execute if score @s xpb_temp_tier matches 3.. if score @s xpb_points matches 1000.. unless score @s xpb_temp_points >= $900 xpb_temp_max_subtracted run return run function xpb:store/store_1000

#Check if 100 points can be added without going over max, and if tier is 2 or above. If yes, store 100
execute if score @s xpb_temp_tier matches 2.. if score @s xpb_points matches 100.. unless score @s xpb_temp_points >= $90 xpb_temp_max_subtracted run return run function xpb:store/store_100

#Check if 10 points can be added without going over max. If yes, store 10
execute if score @s xpb_points matches 10.. unless score @s xpb_temp_points >= $9 xpb_temp_max_subtracted run return run function xpb:store/store_10

#Check if 1 point can be added without going over max. If yes, store 1
execute if score @s xpb_points matches 1.. unless score @s xpb_temp_points >= @s xpb_temp_max run return run function xpb:store/store_1