#Очищаем эти кольцо из инвентаря, записав их в хранилище
$function entities:player/store_rings/macros {Slot: 10, PLuuid: "$(Player_UUID)"}
$function entities:player/store_rings/macros {Slot: 11, PLuuid: "$(Player_UUID)"}
$execute if entity @s[tag=WearingRingOfAdvancedGUI] run function entities:player/store_rings/macros {Slot: 12, PLuuid: "$(Player_UUID)"}
$execute if entity @s[tag=WearingRingOfAdvancedGUI] run function entities:player/store_rings/macros {Slot: 13, PLuuid: "$(Player_UUID)"}

#Очищаем хранилище с сохранением колец и инвентарем игрока (то что для сохранения колец)
$data modify storage dsb:rings $(Player_UUID).SaveRings set value []
$data modify storage dsb:rings $(Player_UUID).SaveInventory set value []