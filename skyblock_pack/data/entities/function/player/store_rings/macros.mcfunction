##Запись колец в хранилище
$data modify storage dsb:temp Grave.SaveAccessories append from storage dsb:temp Grave.GraveInv[{Slot:$(Slot)b}]

#Заполняем этот слот из хранилища сохранения инветаря
$data remove storage dsb:temp Grave.GraveInv[{Slot:$(Slot)b}]
$data modify storage dsb:temp Grave.GraveInv append from storage dsb:rings $(PLuuid).SaveInventory[{Slot:$(Slot)b}]