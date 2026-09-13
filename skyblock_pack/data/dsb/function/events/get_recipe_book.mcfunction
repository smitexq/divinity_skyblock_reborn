scoreboard players reset @s GetRecipesBook
scoreboard players enable @s GetRecipesBook

clear @s written_book[minecraft:custom_data~{id:"recipes_book"}]
execute at @s run loot spawn ~ ~ ~ loot dsb:items/books/recipe