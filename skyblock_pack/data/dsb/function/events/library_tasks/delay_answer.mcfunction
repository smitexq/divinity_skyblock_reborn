$function dc:get_call {tick:$(time), command:"function dsb:events/library_tasks/get_excepted {key:$(ansKey)}", requirePos:false, requireEntity:true}

#Устанавливаем ключ для того, что если игрок нажмет раньше на кнопку
$data modify storage dsb:library_tasks PlayersKeys.$(UUID).key set value $(ansKey)