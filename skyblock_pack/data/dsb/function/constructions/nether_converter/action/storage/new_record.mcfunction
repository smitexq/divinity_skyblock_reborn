#полноценное создание записи {uuid: игрок, ench: зачарование}
$data modify storage dsb:cts Exchanger.temp.uuid set value "$(out)"

data modify storage dsb:cts Exchanger.PlayerOrder append from storage dsb:cts Exchanger.temp