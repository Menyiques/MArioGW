sub fastcall emptyscreen()
asm
ld hl,data
ld de,16384
ld bc,6912
ldir
ret
data: 

defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $FF, $FF, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $01, $FF, $FF, $FF, $FF, $00, $00, $00, $00, $8A, $66, $01, $00, $00, $00, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $92, $69, $80, $00, $00, $00, $00, $00, $00, $01, $4F, $C3, $FE, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $80, $01, $00, $00, $00, $00, $00, $00, $00, $01, $FF, $FF, $FF, $80
defb $00, $00, $00, $00, $00, $00, $FF, $FF, $FF, $00, $00, $3D, $FF, $FF, $FF, $FF
defb $FF, $FF, $8F, $F1, $FF, $FF, $FF, $FF, $FF, $BC, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $1F, $FF, $FF, $FF, $FF
defb $FF, $FF, $9F, $A9, $FF, $FF, $FF, $FF, $FF, $FE, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $B9, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $7F, $FE, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $01, $00, $00, $00, $01, $00, $00, $00, $00, $DA, $88, $01, $1F, $9F, $86, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $91, $ED, $00, $00, $00, $00, $00, $00, $00, $01, $1F, $87, $FE, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $88, $09, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $90, $10, $11, $00, $00, $42, $00, $00, $00, $00
defb $00, $00, $9F, $F9, $00, $00, $00, $00, $00, $42, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9F, $49, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $91, $79, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $3F, $FC, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $01, $04, $00, $00, $09, $00, $00, $00, $00, $AA, $66, $01, $3F, $3F, $0E, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $C9, $00, $00, $00, $00, $00, $00, $00, $01, $3F, $0F, $FE, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $84, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $90, $10, $11, $00, $00, $99, $00, $18, $00, $18
defb $00, $18, $9F, $F9, $00, $18, $00, $18, $00, $99, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9E, $89, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $92, $F9, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $1F, $F8, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $01, $02, $07, $E0, $05, $00, $00, $00, $00, $AA, $11, $01, $7E, $7E, $1E, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $88, $1D, $00, $00, $00, $00, $00, $00, $00, $01, $7E, $1F, $FE, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $A4, $25, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $FF, $FF, $00, $00, $BD, $00, $24, $00, $24
defb $00, $24, $94, $09, $00, $24, $00, $24, $00, $BD, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9D, $09, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $95, $F9, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $0F, $F0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $01, $12, $08, $10, $25, $00, $00, $00, $00, $AA, $EE, $01, $7C, $FC, $3E, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $87, $F9, $00, $00, $00, $00, $00, $00, $00, $01, $7C, $3F, $FE, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $98, $19, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $01, $01, $00, $00, $BD, $00, $24, $00, $24
defb $00, $24, $9A, $09, $00, $24, $00, $24, $00, $BD, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9A, $09, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9A, $F9, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $0F, $F0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $01, $0C, $10, $0C, $19, $00, $00, $00, $00, $00, $00, $01, $79, $F8, $7E, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $85, $51, $00, $00, $00, $00, $00, $00, $00, $01, $78, $7F, $FE, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $80, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $01, $01, $00, $00, $99, $00, $18, $00, $18
defb $00, $18, $9D, $19, $00, $18, $00, $18, $00, $99, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $94, $19, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $95, $79, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $0F, $F0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $01, $00, $11, $88, $01, $00, $00, $00, $00, $00, $00, $01, $73, $F0, $FE, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $80, $01, $00, $00, $00, $00, $00, $00, $00, $01, $70, $FF, $FE, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $80, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $01, $01, $00, $00, $42, $00, $00, $00, $00
defb $00, $00, $9E, $A9, $00, $00, $00, $00, $00, $42, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $98, $29, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $98, $B9, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $0F, $F0, $00, $00, $00, $00, $00, $00, $00, $01, $FF, $FF, $FF, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $01, $FF, $92, $4D, $FF, $00, $00, $00, $00, $00, $00, $01, $67, $E1, $FE, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $80, $01, $00, $00, $00, $00, $00, $00, $00, $01, $00, $00, $00, $80
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $80, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $FF, $FF, $00, $00, $3D, $FF, $FF, $FF, $FF
defb $FF, $FF, $9F, $59, $FF, $FF, $FF, $FF, $FF, $BF, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $59, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $59, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $29, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $3D, $FF, $FF, $FF
defb $FF, $FF, $9F, $A9, $FF, $FF, $FF, $FF, $FF, $FF, $BC, $00, $FF, $FF, $FF, $FF
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $1F, $FF, $FF, $FF
defb $FF, $FF, $90, $B9, $FF, $FF, $FF, $FF, $FF, $FF, $FE, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $29, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9F, $A9, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $FF, $FF, $00, $00, $3D, $FF, $FF, $FF, $FF
defb $FF, $FF, $90, $B9, $FF, $FF, $FF, $FF, $FF, $BC, $00, $00, $60, $06, $00, $00
defb $FF, $FF, $FF, $FF, $FF, $FF, $91, $60, $06, $00, $00, $1F, $FF, $FF, $FF, $FF
defb $FF, $FF, $90, $29, $FF, $FF, $FF, $FF, $FF, $FE, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9F, $A9, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $19, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $42, $00, $00, $00
defb $00, $00, $9F, $49, $00, $00, $00, $00, $00, $00, $42, $00, $90, $10, $10, $10
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $91, $79, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $19, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9F, $49, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $90, $10, $11, $00, $00, $42, $00, $00, $00, $00
defb $00, $00, $91, $79, $00, $00, $00, $00, $00, $42, $00, $00, $60, $06, $00, $00
defb $10, $10, $10, $10, $10, $10, $11, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $19, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9F, $49, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $98, $09, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $99, $00, $18, $00
defb $18, $00, $9E, $89, $18, $00, $18, $00, $18, $00, $99, $00, $90, $10, $10, $10
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $92, $F9, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $98, $09, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $91, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9E, $89, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $90, $10, $11, $00, $00, $99, $00, $18, $00, $18
defb $00, $18, $92, $F9, $00, $18, $00, $18, $00, $99, $00, $00, $60, $06, $00, $00
defb $10, $10, $10, $10, $10, $10, $11, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $98, $09, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9E, $89, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $94, $09, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $7F, $FE, $00, $00, $00, $BD, $00, $24, $00
defb $24, $00, $9D, $09, $24, $00, $24, $00, $24, $00, $BD, $00, $FF, $FF, $FF, $FF
defb $00, $00, $00, $00, $00, $00, $FF, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $95, $F9, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $94, $09, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9D, $09, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $FF, $FF, $00, $00, $BD, $00, $24, $00, $24
defb $00, $24, $95, $F9, $00, $24, $00, $24, $00, $BD, $00, $00, $7F, $FE, $00, $00
defb $FF, $FF, $FF, $FF, $FF, $FF, $FF, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $94, $09, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9D, $09, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9A, $09, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $7F, $FE, $00, $00, $00, $BD, $00, $24, $00
defb $24, $00, $9A, $09, $24, $00, $24, $00, $24, $00, $BD, $00, $81, $01, $01, $00
defb $00, $00, $00, $00, $00, $00, $81, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9A, $F9, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9A, $09, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9A, $09, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $01, $01, $00, $00, $BD, $00, $24, $00, $24
defb $00, $24, $9A, $F9, $00, $24, $00, $24, $00, $BD, $00, $00, $7F, $FE, $00, $00
defb $01, $01, $01, $01, $01, $01, $01, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9A, $09, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9A, $09, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9D, $19, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $60, $06, $00, $00, $00, $99, $00, $18, $00
defb $18, $00, $94, $19, $18, $00, $18, $00, $18, $00, $99, $00, $81, $01, $01, $00
defb $00, $00, $00, $00, $00, $00, $81, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $95, $79, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9D, $19, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $94, $19, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $01, $01, $00, $00, $99, $00, $18, $00, $18
defb $00, $18, $95, $79, $00, $18, $00, $18, $00, $99, $00, $00, $60, $06, $00, $00
defb $01, $01, $01, $01, $01, $01, $01, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9D, $19, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $94, $19, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9E, $A9, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $60, $06, $00, $00, $00, $42, $00, $00, $00
defb $00, $00, $98, $29, $00, $00, $00, $00, $00, $00, $42, $00, $81, $01, $01, $00
defb $00, $00, $00, $00, $00, $00, $81, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $98, $B9, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9E, $A9, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $98, $29, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $81, $01, $01, $00, $00, $42, $00, $00, $00, $00
defb $00, $00, $98, $B9, $00, $00, $00, $00, $00, $42, $00, $00, $60, $06, $00, $00
defb $01, $01, $01, $01, $01, $01, $01, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9E, $A9, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $98, $29, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9F, $49, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $60, $06, $00, $00, $00, $3D, $FF, $FF, $FF
defb $FF, $FF, $90, $59, $FF, $FF, $FF, $FF, $FF, $FF, $BF, $00, $FF, $FF, $FF, $FF
defb $00, $00, $00, $00, $00, $00, $FF, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $59, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9F, $59, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $59, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $FF, $FF, $FF, $00, $00, $3D, $FF, $FF, $FF, $FF
defb $FF, $FF, $90, $59, $FF, $FF, $FF, $FF, $FF, $BF, $00, $00, $60, $06, $00, $00
defb $FF, $FF, $FF, $FF, $FF, $FF, $FF, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9F, $59, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $59, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $B9, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3D, $FF, $FF, $FF
defb $FF, $FF, $90, $29, $FF, $FF, $FF, $FF, $FF, $FF, $BC, $00, $FF, $FF, $FF, $FF
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1F, $FF, $FF, $FF
defb $FF, $FF, $9F, $A9, $FF, $FF, $FF, $FF, $FF, $FF, $FE, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $A9, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $29, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $00, $00, $3D, $FF, $FF, $FF, $FF
defb $FF, $FF, $9F, $A9, $FF, $FF, $FF, $FF, $FF, $BC, $00, $00, $00, $00, $3D, $FF
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1F, $FF, $FF, $FF, $FF
defb $FF, $FF, $90, $29, $FF, $FF, $FF, $FF, $FF, $FE, $00, $00, $00, $00, $00, $FF
defb $6D, $BE, $6D, $B6, $DB, $6F, $8F, $BB, $BB, $00, $00, $00, $AD, $FF, $A5, $FF
defb $FF, $FF, $FF, $FF, $FF, $FF, $A5, $FF, $B5, $FF, $FF, $FF, $FF, $FF, $FF, $FF
defb $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $91, $79, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $42, $00, $00, $00
defb $00, $00, $90, $19, $00, $00, $00, $00, $00, $00, $42, $00, $90, $10, $10, $10
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9F, $49, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $91, $59, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $19, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $10, $10, $10, $10, $10, $10, $10, $10, $11, $00, $00, $42, $00, $00, $00, $00
defb $00, $00, $9F, $49, $00, $00, $00, $00, $00, $42, $00, $00, $00, $00, $42, $00
defb $00, $00, $00, $06, $00, $00, $00, $09, $14, $00, $00, $00, $FF, $FF, $FF, $FF
defb $FF, $FF, $90, $59, $FF, $FF, $FF, $FF, $FF, $00, $00, $00, $00, $00, $00, $00
defb $6D, $B0, $6D, $F6, $DB, $6C, $01, $8A, $88, $00, $00, $00, $A5, $D5, $A5, $D5
defb $55, $55, $7F, $FD, $55, $55, $A5, $D5, $A5, $10, $10, $10, $10, $10, $10, $11
defb $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $92, $F9, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $99, $00, $18, $00
defb $18, $00, $98, $09, $18, $00, $18, $00, $18, $00, $99, $00, $90, $10, $10, $10
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9E, $89, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $92, $B9, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $98, $09, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $10, $10, $10, $10, $10, $10, $10, $10, $11, $00, $00, $99, $00, $18, $00, $18
defb $00, $18, $9E, $89, $00, $18, $00, $18, $00, $99, $00, $00, $00, $00, $99, $00
defb $6D, $80, $00, $06, $00, $00, $00, $12, $A6, $00, $00, $00, $80, $00, $00, $00
defb $00, $00, $90, $B9, $C0, $00, $00, $00, $01, $00, $00, $00, $00, $00, $00, $00
defb $6D, $BF, $6C, $F6, $FB, $EF, $DF, $BA, $BB, $00, $00, $00, $A5, $AA, $A5, $AA
defb $AA, $AA, $AF, $EA, $AA, $AA, $A5, $AA, $A5, $10, $10, $10, $10, $10, $10, $11
defb $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $95, $F9, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $BD, $00, $24, $00
defb $24, $00, $94, $09, $24, $00, $24, $00, $24, $00, $BD, $00, $FF, $FF, $FF, $FE
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9D, $09, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $95, $79, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $94, $09, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $00, $00, $BD, $00, $24, $00, $24
defb $00, $24, $9D, $09, $00, $24, $00, $24, $00, $BD, $00, $00, $00, $00, $BD, $00
defb $7F, $80, $00, $00, $00, $00, $00, $0A, $A4, $00, $00, $00, $BF, $FF, $FF, $FF
defb $FF, $FF, $91, $79, $FF, $FF, $FF, $FF, $FD, $00, $00, $00, $00, $00, $00, $00
defb $6D, $9F, $6C, $36, $79, $E7, $9F, $22, $A0, $00, $00, $00, $A5, $D5, $AD, $D5
defb $55, $55, $57, $F5, $55, $55, $B5, $D5, $A5, $FF, $FF, $FF, $FF, $FF, $FF, $FF
defb $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9A, $F9, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $BD, $00, $24, $00
defb $24, $00, $9A, $09, $24, $00, $24, $00, $24, $00, $BD, $00, $81, $01, $01, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9A, $09, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9A, $F9, $00, $00, $00, $00, $00, $00, $00, $00, $7F, $FE, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9A, $09, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $BD, $00, $24, $00, $24
defb $00, $24, $9A, $09, $00, $24, $00, $24, $00, $BD, $00, $00, $00, $00, $BD, $00
defb $7F, $9E, $79, $B6, $7B, $67, $8F, $8A, $B4, $00, $00, $00, $A0, $00, $00, $00
defb $00, $00, $8F, $F1, $C0, $00, $00, $00, $05, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $01, $F0, $18, $00, $00, $3B, $BB, $00, $00, $00, $B5, $AA, $B5, $AA
defb $AA, $AA, $AF, $FA, $AA, $AA, $AD, $AA, $AD, $01, $01, $01, $01, $01, $01, $01
defb $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $95, $79, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $99, $00, $18, $00
defb $18, $00, $9D, $19, $18, $00, $18, $00, $18, $00, $99, $00, $81, $01, $01, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $94, $19, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $95, $79, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9D, $19, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $99, $00, $18, $00, $18
defb $00, $18, $94, $09, $00, $18, $00, $18, $00, $99, $00, $00, $00, $00, $99, $00
defb $6D, $BF, $7D, $B6, $FB, $6F, $DF, $91, $22, $00, $00, $00, $A7, $FF, $E7, $FF
defb $FF, $FF, $80, $01, $FF, $FF, $E7, $FF, $E5, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $01, $E0, $18, $00, $00, $00, $00, $00, $00, $00, $AD, $D5, $A5, $D5
defb $55, $55, $5F, $FD, $55, $55, $A5, $D5, $B5, $01, $01, $01, $01, $01, $01, $01
defb $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $98, $B9, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $42, $00, $00, $00
defb $00, $00, $9E, $A9, $00, $00, $00, $00, $00, $00, $42, $00, $81, $01, $01, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $98, $29, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $98, $B9, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9E, $A9, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $42, $00, $00, $00, $00
defb $00, $00, $98, $09, $00, $00, $00, $00, $00, $42, $00, $00, $00, $00, $42, $00
defb $6D, $B3, $6D, $B6, $DB, $6C, $D8, $00, $00, $00, $00, $00, $A4, $00, $24, $00
defb $00, $00, $80, $01, $C0, $00, $24, $00, $25, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $A5, $AA, $A5, $AA
defb $AA, $AA, $BF, $FE, $AA, $AA, $A5, $AA, $A5, $01, $01, $01, $01, $01, $01, $01
defb $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $59, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3D, $FF, $FF, $FF
defb $FF, $FF, $9F, $59, $FF, $FF, $FF, $FF, $FF, $FF, $BF, $00, $FF, $FF, $FF, $FF
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $59, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $90, $59, $00, $00, $00, $00, $00, $00, $00, $00, $60, $06, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $9F, $59, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
defb $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $00, $00, $3D, $FF, $FF, $FF, $FF
defb $FF, $FF, $90, $19, $FF, $FF, $FF, $FF, $FF, $BF, $00, $00, $00, $00, $3D, $FF
defb $6D, $BF, $6D, $B6, $DB, $6F, $DF, $00, $00, $00, $00, $00, $B5, $FF, $A5, $FF
defb $FF, $FF, $C0, $03, $FF, $FF, $A5, $FF, $AD, $00, $00, $00, $00, $00, $00, $00
defb $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $A5, $D5, $A5, $D5
defb $55, $55, $7F, $FF, $55, $55, $A5, $D5, $A5, $FF, $FF, $FF, $FF, $FF, $FF, $FF

defb $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $78, $38, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $10, $10, $10, $10, $78, $78, $78, $78, $78, $78, $78, $7D, $7D, $7D, $78
defb $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $10, $10, $38, $38, $78, $78, $78, $78, $78, $78, $7D, $7D, $7D, $78
defb $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $10, $10, $38, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $78, $78, $78, $78, $18, $18, $18, $78, $78, $70, $70, $70, $70, $70
defb $70, $70, $50, $10, $70, $70, $70, $70, $70, $70, $78, $78, $78, $78, $78, $78
defb $78, $78, $78, $78, $78, $78, $18, $38, $38, $78, $78, $78, $38, $38, $38, $38
defb $38, $38, $50, $50, $38, $38, $38, $38, $38, $38, $78, $78, $78, $78, $78, $78
defb $78, $78, $78, $78, $78, $78, $18, $38, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $50, $50, $38, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $78, $78, $78, $78, $18, $38, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $50, $50, $38, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $78, $78, $78, $78, $18, $38, $78, $78, $78, $78, $70, $70, $70, $70
defb $70, $70, $50, $50, $70, $70, $70, $70, $70, $70, $70, $78, $18, $18, $18, $18
defb $78, $78, $78, $78, $78, $78, $18, $38, $78, $78, $78, $78, $78, $38, $38, $38
defb $38, $38, $50, $50, $38, $38, $38, $38, $38, $38, $38, $38, $78, $38, $38, $38
defb $78, $78, $78, $78, $78, $78, $18, $38, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $50, $50, $38, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $78, $78, $78, $78, $18, $38, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $50, $50, $38, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $78, $78, $78, $78, $18, $58, $18, $78, $78, $70, $70, $70, $70, $70
defb $70, $70, $50, $50, $70, $70, $70, $70, $70, $70, $78, $78, $78, $78, $78, $78
defb $18, $18, $18, $18, $18, $18, $18, $38, $38, $78, $78, $78, $38, $38, $38, $38
defb $38, $38, $50, $50, $38, $38, $38, $38, $38, $38, $38, $78, $78, $78, $78, $78
defb $38, $38, $38, $38, $38, $38, $38, $38, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $50, $50, $38, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $50, $50, $38, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $70, $70, $70, $70
defb $70, $70, $50, $50, $70, $70, $70, $70, $70, $70, $70, $78, $18, $18, $18, $18
defb $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $38, $38, $38
defb $38, $38, $50, $50, $38, $38, $38, $38, $38, $38, $38, $38, $78, $38, $38, $38
defb $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $50, $50, $38, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $78, $78, $50, $50, $38, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78, $78
defb $18, $18, $18, $18, $18, $18, $18, $18, $18, $78, $78, $70, $70, $70, $70, $70
defb $70, $70, $50, $50, $70, $70, $70, $70, $70, $70, $78, $78, $78, $78, $70, $70
defb $4E, $4E, $4E, $4E, $4E, $4E, $4E, $4E, $4E, $78, $78, $78, $10, $10, $10, $10
defb $10, $10, $50, $50, $10, $10, $10, $10, $10, $38, $78, $78, $78, $78, $78, $38
defb $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $78, $78, $78, $50, $38, $50, $38
defb $38, $38, $38, $38, $38, $38, $50, $38, $50, $18, $18, $18, $18, $18, $18, $18
end asm
end sub