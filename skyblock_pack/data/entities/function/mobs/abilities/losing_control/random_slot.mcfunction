#Выбираем случайный предмет из хотбара
$execute store result storage dsb:temp LosingControl.Slots.Random int 1 run random value 0..$(PlayerCountSlots)

#Выбираем случайное число (будущий номер слота) для этого предмета
$execute store result storage dsb:temp LosingControl.Slots.IndexOfNewNumber int 1 run random value 0..$(LengthStorageNumbers)


function entities:mobs/abilities/losing_control/insert_in_out with storage dsb:temp LosingControl.Slots