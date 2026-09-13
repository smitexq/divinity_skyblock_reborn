#информация о книге
function dsb:constructions/nether_converter/action/api/get_on_id with entity @s SelectedItem.components."minecraft:custom_data"

#id книги: efficiency...
data modify storage dsb:cts Exchanger.Current.ench set from entity @s SelectedItem.components."minecraft:custom_data".id
#uuid игрока
function dc:gu/generate
data modify storage dsb:cts Exchanger.Current.owner set from storage gu:main out

##Добавляем "уровни-затычки" для того чтобы макрос работал
execute unless data storage dsb:cts Exchanger.Current.2lvl run data modify storage dsb:cts Exchanger.Current.2lvl set value 999999999
execute unless data storage dsb:cts Exchanger.Current.3lvl run data modify storage dsb:cts Exchanger.Current.3lvl set value 999999999
execute unless data storage dsb:cts Exchanger.Current.4lvl run data modify storage dsb:cts Exchanger.Current.4lvl set value 999999999
execute unless data storage dsb:cts Exchanger.Current.5lvl run data modify storage dsb:cts Exchanger.Current.5lvl set value 999999999
##

$function $(next_func)
data modify storage dsb:cts Exchanger.Current set value {}