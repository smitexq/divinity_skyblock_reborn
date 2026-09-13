			#===============#
			# made by Smite #
			#===============#
			#
tp @s ~ ~-0.015 ~

#Если спустились достаточно низко, то заканчиваем
scoreboard players add @s Sieve 1
$execute if score @s Sieve matches 65 align xyz positioned ~0.5 ~ ~0.5 run return run function dsb:constructions/sieve/work/block_drop {block: $(block)}

$function dc:get_call {tick:1, command:"function dsb:constructions/sieve/work/go_down {block: $(block)}", requirePos:false, requireEntity:true}