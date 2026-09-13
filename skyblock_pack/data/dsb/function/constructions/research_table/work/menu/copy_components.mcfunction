#Копирование компонентов. При копировании нам нужна только текстура и id. null мы не проверяем
$data modify block 17112022 0 0 Items[0].components."minecraft:custom_data".id set from block ~ ~ ~ Items[{Slot:$(source_slot)b}].components."minecraft:custom_data".id

#Выставляем размер стака на 2, чтобы предметы, которые не стакаются могли застакаться в шалкере
data modify block 17112022 0 0 Items[0].components."minecraft:max_stack_size" set value 2