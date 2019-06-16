#!/bin/bash
# Universidade Federal de Goiás
# Disciplina: Sistemas Operacionais 2019-1
# Trabalho 01 - Exercício 01
# Aluno: Orlando da Cruz Pereira Júnior

clear

echo -n "Informe a taxa de juros (i)..............: "
read i

echo -n "Informe o valor do depósito mensal (R)...: "
read R

echo -n "Numero de meses (n)......................: "
read n

printf "Valor futuro do Investimento (S).........: ""%.2f\n" $(echo "$R*((((1+$i)^$n)-1)/$i)" | bc -l)

exit 0
