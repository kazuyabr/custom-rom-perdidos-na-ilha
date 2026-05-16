# Contexto do Projeto: Joe & Mac 2 Modding

Este documento serve como memória técnica para agentes de IA consultarem o progresso e o conhecimento acumulado sobre o modding do jogo Joe & Mac 2 - Lost in the Tropics (SNES).

## 🛠️ Ambiente e Ferramentas
- **Diretório Global de Ferramentas**: `D:\Desenvolvimento de Jogos\Custom ROMs\Tools`
- **Ferramentas Chave**:
  - **Mesen (Mesen.exe)**: Emulador/Debugger principal (substituto do Mesen-S).
  - **YY-CHR**: Editor de gráficos (sprites/tiles) em modo 4BPP SNES.
  - **Floating IPS (Flips)**: Para aplicar patches .ips/.bps (substituto do Lunar IPS).
  - **Asar**: Assembler para aplicar patches .asm na ROM.
  - **VS Code**: Editor de código com extensões para 65816 Assembly e Hex Editor.

## 📂 Estrutura do Conhecimento
- **Endereços de Memória**: Mapeados em `docs/addresses.md`. Inclui Vida (7E0232), Vidas (7E0233), Dinheiro (7E16DC) e Pulo (7E021C).
- **Patches de Tradução**: Existe uma tradução em PT-BR em `rom-base/tradução/`. O log (`.log`) indica alterações significativas nos offsets `080271` (texto) e `0DF286` (possivelmente fontes/gráficos).
- **Sprites de Referência**: Localizados em `referencias/sprites/` (rato1.png, rato2.png), destinados a substituir inimigos originais.

## 🧠 Conhecimento Acumulado (Lições Aprendidas)
1. **Padrão SNES**: O jogo utiliza a arquitetura 65816. Gráficos são tipicamente 4BPP SNES.
2. **Tradução**: A tradução existente funciona via .ips. O processo envolveu edição de fontes (para acentos) e possivelmente realocação de ponteiros para textos em Português.
3. **Soft vs Hard Patching**: Mesen aplica patches automaticamente se o nome do .ips for igual ao da ROM. Para mudanças permanentes, usa-se Flips.
4. **Workflow de Modding**: Identificar RAM -> Localizar instrução Assembly no Debugger do Mesen -> Criar patch .asm -> Aplicar com Asar.

## 🎯 Objetivos Atuais
1. Entender profundamente como o patch de tradução manipula os dados da ROM.
2. Localizar e substituir sprites de inimigos por "ratos" usando YY-CHR.
3. Desenvolver patches customizados em Assembly para alterar mecânicas do jogo.
