			#===============#
			# made by Smite #
			#===============#
			#
data modify entity @s NoGravity set value 1
data modify entity @s NoAI set value 1
data modify entity @s Invulnerable set value 1
data modify entity @s DeathLootTable set value ""

function dc:get_call {tick:100, command:"playsound minecraft:entity.vex.charge ambient @a ~ ~ ~ 2 0.7", requirePos:true, requireEntity:false}
function dc:get_call {tick:100, command:"particle minecraft:raid_omen ~ ~0.5 ~ 0.3 0.5 0.3 0 10", requirePos:false, requireEntity:true}
function dc:get_call {tick:100, command:"kill @s", requirePos:false, requireEntity:true}