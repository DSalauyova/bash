#!/bin/bash

#ps -ef, ps xxxx
#kill -9 xxxx
ps

echo "for kill processus do kill -9 pid number"

read -p "Entrez l'ID du processus à terminer : " pid

if kill -0 $pid 2>/dev/null; then
    # if kill $pid; then
        echo "Processus $pid terminé."
    else
        echo "Impossible de terminer le processus $pid."
    fi
else
    echo "Vous n'avez pas les permissions nécessaires "
    exit 1
fi