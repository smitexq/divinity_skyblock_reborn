#50% - 20*attrubute.luck
scoreboard players set *var1 variables 20
execute store result score *var2 variables run attribute @s minecraft:luck get

#luck * 20
scoreboard players operation *var1 variables *= *var2 variables

#50 - luck*20
scoreboard players set *var2 variables 50
scoreboard players operation *var2 variables -= *var1 variables


execute store result score *var3 variables run random value 0..99 dsb:waystone_teleport

# tellraw @a {"score":{"objective":"variables","name":"*var2"}}
#Если шанс выпал меньше, чем заданный, значит жемчуг забирается
execute if score *var3 variables <= *var2 variables run item modify entity @s weapon.mainhand food:remove_item