;================================================================================
; Joe & Mac 2 - Modding Template
; Assembler: Asar (https://github.com/RPVee/asar)
;================================================================================

; Exemplo de Patch: Alterar vida inicial
; Endereço ROM para a rotina de inicialização de vida (fictício, precisa ser pesquisado)
; org $80AABB
; db $0A ; Define 10 corações em vez de 6

; Exemplo de Hijack:
; Se quisermos adicionar um novo comportamento quando o jogador pula
; org $80XXXX ; Endereço da rotina de pulo
; jsl meu_novo_pulo
; nop

; org $80FF00 ; Espaço livre na ROM (Free Space)
; meu_novo_pulo:
;   ; Código assembly aqui
;   rtl
