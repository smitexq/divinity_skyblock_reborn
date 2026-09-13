			#===============#
			# made by Smite #
			#===============#
			#
#Сначала распеределение между 4-мя стойками (север-юг-запад-восток)
tag @e[type=armor_stand,tag=AltarShelf,tag=NSWE,sort=random,limit=1] add 1
tag @e[type=armor_stand,tag=AltarShelf,tag=NSWE,tag=!1,sort=random,limit=1] add 2
tag @e[type=armor_stand,tag=AltarShelf,tag=NSWE,tag=!1,tag=!2,sort=random,limit=1] add 3
tag @e[type=armor_stand,tag=AltarShelf,tag=NSWE,tag=!1,tag=!2,tag=!3,sort=random,limit=1] add 4

#Если только 4 предмета участвуют, то заканчиваем
execute if score #4_items Altar matches 1 run return 0

tag @e[type=armor_stand,tag=AltarShelf,tag=!middle,tag=!1,tag=!2,tag=!3,tag=!4,sort=random,limit=1] add 5
tag @e[type=armor_stand,tag=AltarShelf,tag=!middle,tag=!1,tag=!2,tag=!3,tag=!4,tag=!5,sort=random,limit=1] add 6
tag @e[type=armor_stand,tag=AltarShelf,tag=!middle,tag=!1,tag=!2,tag=!3,tag=!4,tag=!5,tag=!6,sort=random,limit=1] add 7
tag @e[type=armor_stand,tag=AltarShelf,tag=!middle,tag=!1,tag=!2,tag=!3,tag=!4,tag=!5,tag=!6,tag=!7,limit=1] add 8