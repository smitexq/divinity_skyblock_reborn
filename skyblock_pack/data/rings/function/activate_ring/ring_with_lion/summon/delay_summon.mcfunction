#Через заданное время выбираем несколько ищеющихся в мире вражденбных мобов и проверяем, что удовлетворяет словиям спавна
$function dc:get_call {tick:$(ToSummon), command:"function rings:activate_ring/ring_with_lion/summon/count_positions", requirePos:false, requireEntity:true}

#И через другое время будет срабатывать кольцо
$function dc:get_call {tick:$(ToNextSummon), command:"function rings:activate_ring/ring_with_lion/select_time_to_summon", requirePos:false, requireEntity:true}