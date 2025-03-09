# GNOME Shell Extensions Manager

O **GNOME Shell Extensions Manager** é um script simples e eficiente projetado para gerenciar extensões do GNOME Shell automaticamente. Ele verifica se as extensões especificadas estão ativas e, caso não estejam, as ativa durante o login do usuário.

Essa ferramenta é ideal para usuários que desejam garantir que extensões essenciais estejam sempre habilitadas, mesmo após reinicializações ou atualizações do sistema.

---

## 🚀 Recursos

- **Gestão automática de extensões**: Verifica e ativa extensões durante o login.
- **Flexibilidade**: Extensões podem ser gerenciadas facilmente por meio de um arquivo dedicado.
- **Feedback em tempo real**: Exibe mensagens claras sobre o status de cada extensão.

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

### 6. Configure o script para execução automática
Adicione o script ao arquivo `.bash_profile` para que ele seja executado automaticamente ao fazer login:
```bash
echo -e '\n"$HOME"/.local/bin/gnome-shell-extensions_manager.sh\n' | tee -a $HOME/.bash_profile
```

---

## 🔄 Uso

### Execução automática
Ao fazer login, o script será executado automaticamente e verificará as extensões listadas no arquivo `extensions.list`. Se alguma extensão não estiver ativa, ele tentará ativá-la.

### Execução manual
Para testar ou rodar o script manualmente, utilize:
```bash
~/.local/bin/gnome-shell-extensions_manager.sh
```

---

## 📂 Estrutura do Repositório

- `gnome-shell-extensions_manager.sh`: Script principal para gerenciar extensões.
- `extensions.list`: Arquivo contendo as extensões a serem gerenciadas (uma por linha).

---

## 🛠️ Requisitos

- GNOME Shell.
- A ferramenta `gnome-extensions` (padrão em distribuições GNOME modernas).

---

## 🛠️ Debug e Reinício do GNOME Shell

Se você adicionar extensões manualmente no diretório `~/.local/share/gnome-shell/extensions/`, pode ser necessário reiniciar a sessão (logout e login) para que as novas extensões sejam reconhecidas.

---

## 📋 Contribuição

Contribuições são bem-vindas! Se você tiver ideias, melhorias ou encontrar problemas, sinta-se à vontade para abrir uma *issue* ou enviar um *pull request*. 

---
