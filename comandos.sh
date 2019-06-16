#!/bin/bash
# Universidade Federal de Goiás
# Disciplina: Sistemas Operacionais 2019-1
# Trabalho 01 - Exercício 02
# Aluno: Orlando da Cruz Pereira Júnior

clear

echo "Sistema operacional.............................: "$(uname -s) $(uname -r)

echo "IP da interface eth0............................: "$(hostname -I)

echo "Quantidade de memoria livre/usada...............: "$(free -m | grep Mem.: | awk '{print $4}')"/"$(free -m | grep Mem.: | awk '{print $3}')

echo "Percentual de uso da partição principal ("/").....: "$(df --output=pcent /dev/sda1 | grep -o '[0-9]*')"%"

exit 0
