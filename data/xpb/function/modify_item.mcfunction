#Modifies temp scoreboard value for item's points.
scoreboard players operation @s xpb_temp_points += @s xpb_temp_modify_item

#Writes modfied scoreboard value to storage.
execute store result storage xpb_temp xpb_points int 1 run scoreboard players get @s xpb_temp_points

#Sets correct lore based on temp scoreboard values.
item modify entity @s weapon.mainhand {"function":"minecraft:set_lore","entity":"this","lore":[{"text":"Points: ","extra":[{"score":{"objective":"xpb_temp_points","name":"@s"},"type":"score","color":"gray","italic":false},{"text":"/","color":"gray","italic":false},{"score":{"objective":"xpb_temp_max","name":"@s"}}],"color":"gray","italic":false}],"mode":"replace_all","conditions":[]}
#Copies modified data from storage to item.
item modify entity @s weapon.mainhand {"function":"minecraft:copy_custom_data","source":{"type":"minecraft:storage","source":"xpb_temp"},"ops":[{"source":"xpb_points","target":"xpb_points","op":"replace"}],"conditions":[]}



scoreboard players reset @s xpb_temp_modify_item