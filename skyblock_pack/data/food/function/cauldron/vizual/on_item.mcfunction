#Текст
$summon minecraft:text_display ~ ~-0.45 ~ {text:'{"text":"$(Count1)"}',billboard:center,see_through:false,view_range:0.17f,Tags:["$(sourceUUID)"]}

#Выдаем предмет, делаем меньше размер и радиус видимости
data modify entity @s item set from storage dsb:displays SlotItem
data modify entity @s transformation.scale set value [0.35f,0.35f,0.35f]
data modify entity @s view_range set value 0.17f
#Привязка
$tag @s add $(sourceUUID)
#Если направление север-юг, то не меняем
$execute as $(sourceUUID) if entity @s[tag=SN] run return 0

#Иначе поворачиваем
data modify entity @s Rotation set value [90f,0f]