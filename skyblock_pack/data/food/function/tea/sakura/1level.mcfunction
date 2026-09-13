execute store result score #rand TeaScore run random value 0..99
#Если сразу же чинить, то прочность добавиться, поэтому задержка в один тик
execute if score #rand TeaScore matches 0..14 run function dc:get_call {tick:1, command:"item modify entity @s weapon.mainhand food:repair", requirePos:false, requireEntity:true}