#Если слот занят, то ничего не делаем
$execute if data storage dsb:grave acces.OutPut[{Slot:$(Slot)b}] run return 0

#Иначе вставляем предмет (пытаемся)
$data modify storage dsb:grave acces.OutPut append from storage dsb:grave acces.SaveAccessories[{Slot:$(Slot)b}]
$data remove storage dsb:grave acces.SaveAccessories[{Slot:$(Slot)b}]

# А если слот так и остался пустым, то заполяем стеклом
# #dev_beta_1.1 - не используется API этого стекло, изменения в одном файле приводят к необходимому изменению во всех. На игру не влияет, стекла сами возвращаются при первом обновлении инвентаря
# $execute unless data storage dsb:grave acces.OutPut[{Slot:$(Slot)b}] run data modify storage dsb:grave acces.OutPut append value {Slot:$(Slot)b, id:"minecraft:gray_stained_glass_pane", Count:1b, components:{"minecraft:custom_data":{accessories_font:1b}}}