			#===============#
			# made by Smite #
			#===============#
			#
$execute if entity @s[tag=!Luck] run loot spawn ~ ~ ~ loot dsb:sieve/$(block)

###Очищение задачи на звук
function dc:gu/generate
data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "function dsb:constructions/sieve/work/sound"
function dc:clear_schedule with storage dsb:dc_remove temp
###
execute if entity @s[tag=!Luck] run return run kill @s


###Определяем позицию сита
$data modify storage dsb:cts Temp set value {x:0, y:0, z:0, block:$(block)}

execute store result storage dsb:cts Temp.x int 1 run data get entity @s Pos[0]
execute store result storage dsb:cts Temp.y int 1 run data get entity @s Pos[1]
execute store result storage dsb:cts Temp.z int 1 run data get entity @s Pos[2]

kill @s
function dsb:constructions/sieve/work/delete_record with storage dsb:cts Temp