#Сахар
execute store result storage dsb:recipes TitleText.count int 1 store result score *var1 variables run data get storage dsb:recipes Tea.Items[{id:"minecraft:sugar"}].count

scoreboard players set *var2 variables 6
execute store result storage dsb:recipes TitleText.count int 1 run scoreboard players operation *var2 variables -= *var1 variables
data modify storage dsb:recipes TitleText.text1 set value "dsb.items.food.berries_tea"
data modify storage dsb:recipes TitleText.text2 set value "item.minecraft.sugar"
execute if score *var1 variables matches ..5 run return run function food:cauldron/cook/recipes/title with storage dsb:recipes TitleText


#Ягоды
execute store result storage dsb:recipes TitleText.count int 1 store result score *var1 variables run data get storage dsb:recipes Tea.Items[{id:"minecraft:sweet_berries"}].count

scoreboard players set *var2 variables 12
execute store result storage dsb:recipes TitleText.count int 1 run scoreboard players operation *var2 variables -= *var1 variables
data modify storage dsb:recipes TitleText.text2 set value "item.minecraft.sweet_berries"
execute if score *var1 variables matches ..11 run return run function food:cauldron/cook/recipes/title with storage dsb:recipes TitleText


#Чай
execute store result storage dsb:recipes TitleText.count int 1 store result score *var1 variables run data get storage dsb:recipes Tea.Items[{components:{"minecraft:custom_data":{id:"tea_leaves"}}}].count

scoreboard players set *var2 variables 7
execute store result storage dsb:recipes TitleText.count int 1 run scoreboard players operation *var2 variables -= *var1 variables
data modify storage dsb:recipes TitleText.text2 set value "dsb.items.food.tea_leaves"
execute if score *var1 variables matches ..6 run return run function food:cauldron/cook/recipes/title with storage dsb:recipes TitleText


###Если всего хватает, то начинается готовка
playsound minecraft:block.brewing_stand.brew ambient @s
advancement grant @s only dsb:skyblock/constructions/tea_create
###-1 прочность у зажигалки
# -1/прочность предмета
function dsb:events/remove_durability {damage: -0.016, max_damage: 64, item:"flint_and_steel"}
###

###Отнимаем усталость. Восстановление
#Если игрок НЕ в библиотеке, то отнимаем время отдыха
execute unless predicate dsb:events/player_not_learn run return fail

scoreboard players remove @s RestTimeAI 150
execute if score @s RestTimeAI matches ..0 run scoreboard players set @s RestTimeAI 0
###


$tag $(out) add cooking
$tag $(out) add BerriesTea

#Тег на кол-во чая
$execute if predicate food:buff_count_tea run data modify storage dsb:cauldrons_tea $(out).CountResult set value 4
$execute if predicate food:buff_count_tea run data modify storage dsb:cauldrons_tea $(out).BuffTea set value true

#Время готовки
$scoreboard players set $(out) CookingTea 0
$execute at $(out) run summon minecraft:text_display ~ ~1.85 ~ {text:'{"text":"§6||||||||||"}',billboard:center,see_through:false,view_range:0.17f,Tags:["$(out)","time"]}

###Цикл
$execute as $(out) at @s run function dc:get_call {tick:30, command:"function food:cauldron/cook/prepend_update", requirePos:false, requireEntity:true}
#Пузырьки
$execute as $(out) at @s positioned ~ ~1 ~ run function dc:get_call {tick:15, command:"function food:cauldron/cook/bubble_particle", requirePos:true, requireEntity:true}