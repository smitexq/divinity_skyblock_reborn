			#===============#
			# made by Smite #
			#===============#
			#
advancement revoke @s only dsb:events/use/knowledge_piece

#Если есть зависимость, то добавляем к кол-ву съеденных
execute if entity @s[tag=DependenceFromKnowPiece] run return run scoreboard players add @s know.piece_to_dependence 1

###Последовательность съедания фрагментов (если в течении 7 минут 4+ -> привыкание)
execute store result score *var1 variables run function dsb:events/knowledge_piece/dependence/start
execute if score *var1 variables matches 0 run return fail
###

#влияют на шанс только те фрагменты, которые дали интеллект
scoreboard players add @s eat.know_piece 1

#Шанс на выдачу интеллекта по формуле (100-n/2)%, где n - кол-во съеденных фрагментов
#Но шанс не меньше 70%
scoreboard players operation *var2 variables = @s eat.know_piece
scoreboard players operation *var2 variables /= #2 variables
scoreboard players set *var1 variables 100
scoreboard players operation *var1 variables -= *var2 variables

#если шанс получился меньше 70%, то устанавливаем 70%
execute if score *var1 variables matches ..69 run scoreboard players set *var1 variables 70

#Шанс
execute store result score *var2 variables run random value 1..100

#если шанс срабатывает - добавляем интеллект
execute if score *var2 variables <= *var1 variables run function dsb:events/knowledge_piece/append_ai