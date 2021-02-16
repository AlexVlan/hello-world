#!/bin/bash

count_std=$1            #Получить колличество студентов от аргумента
if [[ $count_std -eq 0  ]] #Проверяем значение, при равном 0 отдаем результат
   then
       echo 'No students'
elif [[ $count_std -gt 0 && $count_std -le 4 ]] #если больше 0 и не больше 5 выдать кол-во
   then
       echo $count_std' student'
elif [[ $count_std -ge 5 ]] #Более 5 выдать что много
   then
       echo 'A lot of students'
else                    #Проверка на дурака и ввод отрицательного значения
       echo 'negative or non-obvious meaning'
fi
