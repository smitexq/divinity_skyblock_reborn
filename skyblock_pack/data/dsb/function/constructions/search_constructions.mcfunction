#Убиваем маркер
kill @s
# say use

#Компостер
execute if predicate dsb:constructions/composter/init as @a[tag=this] run return run function dsb:constructions/composter/setup
#Сито
execute if predicate dsb:constructions/sieve/init as @a[tag=this] run return run function dsb:constructions/sieve/setup
#Стол изучения
execute if predicate dsb:constructions/research_table/any_init as @a[tag=this] run return run function dsb:constructions/research_table/setup
#Летающая лодка
execute if predicate dsb:constructions/float_boat/any_init as @a[tag=this] run return run function dsb:constructions/flying_boat/setup
#Самовар
execute if predicate dsb:constructions/tea_cauldron/any_init as @a[tag=this] run return run function dsb:constructions/tea_cauldron/setup
#Фонарь умиротворения
execute if predicate dsb:constructions/lantern/init as @a[tag=this] run return run function dsb:constructions/lantern_of_peace/setup
#Вейстоун
execute if predicate dsb:constructions/waystone/init as @a[tag=this] run return run function dsb:constructions/waystone/setup
#Водосборник
execute if predicate dsb:constructions/water_collector/init as @a[tag=this] run return run function dsb:constructions/water_collector/setup
#Котел
execute if predicate dsb:constructions/cauldron/any_init as @a[tag=this] run return run function dsb:constructions/cauldron/setup
#Адский обменник
execute if predicate dsb:constructions/nether_converter/any_init as @a[tag=this] run return run function dsb:constructions/nether_converter/setup
#Библиотека маленькая
execute if predicate dsb:constructions/s.library/any_init as @a[tag=this] run return run function dsb:constructions/small_library/setup
#Спавнер ифритов
execute if predicate dsb:constructions/blaze_spawner/init as @a[tag=this] run return run function dsb:constructions/blaze_spawner/setup
#Большая библиотека
execute if predicate dsb:constructions/h.library/any_init as @a[tag=this] run return run function dsb:constructions/huge_library/setup
#Алтарь
execute if predicate dsb:constructions/altar/init positioned ~ ~1 ~ as @a[tag=this] run return run function dsb:constructions/altar/setup