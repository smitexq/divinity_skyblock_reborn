#Если не было книги с рецептами, то ничего не делать
execute unless predicate dsb:events/have_recipes_book run return run advancement revoke @s only dsb:events/get_recipes_book

setblock 17112022 0 0 light_blue_shulker_box

###Очищаем все книги кроме одной
#Кол-во книг
execute store result score *var1 variables run execute if items entity @s container.* minecraft:written_book[minecraft:custom_data~{id:"recipes_book"}]
execute store result score *var2 variables run execute if items entity @s weapon.offhand minecraft:written_book[minecraft:custom_data~{id:"recipes_book"}]
scoreboard players operation *var1 variables += *var2 variables
#кол-во минус 1
execute store result storage dsb:recipes count int 1 run scoreboard players remove *var1 variables 1
function dsb:events/recipes_book/clear_apart_one with storage dsb:recipes
###

#Запоминаем в каком слоте лежала книга
execute store result score *var1 variables store result storage dsb:recipes Slot int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{id:"recipes_book"}}}].Slot

#Добавляем в шалкер пустую книгу начальную
loot insert 17112022 0 0 loot dsb:items/books/recipe


#Добавляем страницы
function dsb:events/recipes_book/add_pages


#В зависимости от того где была книга - возвращаем её
function dsb:events/recipes_book/return_book with storage dsb:recipes

setblock 17112022 0 0 air
#Забираем достижение в конце, чтобы не было рекурсии
advancement revoke @s only dsb:events/get_recipes_book