#Создаем хранилище с слотами для колец
data modify storage dsb:temp PlayerRingsGUI set value []
#Копируем аксессуары из инвенатаря/или могилки (смотря откуда запуск был)
$data modify storage dsb:temp PlayerRingsGUI append from $(source)[{Slot:10b}]
$data modify storage dsb:temp PlayerRingsGUI append from $(source)[{Slot:11b}]
$execute if entity @s[tag=WearingRingOfAdvancedGUI] run data modify storage dsb:temp PlayerRingsGUI append from $(source)[{Slot:12b}]
$execute if entity @s[tag=WearingRingOfAdvancedGUI] run data modify storage dsb:temp PlayerRingsGUI append from $(source)[{Slot:13b}]

#Узнаем UUID игрока
function dc:gu/generate

###Кольцо расширения###
#Если есть тег, но нет больше кольца в слотах
execute if entity @s[tag=WearingRingOfAdvancedGUI] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,RingOfAdvancedGUI:1b}}}] run function rings:check_the_rings/advanced_gui_remove with storage gu:main
#Если кольцо появилось в слотах
execute if entity @s[tag=!WearingRingOfAdvancedGUI] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,RingOfAdvancedGUI:1b}}}] run function rings:check_the_rings/advanced_gui_add with storage gu:main



###Амулет жизни### (Увеличивает максимальное здоровье на 10% от текущего) Но пока на +2
execute if entity @s[tag=WearingAmuletOfLife] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Amulet:1b,AmuletOfLife:1b}}}] run function rings:activate_ring/amulet_of_life/remove
execute if entity @s[tag=!WearingAmuletOfLife] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Amulet:1b,AmuletOfLife:1b}}}] run function rings:activate_ring/amulet_of_life/wear

###Амулет защиты### (Увеличивает максимальный уровень брони на 1)
execute if entity @s[tag=WearingAmuletOfArmor] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Amulet:1b,AmuletOfArmor:1b}}}] run function rings:activate_ring/amulet_of_armor/remove
execute if entity @s[tag=!WearingAmuletOfArmor] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Amulet:1b,AmuletOfArmor:1b}}}] run function rings:activate_ring/amulet_of_armor/wear

###Амулет удачи### (Повышает удачу на 1)
execute if entity @s[tag=WearingAmuletOfLuck] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Amulet:1b,AmuletOfLuck:1b}}}] run function rings:activate_ring/amulet_of_luck/remove
execute if entity @s[tag=!WearingAmuletOfLuck] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Amulet:1b,AmuletOfLuck:1b}}}] run function rings:activate_ring/amulet_of_luck/wear

###Амулет знаний### (Увеличивает уровень интеллекта на 5)
execute if entity @s[tag=WearingAmuletOfIntelligence] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Amulet:1b,AmuletOfIntelligence:1b}}}] run function rings:activate_ring/amulet_of_intelligence/remove
execute if entity @s[tag=!WearingAmuletOfIntelligence] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Amulet:1b,AmuletOfIntelligence:1b}}}] run function rings:activate_ring/amulet_of_intelligence/wear



###Кольцо вампиризма###
execute if entity @s[tag=WearingRingOfVampire] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,RingOfVampire:1b}}}] run function rings:activate_ring/vampire/remove
execute if entity @s[tag=!WearingRingOfVampire] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,RingOfVampire:1b}}}] run function rings:activate_ring/vampire/wear

###Древнее кольцо Солнца### (взрыв атакующего)
execute if entity @s[tag=WearingAncientRingOfTheSun] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,AncientRingOfTheSun:1b}}}] run function rings:activate_ring/ancient_sun_ring/remove
execute if entity @s[tag=!WearingAncientRingOfTheSun] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,AncientRingOfTheSun:1b}}}] run function rings:activate_ring/ancient_sun_ring/wear

###Кольцо ястреба### (доп крит урон)
execute if entity @s[tag=WearingHawkRing] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,HawkRing:1b}}}] run function rings:activate_ring/hawkring/remove
execute if entity @s[tag=!WearingHawkRing] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,HawkRing:1b}}}] run function rings:activate_ring/hawkring/wear


###Кольцо бедствий### (+1 урон если почти фул хп, не ниже максимального на 2)
execute if entity @s[tag=WearingRingOfDisaster] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,RingOfDisaster:1b}}}] run function rings:activate_ring/ring_of_disaster/remove
execute if entity @s[tag=!WearingRingOfDisaster] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,RingOfDisaster:1b}}}] run function rings:activate_ring/ring_of_disaster/wear

###Северное ритуальное кольцо### (+1 урон, если HP ниже 7)
execute if entity @s[tag=WearingNorthernRitualRing] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,NorthernRitualRing:1b}}}] run function rings:activate_ring/northern_ritual_ring/remove
execute if entity @s[tag=!WearingNorthernRitualRing] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,NorthernRitualRing:1b}}}] run function rings:activate_ring/northern_ritual_ring/wear

###Южное ритуальное кольцо### (+1 броня, если HP ниже 7)
execute if entity @s[tag=WearingSouthernRitualRing] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,SouthernRitualRing:1b}}}] run function rings:activate_ring/southern_ritual_ring/remove
execute if entity @s[tag=!WearingSouthernRitualRing] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,SouthernRitualRing:1b}}}] run function rings:activate_ring/southern_ritual_ring/wear

###Проблема с определение местоположение моба, который умер
###Кольцо Красного Солнца### (Шанс получить дополнительный редкий лут с моба)
# execute if entity @s[tag=WearingRedSunRing] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,RedSunRing:1b}}}] run function rings:activate_ring/red_sun/remove
# execute if entity @s[tag=!WearingRedSunRing] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,RedSunRing:1b}}}] run function rings:activate_ring/red_sun/wear

###Пока не сделано (проблемы с определением условия спавна враждебных мобов: уровень освещения, луна тоже считается в предикате)
###Кольцо со львом### (Увеличенный спавн мобов ночью)
# execute if entity @s[tag=WearingRingWithLion] unless data storage dsb:temp PlayerRingsGUI[{tag:{Ring:1b,RingWithLion:1b}}] run function rings:activate_ring/ring_with_lion/remove
# execute if entity @s[tag=!WearingRingWithLion] if data storage dsb:temp PlayerRingsGUI[{tag:{Ring:1b,RingWithLion:1b}}] run function rings:activate_ring/ring_with_lion/wear

###Жертвенное кольцо### (Сохраняет предметы и опыт после смерти)
execute if entity @s[tag=WearingSacrificialRing] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,SacrificialRing:1b}}}] run function rings:activate_ring/sacrificial/remove
execute if entity @s[tag=!WearingSacrificialRing] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,SacrificialRing:1b}}}] run function rings:activate_ring/sacrificial/wear




###Кольцо странника
execute if entity @s[tag=WearingWandererRing] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,WandererRing:1b}}}] run function rings:activate_ring/wanderer/remove
execute if entity @s[tag=!WearingWandererRing] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,WandererRing:1b}}}] run function rings:activate_ring/wanderer/wear

###Кольцо путешественника
execute if entity @s[tag=WearingTravelerRing] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,TravelerRing:1b}}}] run function rings:activate_ring/traveler/remove
execute if entity @s[tag=!WearingTravelerRing] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,TravelerRing:1b}}}] run function rings:activate_ring/traveler/wear

###Кольцо исследователя
execute if entity @s[tag=WearingScholarRing] unless data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,ScholarRing:1b}}}] run function rings:activate_ring/scholar/remove
execute if entity @s[tag=!WearingScholarRing] if data storage dsb:temp PlayerRingsGUI[{components:{"minecraft:custom_data":{Ring:1b,ScholarRing:1b}}}] run function rings:activate_ring/scholar/wear


#Invader Ring
#Ring of the Priestess
#Ring with a lion
#Sacrificial Ring
#Quartz protection ring/ Quartz Ring of Magic/ Quartz Ring of Fire/ Quartz Ring of Darkness/Quartz Lightning Ring 
#Amulet with clover
#Amulet of protection
#Amulet of Knowledge
#	


data remove storage dsb:temp PlayerRingsGUI