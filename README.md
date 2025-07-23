# GNOME Shell Extensions Manager

O **GNOME Shell Extensions Manager** é um script simples e eficiente projetado para gerenciar extensões do GNOME Shell automaticamente. Ele verifica se as extensões especificadas estão ativas e, caso não estejam, as ativa durante o login do usuário.

Essa ferramenta é ideal para usuários que desejam garantir que extensões essenciais estejam sempre habilitadas, mesmo após reinicializações ou atualizações do sistema.

---

## 🚀 Recursos

- **Gestão automática de extensões**: Verifica e ativa extensões durante o login.
- **Modo silencioso por padrão**: Ideal para uso automático em sessões.
- **Modo verbose opcional**: Exibe mensagens detalhadas com cores para facilitar a leitura.
- **Mensagens coloridas**: Suporte a saídas coloridas (verde para sucesso, vermelho para erros, azul para já ativadas, etc).
- **Flexibilidade**: Extensões podem ser gerenciadas facilmente por meio de um arquivo dedicado.

---

## 📋 Instalação

### 1. Clone este repositório
Baixe os arquivos do repositório:
```bash
git clone https://github.com/elppans/gnome-shell-extensions_manager.git
cd gnome-shell-extensions_manager
```

### 2. Mova o script para um local no seu PATH
Recomenda-se mover o script para o diretório `~/.local/bin/`:
```bash
mv gnome-shell-extensions_manager.sh ~/.local/bin/
chmod +x ~/.local/bin/gnome-shell-extensions_manager.sh
```

### 3. Configure o PATH (se necessário)
Certifique-se de que o diretório `~/.local/bin` está configurado no seu PATH para que o script possa ser executado de qualquer lugar. Para isso:

1. Abra o arquivo `~/.bash_profile` (ou `~/.bashrc`, dependendo da configuração do seu sistema):
   ```bash
   nano ~/.bash_profile
   ```

2. Adicione a linha abaixo ao final do arquivo:
   ```bash
   export PATH="$HOME/.local/bin:$PATH"
   ```

3. Salve o arquivo e recarregue o ambiente do shell:
   ```bash
   source ~/.bash_profile
   ```

Verifique se o diretório foi adicionado ao PATH:
```bash
echo $PATH
```
Você deve ver `~/.local/bin` na saída.

---

### 4. Crie o arquivo `extensions.list`
Crie o arquivo `extensions.list` no diretório `~/.local/share/gnome-shell/`:
```bash
mkdir -p ~/.local/share/gnome-shell
touch ~/.local/share/gnome-shell/extensions.list
```

### 5. Adicione as extensões ao `extensions.list`
No arquivo `extensions.list`, adicione as extensões que deseja gerenciar, uma por linha. Exemplo:
```
unite@hardpixel.eu
caffeine@patapon.info
appindicatorsupport@rgcjonas.gmail.com
```

---

## 🔄 Uso

### Execução automática (modo silencioso)

Você pode configurar o script para ser executado automaticamente ao fazer login, usando uma das opções abaixo:

#### **Opção 1: `.bash_profile` (usuário atual)**

Adicione o script ao seu `.bash_profile`:
```bash
echo -e '
"$HOME"/.local/bin/gnome-shell-extensions_manager.sh
' | tee -a $HOME/.bash_profile
```

#### **Opção 2: `/etc/profile.d/` (todos os usuários ou sistema)**

Se preferir uma abordagem global, copie o script para o diretório `/etc/profile.d/`:
```bash
sudo cp gnome-shell-extensions_manager.sh /etc/profile.d/
sudo chmod +x /etc/profile.d/gnome-shell-extensions_manager.sh
```

> 💡 Essa opção fará com que o script seja executado automaticamente em sessões de login interativas.

---

### Execução manual

Você também pode executar o script manualmente:

#### Modo silencioso (padrão):
```bash
~/.local/bin/gnome-shell-extensions_manager.sh
```

#### Modo verbose (detalhado e colorido):
```bash
~/.local/bin/gnome-shell-extensions_manager.sh --verbose
```

---

## 📂 Estrutura do Repositório

- `gnome-shell-extensions_manager.sh`: Script principal para gerenciar extensões.
- `extensions.list`: Arquivo contendo as extensões a serem gerenciadas (uma por linha).

---

## 🛠️ Requisitos

- GNOME Shell.
- A ferramenta `gnome-extensions` (padrão em distribuições GNOME modernas).
- Terminal com suporte a cores ANSI (praticamente todos os terminais modernos).

---

## 🐞 Debug e Reinício do GNOME Shell

Se você adicionar extensões manualmente no diretório `~/.local/share/gnome-shell/extensions/`, pode ser necessário reiniciar a sessão (logout e login) para que as novas extensões sejam reconhecidas.

---

## 📋 Contribuição

Contribuições são bem-vindas! Se você tiver ideias, melhorias ou encontrar problemas, sinta-se à vontade para abrir uma *issue* ou enviar um *pull request*.

---
