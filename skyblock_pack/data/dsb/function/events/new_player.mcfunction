tag @s add newPlayer
function dc:gu/generate

#Боссбар
function dsb:events/bossbar/create with storage gu:main
#Пул вопросов
function dsb:events/library_tasks/new_player with storage gu:main

scoreboard players set @s TravelLevel 0
scoreboard players set @s QuestReputation 0
scoreboard players set @s AI 0

#Включение тригеров
scoreboard players enable @s GetRecipesBook
scoreboard players enable @s VizualConstruction
scoreboard players enable @s Settings
#настройки
scoreboard players set @s settings_death_info 1
scoreboard players set @s settings_vizual_time 10
scoreboard players set @s last_vizual 100

#рецепты базовые все
tag @s add RecipeOf_Sieve
tag @s add RecipeOf_Composter
tag @s add RecipeOf_ResearchTable
tag @s add RecipeOf_saplings


###Если еще не началась игра, то ничего не делаем
execute unless score *start gameplay matches 1 run return fail
###иначе нужно выдать книгу и меню

#выдача менюшки на закрытый слот колец
function rings:api/return_open_gui_button
#гайдбук
loot give @s loot dsb:items/books/start
#старт
advancement grant @s only dsb:skyblock/root