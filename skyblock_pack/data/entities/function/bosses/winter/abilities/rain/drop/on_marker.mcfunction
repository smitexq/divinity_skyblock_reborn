playsound minecraft:entity.generic.splash ambient @a ~ ~ ~
function entities:bosses/winter/abilities/rain/drop/particles/1

function dc:get_call {tick:1, command:"function entities:bosses/winter/abilities/rain/drop/particles/2", requirePos:true, requireEntity:false}
function dc:get_call {tick:2, command:"function entities:bosses/winter/abilities/rain/drop/particles/3", requirePos:true, requireEntity:false}
function dc:get_call {tick:3, command:"function entities:bosses/winter/abilities/rain/drop/particles/4", requirePos:true, requireEntity:false}
function dc:get_call {tick:4, command:"function entities:bosses/winter/abilities/rain/drop/particles/5", requirePos:true, requireEntity:false}
function dc:get_call {tick:5, command:"function entities:bosses/winter/abilities/rain/drop/particles/6", requirePos:true, requireEntity:false}

function dc:get_call {tick:4, command:"function entities:bosses/winter/abilities/rain/drop/damage", requirePos:true, requireEntity:false}