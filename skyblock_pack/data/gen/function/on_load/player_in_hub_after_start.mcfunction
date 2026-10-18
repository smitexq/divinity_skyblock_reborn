tag @s remove hub

gamemode survival @s
setworldspawn ~ ~ ~
spawnpoint @s ~ ~ ~

spreadplayers ~ ~ 1 7 false @s


#выдача менюшки на закрытый слот колец
function rings:api/return_open_gui_button
#гайдбук
loot give @s loot dsb:items/books/start
#старт
advancement grant @s only dsb:skyblock/root