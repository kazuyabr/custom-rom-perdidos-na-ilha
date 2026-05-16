# Projeto Modding: Joe & Mac 2 - Lost in the Tropics

Este projeto visa centralizar as ferramentas, documentação e código assembly para a criação de um mod do jogo Joe & Mac 2 para SNES.

## 🛠️ Ferramentas Recomendadas (Versões Atualizadas)

Para editar este projeto, utilize estas ferramentas modernas localizadas em seu diretório de ferramentas global:
`D:\Desenvolvimento de Jogos\Custom ROMs\Tools`

1.  **Emulador/Debugger**: [Mesen (Multi-system)](https://github.com/SourMesen/Mesen2/releases)
    - *Nota*: O Mesen-S foi descontinuado; use o `Mesen.exe` (Mesen2).
    - Utilize o **Debugger** (`Tools -> Debugger`) e o **Memory Viewer** para explorar a ROM/RAM.
2.  **Editor de Gráficos**: [YY-CHR](https://github.com/st-ty1/yy-chr)
    - Essencial para editar os sprites. Use o modo **4BPP SNES**.
3.  **Patching IPS/BPS**: [Floating IPS (Flips)](https://fusoya.eludevisibility.org/flips/)
    - Alternativa superior ao Lunar IPS. Mais estável e suporta múltiplos formatos.
4.  **Patching/Assembly**: [Asar](https://github.com/RPVee/asar/releases)
    - Para aplicar o código fonte de `src/main.asm` diretamente na cópia da ROM.
5.  **Editor Hex**: [HxD](https://mh-nexus.de/en/hxd/) ou a extensão **Hex Editor** do VS Code.

## 📂 Estrutura e Recursos do Projeto

- `rom-base/`:
  - `Joe & Mac 2 - Lost in the Tropics (USA).sfc`: ROM original de base.
  - `tradução/`: Contém o patch de tradução para Português (`.ips`).
- `.vibecoding/docs/`:
  - [addresses.md](.vibecoding/docs/addresses.md): Lista de endereços de RAM/ROM (Vida, Dinheiro, Pulo, etc). Documentação técnica para análise de IA.
- `.vibecoding/context/`:
  - [project_memory.md](.vibecoding/context/project_memory.md): Memória do projeto para agentes de IA.
- `src/`:
  - [main.asm](src/main.asm): Arquivo principal para desenvolvimento de novos comportamentos (Assembly 65816).
- `referencias/`:
  - `sprites/rato1.png`, `rato2.png`: Referências visuais para o novo sprite de inimigo.

## 🚀 Guia de Início Rápido

### 1. Aplicando a Tradução
Para jogar com a tradução encontrada em `rom-base/tradução/`:
- **Método Rápido**: Renomeie o arquivo `.ips` para o mesmo nome da sua ROM e coloque-os na mesma pasta. O **Mesen** aplicará o patch automaticamente ao carregar.
- **Método Permanente**: Use o **Flips** para aplicar o `.ips` na ROM original e gerar um novo arquivo `.sfc` traduzido.

### 2. Modificando Sprites (Ratos)
Para substituir inimigos pelos sprites de rato:
1. Abra a ROM no **YY-CHR**.
2. Identifique os sprites dos inimigos (Dica: Use as imagens em `referencias/sprites/` para comparar o estilo e paleta).
3. Desenhe os novos frames do rato por cima dos frames originais.

### 3. Pesquisa de Memória no Mesen
1. Abra o **Mesen.exe** localizado em seu diretório de ferramentas global.
2. Vá em `Tools -> Debugger`.
3. Use o `Memory Viewer` para observar os endereços listados em [.vibecoding/docs/addresses.md](.vibecoding/docs/addresses.md).
4. Use o `Cheat Search` para encontrar novos valores (ex: coordenadas X/Y de objetos).

---
*Dica: No VS Code, instale a extensão **65816 Assembly** para editar o `main.asm` com destaque de sintaxe.*
