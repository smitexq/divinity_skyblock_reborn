data modify entity @s AngerTime set value 1000

###Ищем игрока, который его бьет сейчас
scoreboard players set *var1 variables 0
#если есть игрок, который ударил голема
execute store success score *var1 variables on attacker run tag @s[type=player] add this

#Если игрок ударил, то агр на него
execute if score *var1 variables matches 1 run data modify entity @s AngryAt set from entity @p[tag=this, gamemode=!creative, gamemode=!spectator] UUID
#Иначе агр на ближайшего игрока (моб только заспавнился)
execute if score *var1 variables matches 0 run data modify entity @s AngryAt set from entity @p[gamemode=!creative, gamemode=!spectator] UUID

tag @a remove this
###