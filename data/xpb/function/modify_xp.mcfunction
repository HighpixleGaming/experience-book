#If negative value, run minus. If positive, run plus
execute if score @s xpb_temp_modify_xp matches ..-1 run function xpb:player_xp/minus
execute if score @s xpb_temp_modify_xp matches 1.. run function xpb:player_xp/plus

#Check whether xpb_modify is any value other than zero. If yes, repeat.
execute unless score @s xpb_temp_modify_xp matches 0 run return run function xpb:modify_xp