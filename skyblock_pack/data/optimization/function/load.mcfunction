#выполняем первый раз функцию относительно самой старой сферы
execute as @e[type=minecraft:experience_orb,sort=arbitrary,limit=1] at @s run function optimization:main

#удаляем со всех сфер опыта метку exp, чтобы можно было еще проверять эти сферы на возможность оптимизации
tag @e[type=minecraft:experience_orb] remove exp

#зацикливаем функцию, чтобы очищать мир раз в 5 секунд
schedule function optimization:load 3s