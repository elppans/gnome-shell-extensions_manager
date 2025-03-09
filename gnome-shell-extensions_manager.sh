#!/bin/bash

# Função para verificar e ativar extensões
manage_extension() {
    EXTENSION=$1
    STATUS=$(gnome-extensions list | grep "$EXTENSION" | grep "enabled")

    if [ -z "$STATUS" ]; then
        gnome-extensions enable "$EXTENSION"
        echo "A extensão $EXTENSION foi ativada."
    else
        echo "A extensão $EXTENSION já está ativada."
    fi
}

# Lista de extensões a serem gerenciadas
extensions_list=(
    "extensao@exemplo.com"
    "outra-extensao@exemplo.com"
    "mais-uma-extensao@exemplo.com"
)

# Iterar pela lista e verificar/ativar cada extensão
for extension in "${extensions_list[@]}"; do
    manage_extension "$extension"
done
