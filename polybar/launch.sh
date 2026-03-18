#!/usr/bin/env bash

# Terminar instâncias já rodando
killall -q polybar

# Esperar até que os processos tenham sido interrompidos
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Lançar a barra "example" (é o nome padrão da config que vamos criar)
polybar example &
