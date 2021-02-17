#!/bin/bash
#username переменная ввода имени
#user_age переменная ввода возраста
num_null=0   #переменная бесконечного цикла
child=16     #младшая группа до 16
youth_min=17 #средняя группа нижняя градация
youth_max=25 #средняя группа верхняя градация
adult=25     #старшая группа от 25


while [[ $num_null -eq 0 ]] #запустить бесконечный цикл
 do
    echo "enter your name:"
    read username        #получить имя
    if [[ -z $username || $username == 0 ]] #если пусто или равно 0 закончить цикл
         then
         echo "bye"
         exit 0
    elif [[ -n $username ]]   #если введено имя
        then
        echo "enter your age:"
        read user_age
             if [[ -z $user_age || $user_age == 0  ]] #если возраст пусто или 0 прекратить выполнение
                 then
                    echo "bye"
                    exit 0
             elif [[ $user_age -le $child ]] #входит в младшую группу
                 then
                    echo $username", your group is child"
             elif [[ $user_age -gt $child && $user_age -le $youth_max ]] #входит в среднюю группу
                 then
                    echo $username", your group is youth"
             elif [[ $user_age -gt $adult ]] #входит в старшую группу
                 then
                    echo $username", your group is adult"
             fi
    fi
done
