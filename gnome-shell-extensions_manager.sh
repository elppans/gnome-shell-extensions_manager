#!/bin/bash

# Função para verificar e ativar extensões
manage_extension() {
    EXTENSION=$1
    STATUS=$(gnome-extensions list --enabled | grep "$EXTENSION" )

    if [ -z "$STATUS" ]; then
        gnome-extensions enable "$EXTENSION" && \
        echo "A extensão $EXTENSION foi ativada." || \
        echo "A extensão $EXTENSION não foi ativada."
    else
        echo "A extensão $EXTENSION já está ativada."
    fi
}


# Verificar se o arquivo existe e contém extensões
if [ ! -f "$HOME/.local/share/gnome-shell/extensions.list" ] || [ ! -s "$HOME/.local/share/gnome-shell/extensions.list" ]; then
    echo "O arquivo extensions.list está vazio ou não existe. Por favor, verifique."
    exit 1
fi

# Lista de extensões a serem gerenciadas
extensions_list="$(cat $HOME/.local/share/gnome-shell/extensions.list)"

# Iterar pela lista e verificar/ativar cada extensão
while IFS= read -r extension; do
    manage_extension "$extension"
done < "$HOME/.local/share/gnome-shell/extensions.list"

