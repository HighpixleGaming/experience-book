advancement revoke @s only xpb:receive_xp

function xpb:fetch_item_data

#Checks if item has stored points, and if tier supports higher transfer rate
execute if score @s xpb_temp_tier matches 3.. if score @s xpb_temp_points matches 1000.. run return run function xpb:receive/receive_1000
execute if score @s xpb_temp_tier matches 2.. if score @s xpb_temp_points matches 100.. run return run function xpb:receive/receive_100
execute if score @s xpb_temp_points matches 10.. run return run function xpb:receive/receive_10
execute if score @s xpb_temp_points matches 1.. run return run function xpb:receive/receive_1