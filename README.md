# GNOME Shell Extensions Manager

O **GNOME Shell Extensions Manager** é um script simples, projetado para gerenciar extensões do GNOME Shell automaticamente. Ele verifica se as extensões especificadas estão ativadas e, caso não estejam, as ativa automaticamente durante o login do usuário. Este projeto foi criado para facilitar a vida de quem usa extensões no GNOME e quer garantir que elas estejam sempre ativas!

## 🚀 Recursos

- Verifica automaticamente a ativação das extensões listadas.
- Ativa extensões inativas ao iniciar o sistema.
- Fácil de configurar e expandir para incluir novas extensões.
- Compatível com qualquer distribuição que utilize GNOME Shell.

## 📦 Instalação

1. Clone este repositório ou baixe os arquivos manualmente:
   ```bash
   git clone https://github.com/elppans/gnome-shell-extensions_manager.git
   cd gnome-shell-extensions_manager
   ```

2. Mova o script para um local no seu PATH (por exemplo, `~/.local/bin`):
   ```bash
   mv gnome-shell-extensions_manager.sh ~/.local/bin/
   chmod +x ~/.local/bin/gnome-shell-extensions_manager.sh
   ```

3. Copie o arquivo `.desktop` para a pasta de *autostart* do GNOME:
   ```bash
   cp gnome-shell-extensions_manager.desktop ~/.config/autostart/
   ```

4. Edite o arquivo `.desktop`, se necessário, para ajustar o caminho do script:
   ```ini
   Exec="$HOME"/.local/bin/gnome-shell-extensions_manager.sh
   ```

## 🛠️ Configuração

1. Abra o arquivo `gnome-shell-extensions_manager.sh` em um editor de texto.
2. Edite a lista `extensions_list` para incluir as extensões que você deseja gerenciar:
   ```bash
   extensions_list=(
       "extensao@exemplo.com"
       "outra-extensao@exemplo.com"
       "mais-uma-extensao@exemplo.com"
   )
   ```

3. Salve e feche o arquivo.

## 🔄 Uso

O script será executado automaticamente após o login do usuário e verificará as extensões listadas. Se alguma extensão estiver desativada, ela será ativada automaticamente.

Se desejar testar manualmente, você pode executar o script diretamente no terminal:
```bash
gnome-shell-extensions_manager.sh
```

## 📋 Contribuição

Contribuições são bem-vindas! Se tiver sugestões ou melhorias, sinta-se à vontade para abrir uma *issue* ou enviar um *pull request*.

---

