function entities:bosses/sea_king/conditions/remove_tasks
tellraw @a {"translate":"dsb.events.bosses.day","color":"red"}

#анимка
bossbar set dsb:boss.drowned_king visible false