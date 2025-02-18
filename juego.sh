#!/bin/bash
 
# Juego de Piedra, Papel o Tijeras
 
echo "Bienvenido a Piedra, Papel o Tijeras!"
 
# Opciones a elegir
opciones=("piedra" "papel" "tijeras")
 
# Solicitar la elección del jugador
read -p "Elige piedra, papel o tijeras: " jugador
 
# Validar la elección del jugador
if [[ ! " ${opciones[@]} " =~ " $jugador " ]]; then
    echo "Elección inválida. Debes elegir entre piedra, papel o tijeras."
    exit 1
fi
 
# Elección de la maquina
maquina=${opciones[$RANDOM % 3]}
echo "La maquina ha elegido: $maquina"
 
# Determinar el resultado
if [[ "$jugador" == "$maquina" ]]; then
    echo "¡Empate!"
elif [[ ("$jugador" == "piedra" && "$maquina" == "tijeras") ||
        ("$jugador" == "papel" && "$maquina" == "piedra") ||
        ("$jugador" == "tijeras" && "$maquina" == "papel") ]]; then
    echo "¡Has Ganado!"
else
    echo "¡Has perdido pringao"
fi
