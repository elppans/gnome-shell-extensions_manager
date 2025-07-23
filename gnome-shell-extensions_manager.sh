#!/bin/bash

# Códigos de cor ANSI
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # Sem cor

# Variável para controle de verbose
VERBOSE=false

# Função para exibir mensagens com cor, se verbose estiver ativado
log() {
    local message=$1
    local color=${2:-$NC}
    if $VERBOSE; then
        echo -e "${color}${message}${NC}"
    fi
}

# Função para verificar e ativar extensões
manage_extension() {
    EXTENSION=$1
    STATUS=$(gnome-extensions list --enabled | grep "$EXTENSION")

    if [ -z "$STATUS" ]; then
        if gnome-extensions enable "$EXTENSION" 2>/dev/null; then
            log "✅ A extensão $EXTENSION foi ativada." "$GREEN"
        else
            log "❌ A extensão $EXTENSION não pôde ser ativada." "$RED"
        fi
    else
        log "🔵 A extensão $EXTENSION já está ativada." "$BLUE"
    fi
}

# Parse de argumentos (apenas -v ou --verbose por enquanto)
while [[ "$#" -gt 0 ]]; do
    case "$1" in
        -v|--verbose) VERBOSE=true ;;
        *) echo -e "${YELLOW}Uso: $0 [-v|--verbose]${NC}"; exit 1 ;;
    esac
    shift
done

# Verificar se o arquivo existe e contém extensões
EXT_FILE="$HOME/.local/share/gnome-shell/extensions.list"
if [ ! -f "$EXT_FILE" ] || [ ! -s "$EXT_FILE" ]; then
    echo -e "${RED}❌ O arquivo extensions.list está vazio ou não existe. Por favor, verifique.${NC}"
    exit 1
fi

# Iterar pela lista e verificar/ativar cada extensão
while IFS= read -r extension; do
    manage_extension "$extension"
done < "$EXT_FILE"
