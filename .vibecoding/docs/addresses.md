# Endereços e Códigos de Joe & Mac 2

Este documento contém endereços de memória RAM e códigos (Game Genie/Pro Action Replay) descobertos para o jogo.

## RAM Addresses (WRAM)

| Descrição | Endereço (PAR) | Valor Comum |
|-----------|----------------|-------------|
| Vida P1   | `7E0232`       | `06` (Max)  |
| Vidas P1  | `7E0233`       | `09` (Max)  |
| Vida P2   | `7E0272`       | `06` (Max)  |
| Vidas P2  | `7E0273`       | `09` (Max)  |
| Dinheiro  | `7E16DC`       | `99` (Low)  |
| Dinheiro  | `7E16DD`       | `99` (High) |
| Invencib. | `7E0237`       | `05` (On)   |
| Pulo Alt. | `7E021C`       | `BF`        |

## Game Genie Codes

- **Infinite Health (P1 & P2)**: `B987-CD6D`
- **Infinite Lives (P1)**: `B9C1-3467`
- **Infinite Money**: `C2E2-4D0A`
- **Invincibility**: `6DC4-3D64`
- **Mega-Jump**: `DDCD-C707`

## Notas de Pesquisa

- O jogo usa o processador Ricoh 5A22 (65C816).
- A memória RAM começa em `7E0000`.
- Os sprites costumam estar comprimidos ou em formatos 4BPP SNES.
