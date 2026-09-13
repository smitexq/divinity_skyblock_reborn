forceload add ~ ~
setblock ~ ~ ~ air

execute summon marker run function gen:on_load/hub_text/lobby_command_blocks/store_spawn

forceload remove ~ ~