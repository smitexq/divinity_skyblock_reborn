#Сохраняем текущий предмет, если его нет, то пустой элемент
$data modify storage dsb:cts ResearchTable.$(uuid).recipe[$(lastIndex)][1] set from block ~ ~ ~ Items[{Slot:13b}]
$execute unless data block ~ ~ ~ Items[{Slot:13b}] run data modify storage dsb:cts ResearchTable.$(uuid).recipe[$(lastIndex)][1] set value {}

#Изначально вставляем блок, чтобы data modify обнаружил Items[{Slot:13b}]
item replace block ~ ~ ~ container.13 with minecraft:structure_block
$data modify block ~ ~ ~ Items[{Slot:13b}] set from storage dsb:cts ResearchTable.$(uuid).recipe[$(currentIndex)][1]

data modify block ~ ~ ~ Items append from storage dsb:cts ResearchTable.StartMenu[]