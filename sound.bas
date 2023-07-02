sub fastcall sound(a as ubyte)
asm
playBasic:
	cp 0
	jr z, sound0
	dec a
	jr z, sound1
	dec a
	jr z, sound2
	dec a
	jr z, sound3
sound4:
	ld hl,Sample4Data
	jr play
sound3:
	ld hl,Sample3Data
	jr play
sound2:
	ld hl,Sample2Data
	jr play
sound1:
	ld hl,Sample1Data
	jr play
sound0:
	ld hl,Sample0Data

play:
	di
	push ix
	push iy


	push hl
	pop ix				;put it into ix

	ld a,(23624)		;get border color from BASIC vars to keep it unchanged
	rra
	rra
	rra
	and 7
	ld (sfxRoutineToneBorder  +1),a
	ld (sfxRoutineNoiseBorder +1),a
	ld (sfxRoutineSampleBorder+1),a


readData:
	ld a,(ix+0)			;read block type
	ld c,(ix+1)			;read duration 1
	ld b,(ix+2)
	ld e,(ix+3)			;read duration 2
	ld d,(ix+4)
	push de
	pop iy

	dec a
	jr z,sfxRoutineTone
	dec a
	jr z,sfxRoutineNoise
	dec a
	jr z,sfxRoutineSample
	pop iy
	pop ix
	ei
	ret

	

;play sample

sfxRoutineSample:
	ex de,hl
sfxRS0:
	ld e,8				;7
	ld d,(hl)			;7
	inc hl				;6
sfxRS1:
	ld a,(ix+5)			;19
sfxRS2:
	dec a				;4
	jr nz,sfxRS2		;7/12
	rl d				;8
	sbc a,a				;4
	and 16				;7
	and 16				;7	dummy
sfxRoutineSampleBorder:
	or 0				;7
	out (254),a			;11
	dec e				;4
	jp nz,sfxRS1		;10=88t
	dec bc				;6
	ld a,b				;4
	or c				;4
	jp nz,sfxRS0		;10=132t

	ld c,6
	
nextData:
	add ix,bc		;skip to the next block
	jr readData



;generate tone with many parameters

sfxRoutineTone:
	ld e,(ix+5)			;freq
	ld d,(ix+6)
	ld a,(ix+9)			;duty
	ld (sfxRoutineToneDuty+1),a
	ld hl,0

sfxRT0:
	push bc
	push iy
	pop bc
sfxRT1:
	add hl,de			;11
	ld a,h				;4
sfxRoutineToneDuty:
	cp 0				;7
	sbc a,a				;4
	and 16				;7
sfxRoutineToneBorder:
	or 0				;7
	out (254),a			;11
	ld a,(0)			;13	dummy
	dec bc				;6
	ld a,b				;4
	or c				;4
	jp nz,sfxRT1		;10=88t

	ld a,(sfxRoutineToneDuty+1)	 ;duty change
	add a,(ix+10)
	ld (sfxRoutineToneDuty+1),a

	ld c,(ix+7)			;slide
	ld b,(ix+8)
	ex de,hl
	add hl,bc
	ex de,hl

	pop bc
	dec bc
	ld a,b
	or c
	jr nz,sfxRT0

	ld c,11
	jr nextData



;generate noise with two parameters

sfxRoutineNoise:
	ld e,(ix+5)			;pitch

	ld d,1
	ld h,d
	ld l,d
sfxRN0:
	push bc
	push iy
	pop bc
sfxRN1:
	ld a,(hl)			;7
	and 16				;7
sfxRoutineNoiseBorder:
	or 0				;7
	out (254),a			;11
	dec d				;4
	jp z,sfxRN2			;10
	nop					;4	dummy
	jp sfxRN3			;10	dummy
sfxRN2:
	ld d,e				;4
	inc hl				;6
	ld a,h				;4
	and 31				;7
	ld h,a				;4
	ld a,(0)			;13 dummy
sfxRN3:
	nop					;4	dummy
	dec bc				;6
	ld a,b				;4
	or c				;4
	jp nz,sfxRN1		;10=88 or 112t

	ld a,e
	add a,(ix+6)		;slide
	ld e,a

	pop bc
	dec bc
	ld a,b
	or c
	jr nz,sfxRN0

	ld c,7
	jr nextData


sfxData:


Sample0Data:
	defb 3 ;sample
	defw 434
	defw Sample0Data+7
	defb 1
	defb 0
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,240,112,120,60,60,30,15,15,15,143,255,255,255,255
	defb 255,255,255,255,254,60,30,30,15,15,135,131,195,193,255,255
	defb 255,255,255,255,255,255,255,255,15,135,135,195,195,225,224,240
	defb 248,255,255,255,255,255,255,255,255,255,207,131,195,193,224,248
	defb 252,63,127,191,255,255,255,255,255,255,255,159,255,225,240,240
	defb 120,120,62,30,31,31,31,255,255,255,255,255,255,255,255,254
	defb 252,124,60,30,30,15,7,135,195,207,255,255,255,255,255,255
	defb 255,255,255,31,15,7,135,131,195,225,225,241,255,255,255,255
	defb 255,255,255,255,255,231,195,195,225,225,224,240,120,120,124,126
	defb 63,255,255,255,255,255,255,255,255,255,248,248,120,60,60,30
	defb 30,15,15,135,255,255,255,255,255,255,255,255,255,188,30,30
	defb 15,15,135,135,195,225,239,255,255,255,255,255,255,255,255,255
	defb 15,7,135,131,195,225,225,240,248,127,255,255,255,255,255,255
	defb 255,255,251,195,193,224,240,240,120,124,124,62,255,255,255,255
	defb 255,255,255,255,255,240,240,120,56,60,28,30,31,15,15,255
	defb 255,255,255,255,255,255,255,255,252,60,62,31,31,159,143,199
	defb 199,255,255,255,255,255,255,255,255,255,255,31,15,135,135,195
	defb 195,225,241,248,255,255,255,255,255,255,255,255,255,255,199,227
	defb 227,241,240,240,248,120,60,62,126,63,31,143,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255

Sample1Data:
	defb 3 ;sample
	defw 480
	defw Sample1Data+7
	defb 1
	defb 0
	defb 255,255,255,255,255,255,255,255,255,255,255,255,248,31,129,248
	defb 63,255,255,255,255,240,127,7,224,127,255,255,255,255,192,252
	defb 31,193,255,255,255,255,255,3,240,63,7,255,255,255,255,254
	defb 15,224,254,15,255,255,255,255,248,31,131,248,63,255,255,255
	defb 255,240,127,7,224,255,255,255,255,255,193,252,31,193,255,255
	defb 255,255,255,131,240,127,7,255,255,255,255,255,143,224,254,31
	defb 255,255,255,255,255,255,131,248,63,143,255,255,255,255,254,15
	defb 224,254,15,255,255,255,255,252,31,193,252,63,255,255,255,255
	defb 252,127,7,240,127,255,255,255,255,255,252,31,193,252,127,255
	defb 255,255,255,248,63,135,240,127,255,255,255,255,224,254,15,224
	defb 255,255,255,255,255,227,248,63,131,255,255,255,255,255,255,240
	defb 254,15,225,255,255,255,255,255,193,252,31,193,255,255,255,255
	defb 255,7,240,127,7,255,255,255,255,255,15,225,252,31,255,255
	defb 255,255,255,255,131,248,63,143,255,255,255,255,254,15,224,254
	defb 15,255,255,255,255,252,31,131,248,63,255,255,255,255,252,127
	defb 7,240,255,255,255,255,255,255,252,31,193,252,127,255,255,255
	defb 255,240,63,7,240,127,255,255,255,255,224,254,15,225,255,255
	defb 255,255,255,227,248,63,131,255,255,255,255,255,255,224,254,15
	defb 227,255,255,255,255,255,193,252,63,131,255,255,255,255,255,7
	defb 240,127,7,255,255,255,255,255,31,193,252,31,255,255,255,255
	defb 255,255,131,240,127,15,255,255,255,255,254,15,224,254,15,255
	defb 255,255,255,248,63,131,248,63,255,255,255,255,248,127,7,224
	defb 255,255,255,255,255,255,252,31,193,252,127,255,255,255,255,240
	defb 127,7,240,127,255,255,255,255,224,254,31,193,255,255,255,255
	defb 255,227,248,63,135,255,255,255,255,255,255,224,254,15,227,255
	defb 255,255,255,255,193,248,63,131,255,255,255,255,255,7,240,127
	defb 15,255,255,255,255,255,31,193,252,31,255,255,255,255,255,255
	defb 7,240,127,31,255,255,255,255,254,15,224,252,31,255,255,255
	defb 255,248,63,131,248,63,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255

Sample2Data:
	defb 3 ;sample
	defw 90
	defw Sample2Data+7
	defb 1
	defb 0
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,225,255,15,255,252,63,225,255,255,135,254,31
	defb 255,240,63,3,240,127,7,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255

Sample3Data:
	defb 3 ;sample
	defw 198
	defw Sample3Data+7
	defb 1
	defb 0
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,192,252,15,192,252,31,129,248,31,131,248,63,131,240
	defb 127,7,240,127,15,224,254,15,225,254,31,193,252,31,195,252
	defb 63,131,248,127,135,248,127,135,240,255,15,240,254,31,225,254
	defb 31,225,252,63,195,252,63,195,248,127,135,248,127,143,240,255
	defb 15,241,255,31,225,254,31,227,254,63,195,252,127,199,252,127
	defb 135,248,255,143,240,255,15,241,255,31,225,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255

Sample4Data:
	defb 3 ;sample
	defw 192
	defw Sample4Data+7
	defb 1
	defb 0
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,248,127,135,255,255,255,225,255,255,240,254,31,255,255,255
	defb 135,255,255,195,252,63,255,255,254,31,255,255,15,240,255,255
	defb 255,252,63,255,254,31,227,255,255,255,240,255,255,248,127,135
	defb 255,255,255,227,255,255,241,254,31,255,255,255,135,255,255,195
	defb 252,127,255,255,255,31,255,255,15,240,255,255,255,252,127,255
	defb 254,31,227,255,255,255,240,255,255,248,127,143,255,255,255,227
	defb 255,255,241,254,31,255,255,255,135,255,255,195,252,127,255,255
	defb 254,31,255,255,15,240,255,255,255,252,127,255,254,63,227,255
	defb 255,255,240,255,255,248,127,143,255,255,255,227,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	defb 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255

end asm
end sub

sub fastcall song()
asm
START:
                          LD    HL,MUSICDATA         ;  <- Pointer to Music Data. Change
                                                     ;     this to play a different song
                          LD   A,(HL)                         ; Get the loop start pointer
                          LD   (PATTERN_LOOP_BEGIN),A
                          INC  HL
                          LD   A,(HL)                         ; Get the song end pointer
                          LD   (PATTERN_LOOP_END),A
                          INC  HL
                          LD   (PATTERNDATA1),HL
                          LD   (PATTERNDATA2),HL
                          LD   A,254
                          LD   (PATTERN_PTR),A                ; Set the pattern pointer to zero
                          DI
                          CALL  NEXT_PATTERN
NEXTNOTE:
                          CALL  PLAYNOTE
                          XOR   A
                          IN    A,($FE)
                          AND   $1F
                          CP    $1F
                          JR    Z,NEXTNOTE                    ; Play next note if no key pressed

                          EI
                          RET                                 ; Return from playing tune

PATTERN_PTR:              DEFB 0
NOTE_PTR:                 DEFB 0
NEXT_PATTERN:
                          LD   A,(PATTERN_PTR)
                          INC  A
                          INC  A
                          DEFB $FE                           ; CP n
PATTERN_LOOP_END:         DEFB 0
                          JR   NZ,NO_PATTERN_LOOP
                          DEFB $3E                           ; LD A,n
PATTERN_LOOP_BEGIN:       DEFB 0
NO_PATTERN_LOOP:          LD   (PATTERN_PTR),A
			                    DEFB $21                            ; LD HL,nn
PATTERNDATA1:             DEFW $0000
                          LD   E,A                            ; (this is the first byte of the pattern)
                          LD   D,0                            ; and store it at TEMPO
                          ADD  HL,DE
                          LD   E,(HL)
                          INC  HL
                          LD   D,(HL)
                          LD   A,(DE)                         ; Pattern Tempo -> A
	                	      LD   (TEMPO),A                      ; Store it at TEMPO

                          LD   A,1
                          LD   (NOTE_PTR),A

PLAYNOTE: 
			                    DEFB $21                            ; LD HL,nn
PATTERNDATA2:             DEFW $0000
                          LD   A,(PATTERN_PTR)
                          LD   E,A
                          LD   D,0
                          ADD  HL,DE
                          LD   E,(HL)
                          INC  HL
                          LD   D,(HL)                         ; Now DE = Start of Pattern data
                          LD   A,(NOTE_PTR)
                          LD   L,A
                          LD   H,0
                          ADD  HL,DE                          ; Now HL = address of note data
                          LD   D,(HL)
                          LD   E,1
                          LD   A,D
                          AND  A                              ; Optimised CP 0
                          JR   Z,NEXT_PATTERN

                          PUSH DE
                          INC  HL
                          LD   D,(HL)
                          LD   E,1

                          LD   A,(NOTE_PTR)
                          INC  A
                          INC  A
                          LD   (NOTE_PTR),A                   ; Increment the note pointer by 2 (one note per chan)

                          POP  HL                             ; Now CH1 freq is in HL, and CH2 freq is in DE

                          LD   A,H
                          DEC  A
                          JR   NZ,OUTPUT_NOTE

                          LD   A,D                            ; executed only if Channel 2 contains a rest
                          DEC  A                              ; if DE (CH1 note) is also a rest then..
                          JR   Z,PLAY_SILENCE                 ; Play silence

OUTPUT_NOTE:              LD   A,(TEMPO)
                          LD   C,A
                          LD   B,0
                          LD   A,0
                          EX   AF,AF'
                          LD   A,0
                          LD   IXH,D
                          LD   D,$10
EAE5:                     NOP
                          NOP
EAE7:                     EX   AF,AF'
                          DEC  E
                          OUT  ($FE),A
                          JR   NZ,EB04

                          LD   E,IXH
                          XOR  D
                          EX   AF,AF'
                          DEC  L
                          JP   NZ,EB0B

EAF5:                     OUT  ($FE),A
                          LD   L,H
                          XOR  D
                          DJNZ EAE5

                          INC  C
                          JP   NZ,EAE7

                          RET

EB04:
                          JR   Z,EB04
                          EX   AF,AF'
                          DEC  L
                          JP   Z,EAF5
EB0B:
                          OUT  ($FE),A
                          NOP
                          NOP
                          DJNZ EAE5
                          INC  C
                          JP   NZ,EAE7
                          RET

PLAY_SILENCE:
                          LD   A,(TEMPO)
                          CPL
                          LD   C,A
SILENCE_LOOP2:            PUSH BC
                          PUSH AF
                          LD   B,0
SILENCE_LOOP:             PUSH HL
                          LD   HL,0000
                          SRA  (HL)
                          SRA  (HL)
                          SRA  (HL)
                          NOP
                          POP  HL
                          DJNZ SILENCE_LOOP
                          DEC  C
                          JP   NZ,SILENCE_LOOP
                          POP  AF
                          POP  BC
                          RET


; *** DATA ***

TEMPO:                    DEFB 250

MUSICDATA:
                    DEFB 0   ; Loop start point * 2
                    DEFB 24   ; Song Length * 2
PATTERNDATA:        DEFW      PAT0
                    DEFW      PAT1
                    DEFW      PAT0
                    DEFW      PAT1
                    DEFW      PAT2
                    DEFW      PAT3
                    DEFW      PAT7
                    DEFW      PAT8
                    DEFW      PAT4
                    DEFW      PAT5
                    DEFW      PAT4
                    DEFW      PAT5

; *** Pattern data consists of pairs of frequency values CH1,CH2 with a single $0 to
; *** Mark the end of the pattern, and $01 for a rest
PAT0:
         DEFB 250  ; Pattern tempo
             DEFB 151,1
             DEFB 151,1
             DEFB 151,1
             DEFB 151,1
             DEFB 151,1
             DEFB 151,1
             DEFB 151,1
             DEFB 1,1
             DEFB 61,40
             DEFB 51,40
             DEFB 61,40
             DEFB 51,40
             DEFB 1,38
             DEFB 1,38
             DEFB 1,38
             DEFB 1,38
             DEFB 61,34
             DEFB 51,34
             DEFB 61,34
             DEFB 51,34
             DEFB 1,30
             DEFB 1,30
             DEFB 1,30
             DEFB 1,30
             DEFB 151,34
             DEFB 151,34
             DEFB 151,34
             DEFB 151,34
             DEFB 151,34
             DEFB 151,34
             DEFB 151,34
             DEFB 1,34
             DEFB 61,34
             DEFB 51,34
             DEFB 61,34
             DEFB 51,34
             DEFB 1,34
             DEFB 1,34
             DEFB 1,34
             DEFB 1,34
             DEFB 61,34
             DEFB 51,34
             DEFB 61,34
             DEFB 51,34
             DEFB 1,34
             DEFB 1,34
             DEFB 1,34
             DEFB 1,34
             DEFB 151,1
             DEFB 151,1
             DEFB 151,1
             DEFB 151,1
             DEFB 151,1
             DEFB 151,1
             DEFB 151,1
             DEFB 1,1
             DEFB 61,40
             DEFB 51,40
             DEFB 61,40
             DEFB 51,40
             DEFB 1,38
             DEFB 1,38
             DEFB 1,38
             DEFB 1,38
             DEFB 61,34
             DEFB 51,34
             DEFB 61,34
             DEFB 51,34
             DEFB 1,30
             DEFB 1,30
             DEFB 1,30
             DEFB 1,30
             DEFB 151,34
             DEFB 151,34
             DEFB 151,34
             DEFB 151,34
             DEFB 151,34
             DEFB 151,34
             DEFB 151,34
             DEFB 1,34
             DEFB 61,38
             DEFB 51,38
             DEFB 61,38
             DEFB 51,38
             DEFB 1,38
             DEFB 1,38
             DEFB 1,38
             DEFB 1,38
             DEFB 61,38
             DEFB 51,38
             DEFB 61,38
             DEFB 51,38
             DEFB 1,40
             DEFB 1,40
             DEFB 1,40
             DEFB 1,40
         DEFB $0
PAT1:
         DEFB 250  ; Pattern tempo
             DEFB 192,43
             DEFB 192,43
             DEFB 192,43
             DEFB 192,43
             DEFB 192,43
             DEFB 192,43
             DEFB 192,43
             DEFB 1,43
             DEFB 76,43
             DEFB 64,43
             DEFB 76,43
             DEFB 64,43
             DEFB 1,43
             DEFB 1,43
             DEFB 1,43
             DEFB 1,43
             DEFB 76,43
             DEFB 64,43
             DEFB 76,43
             DEFB 64,43
             DEFB 1,43
             DEFB 1,43
             DEFB 1,43
             DEFB 1,43
             DEFB 192,48
             DEFB 192,48
             DEFB 192,48
             DEFB 192,48
             DEFB 192,48
             DEFB 192,48
             DEFB 192,48
             DEFB 1,48
             DEFB 76,48
             DEFB 64,48
             DEFB 76,48
             DEFB 64,48
             DEFB 1,48
             DEFB 1,48
             DEFB 1,48
             DEFB 1,48
             DEFB 76,48
             DEFB 64,48
             DEFB 76,48
             DEFB 64,48
             DEFB 1,48
             DEFB 1,48
             DEFB 1,48
             DEFB 1,48
             DEFB 192,51
             DEFB 192,51
             DEFB 192,51
             DEFB 192,51
             DEFB 192,51
             DEFB 192,51
             DEFB 192,51
             DEFB 1,51
             DEFB 76,51
             DEFB 64,51
             DEFB 76,51
             DEFB 64,51
             DEFB 1,51
             DEFB 1,51
             DEFB 1,51
             DEFB 1,51
             DEFB 76,51
             DEFB 64,51
             DEFB 76,51
             DEFB 64,51
             DEFB 1,51
             DEFB 1,51
             DEFB 1,51
             DEFB 1,51
             DEFB 192,48
             DEFB 192,48
             DEFB 192,48
             DEFB 192,48
             DEFB 192,48
             DEFB 192,48
             DEFB 192,48
             DEFB 1,48
             DEFB 76,48
             DEFB 64,48
             DEFB 76,48
             DEFB 64,48
             DEFB 1,48
             DEFB 1,48
             DEFB 1,48
             DEFB 1,48
             DEFB 76,48
             DEFB 64,48
             DEFB 76,48
             DEFB 64,48
             DEFB 1,48
             DEFB 1,48
             DEFB 1,48
             DEFB 1,48
         DEFB $0
PAT2:
         DEFB 250  ; Pattern tempo
             DEFB 151,40
             DEFB 151,20
             DEFB 151,40
             DEFB 151,20
             DEFB 151,40
             DEFB 151,20
             DEFB 151,40
             DEFB 1,20
             DEFB 61,40
             DEFB 51,20
             DEFB 61,40
             DEFB 51,20
             DEFB 1,40
             DEFB 1,20
             DEFB 1,40
             DEFB 1,20
             DEFB 61,40
             DEFB 51,20
             DEFB 61,40
             DEFB 51,20
             DEFB 1,40
             DEFB 1,20
             DEFB 1,40
             DEFB 1,20
             DEFB 151,38
             DEFB 151,19
             DEFB 151,38
             DEFB 151,19
             DEFB 151,38
             DEFB 151,19
             DEFB 151,38
             DEFB 1,19
             DEFB 61,38
             DEFB 51,19
             DEFB 61,38
             DEFB 51,19
             DEFB 1,38
             DEFB 1,19
             DEFB 1,38
             DEFB 1,19
             DEFB 61,38
             DEFB 51,19
             DEFB 61,38
             DEFB 51,19
             DEFB 1,38
             DEFB 1,19
             DEFB 1,38
             DEFB 1,19
             DEFB 151,34
             DEFB 151,17
             DEFB 151,34
             DEFB 151,17
             DEFB 151,34
             DEFB 151,17
             DEFB 151,34
             DEFB 1,17
             DEFB 61,34
             DEFB 51,17
             DEFB 61,34
             DEFB 51,17
             DEFB 1,34
             DEFB 1,17
             DEFB 1,34
             DEFB 1,17
             DEFB 61,34
             DEFB 51,17
             DEFB 61,34
             DEFB 51,17
             DEFB 1,34
             DEFB 1,17
             DEFB 1,34
             DEFB 1,17
             DEFB 151,30
             DEFB 151,15
             DEFB 151,30
             DEFB 151,15
             DEFB 151,30
             DEFB 151,15
             DEFB 151,30
             DEFB 1,15
             DEFB 61,30
             DEFB 51,15
             DEFB 61,30
             DEFB 51,15
             DEFB 1,30
             DEFB 1,15
             DEFB 1,30
             DEFB 1,15
             DEFB 61,30
             DEFB 51,15
             DEFB 61,30
             DEFB 51,15
             DEFB 1,30
             DEFB 1,15
             DEFB 1,30
             DEFB 1,15
         DEFB $0
PAT3:
         DEFB 250  ; Pattern tempo
             DEFB 192,51
             DEFB 192,25
             DEFB 192,51
             DEFB 192,25
             DEFB 192,51
             DEFB 192,25
             DEFB 192,51
             DEFB 1,25
             DEFB 76,51
             DEFB 64,25
             DEFB 76,51
             DEFB 64,25
             DEFB 1,51
             DEFB 1,25
             DEFB 1,51
             DEFB 1,25
             DEFB 76,51
             DEFB 64,25
             DEFB 76,51
             DEFB 64,25
             DEFB 1,51
             DEFB 1,25
             DEFB 1,51
             DEFB 1,25
             DEFB 192,48
             DEFB 192,24
             DEFB 192,48
             DEFB 192,24
             DEFB 192,48
             DEFB 192,24
             DEFB 192,48
             DEFB 1,24
             DEFB 76,48
             DEFB 64,24
             DEFB 76,48
             DEFB 64,24
             DEFB 1,48
             DEFB 1,24
             DEFB 1,48
             DEFB 1,24
             DEFB 76,48
             DEFB 64,24
             DEFB 76,48
             DEFB 64,24
             DEFB 1,48
             DEFB 1,24
             DEFB 1,48
             DEFB 1,24
             DEFB 192,43
             DEFB 192,21
             DEFB 192,43
             DEFB 192,21
             DEFB 192,43
             DEFB 192,21
             DEFB 192,43
             DEFB 1,21
             DEFB 76,43
             DEFB 64,21
             DEFB 76,43
             DEFB 64,21
             DEFB 1,43
             DEFB 1,21
             DEFB 1,43
             DEFB 1,21
             DEFB 76,43
             DEFB 64,21
             DEFB 76,43
             DEFB 64,21
             DEFB 1,43
             DEFB 1,21
             DEFB 1,43
             DEFB 1,21
             DEFB 192,38
             DEFB 192,19
             DEFB 192,38
             DEFB 192,19
             DEFB 192,38
             DEFB 192,19
             DEFB 192,38
             DEFB 1,19
             DEFB 76,38
             DEFB 64,19
             DEFB 76,38
             DEFB 64,19
             DEFB 1,38
             DEFB 1,19
             DEFB 1,38
             DEFB 1,19
             DEFB 76,38
             DEFB 64,19
             DEFB 76,38
             DEFB 64,19
             DEFB 1,38
             DEFB 1,19
             DEFB 1,38
             DEFB 1,20
         DEFB $0
PAT4:
         DEFB 250  ; Pattern tempo
             DEFB 151,20
             DEFB 151,20
             DEFB 151,20
             DEFB 151,1
             DEFB 151,19
             DEFB 151,1
             DEFB 151,19
             DEFB 1,1
             DEFB 121,20
             DEFB 102,1
             DEFB 121,20
             DEFB 102,1
             DEFB 1,19
             DEFB 1,1
             DEFB 1,19
             DEFB 1,1
             DEFB 121,20
             DEFB 102,1
             DEFB 121,20
             DEFB 102,1
             DEFB 1,19
             DEFB 1,1
             DEFB 1,19
             DEFB 1,1
             DEFB 151,23
             DEFB 151,23
             DEFB 151,23
             DEFB 151,1
             DEFB 151,19
             DEFB 151,1
             DEFB 151,19
             DEFB 1,1
             DEFB 121,23
             DEFB 102,1
             DEFB 121,23
             DEFB 102,1
             DEFB 1,19
             DEFB 1,1
             DEFB 1,19
             DEFB 1,1
             DEFB 121,23
             DEFB 102,1
             DEFB 121,23
             DEFB 102,1
             DEFB 1,19
             DEFB 1,1
             DEFB 1,19
             DEFB 1,1
             DEFB 151,25
             DEFB 151,25
             DEFB 151,25
             DEFB 151,1
             DEFB 151,19
             DEFB 151,1
             DEFB 151,19
             DEFB 1,1
             DEFB 121,25
             DEFB 102,1
             DEFB 121,25
             DEFB 102,1
             DEFB 1,19
             DEFB 1,1
             DEFB 1,19
             DEFB 1,1
             DEFB 121,25
             DEFB 102,1
             DEFB 121,25
             DEFB 102,1
             DEFB 1,19
             DEFB 1,1
             DEFB 1,19
             DEFB 1,1
             DEFB 151,28
             DEFB 151,28
             DEFB 151,28
             DEFB 151,1
             DEFB 151,19
             DEFB 151,1
             DEFB 151,19
             DEFB 1,1
             DEFB 121,28
             DEFB 102,1
             DEFB 121,28
             DEFB 102,1
             DEFB 1,19
             DEFB 1,1
             DEFB 1,19
             DEFB 1,1
             DEFB 121,30
             DEFB 102,1
             DEFB 121,30
             DEFB 102,1
             DEFB 1,19
             DEFB 1,1
             DEFB 1,19
             DEFB 1,1
         DEFB $0
PAT5:
         DEFB 250  ; Pattern tempo
             DEFB 192,21
             DEFB 192,21
             DEFB 192,21
             DEFB 192,1
             DEFB 192,19
             DEFB 192,1
             DEFB 192,19
             DEFB 1,1
             DEFB 151,21
             DEFB 128,1
             DEFB 151,21
             DEFB 128,1
             DEFB 1,19
             DEFB 1,1
             DEFB 1,19
             DEFB 1,1
             DEFB 151,21
             DEFB 128,1
             DEFB 151,21
             DEFB 128,1
             DEFB 1,19
             DEFB 1,1
             DEFB 1,19
             DEFB 1,1
             DEFB 192,24
             DEFB 192,24
             DEFB 192,24
             DEFB 192,1
             DEFB 192,19
             DEFB 192,1
             DEFB 192,19
             DEFB 1,1
             DEFB 151,24
             DEFB 128,1
             DEFB 151,24
             DEFB 128,1
             DEFB 1,19
             DEFB 1,1
             DEFB 1,19
             DEFB 1,1
             DEFB 151,24
             DEFB 128,1
             DEFB 151,24
             DEFB 128,1
             DEFB 1,19
             DEFB 1,1
             DEFB 1,19
             DEFB 1,1
             DEFB 192,25
             DEFB 192,25
             DEFB 192,25
             DEFB 192,1
             DEFB 192,19
             DEFB 192,1
             DEFB 192,19
             DEFB 1,1
             DEFB 151,25
             DEFB 128,1
             DEFB 151,25
             DEFB 128,1
             DEFB 1,19
             DEFB 1,1
             DEFB 1,19
             DEFB 1,1
             DEFB 151,25
             DEFB 128,1
             DEFB 151,25
             DEFB 128,1
             DEFB 1,19
             DEFB 1,1
             DEFB 1,19
             DEFB 1,1
             DEFB 192,24
             DEFB 192,24
             DEFB 192,24
             DEFB 192,1
             DEFB 192,32
             DEFB 192,1
             DEFB 192,32
             DEFB 1,1
             DEFB 151,27
             DEFB 128,1
             DEFB 151,27
             DEFB 128,1
             DEFB 1,25
             DEFB 1,1
             DEFB 1,25
             DEFB 1,1
             DEFB 151,24
             DEFB 128,1
             DEFB 151,24
             DEFB 128,1
             DEFB 1,21
             DEFB 1,1
             DEFB 1,21
             DEFB 1,1
         DEFB $0
PAT7:
         DEFB 250  ; Pattern tempo
             DEFB 151,40
             DEFB 151,20
             DEFB 151,40
             DEFB 151,20
             DEFB 151,40
             DEFB 151,20
             DEFB 151,40
             DEFB 1,20
             DEFB 61,40
             DEFB 51,20
             DEFB 61,40
             DEFB 51,20
             DEFB 1,40
             DEFB 1,20
             DEFB 1,40
             DEFB 1,20
             DEFB 61,40
             DEFB 51,20
             DEFB 61,40
             DEFB 51,20
             DEFB 1,40
             DEFB 1,20
             DEFB 1,40
             DEFB 1,19
             DEFB 151,38
             DEFB 151,19
             DEFB 151,38
             DEFB 151,19
             DEFB 151,38
             DEFB 151,19
             DEFB 151,38
             DEFB 1,19
             DEFB 61,38
             DEFB 51,19
             DEFB 61,38
             DEFB 51,19
             DEFB 1,38
             DEFB 1,19
             DEFB 1,38
             DEFB 1,19
             DEFB 61,38
             DEFB 51,19
             DEFB 61,38
             DEFB 51,19
             DEFB 1,38
             DEFB 1,19
             DEFB 1,38
             DEFB 1,17
             DEFB 151,34
             DEFB 151,17
             DEFB 151,34
             DEFB 151,17
             DEFB 151,34
             DEFB 151,17
             DEFB 151,34
             DEFB 1,17
             DEFB 61,34
             DEFB 51,17
             DEFB 61,34
             DEFB 51,17
             DEFB 1,34
             DEFB 1,17
             DEFB 1,34
             DEFB 1,17
             DEFB 61,34
             DEFB 51,17
             DEFB 61,34
             DEFB 51,17
             DEFB 1,34
             DEFB 1,17
             DEFB 1,34
             DEFB 1,15
             DEFB 151,30
             DEFB 151,15
             DEFB 151,30
             DEFB 151,15
             DEFB 151,30
             DEFB 151,15
             DEFB 151,30
             DEFB 1,15
             DEFB 61,30
             DEFB 51,15
             DEFB 61,30
             DEFB 51,15
             DEFB 1,30
             DEFB 1,15
             DEFB 1,30
             DEFB 1,15
             DEFB 61,30
             DEFB 51,15
             DEFB 61,30
             DEFB 51,15
             DEFB 1,30
             DEFB 1,15
             DEFB 1,30
             DEFB 1,15
         DEFB $0
PAT8:
         DEFB 250  ; Pattern tempo
             DEFB 192,51
             DEFB 192,25
             DEFB 192,51
             DEFB 192,25
             DEFB 192,51
             DEFB 192,25
             DEFB 192,51
             DEFB 1,25
             DEFB 76,51
             DEFB 64,25
             DEFB 76,51
             DEFB 64,25
             DEFB 1,51
             DEFB 1,25
             DEFB 1,51
             DEFB 1,25
             DEFB 76,51
             DEFB 64,25
             DEFB 76,51
             DEFB 64,25
             DEFB 1,51
             DEFB 1,25
             DEFB 1,51
             DEFB 1,24
             DEFB 192,48
             DEFB 192,24
             DEFB 192,48
             DEFB 192,24
             DEFB 192,48
             DEFB 192,24
             DEFB 192,48
             DEFB 1,24
             DEFB 76,48
             DEFB 64,24
             DEFB 76,48
             DEFB 64,24
             DEFB 1,48
             DEFB 1,24
             DEFB 1,48
             DEFB 1,24
             DEFB 76,48
             DEFB 64,24
             DEFB 76,48
             DEFB 64,24
             DEFB 1,48
             DEFB 1,24
             DEFB 1,48
             DEFB 1,21
             DEFB 192,43
             DEFB 192,21
             DEFB 192,43
             DEFB 192,21
             DEFB 192,43
             DEFB 192,21
             DEFB 192,43
             DEFB 1,21
             DEFB 76,43
             DEFB 64,21
             DEFB 76,43
             DEFB 64,21
             DEFB 1,43
             DEFB 1,21
             DEFB 1,43
             DEFB 1,21
             DEFB 76,43
             DEFB 64,21
             DEFB 76,43
             DEFB 64,21
             DEFB 1,43
             DEFB 1,21
             DEFB 1,43
             DEFB 1,19
             DEFB 192,38
             DEFB 192,19
             DEFB 192,38
             DEFB 192,19
             DEFB 192,38
             DEFB 192,19
             DEFB 192,38
             DEFB 1,19
             DEFB 76,38
             DEFB 64,19
             DEFB 76,38
             DEFB 64,19
             DEFB 1,38
             DEFB 1,19
             DEFB 1,38
             DEFB 1,19
             DEFB 76,38
             DEFB 64,19
             DEFB 76,38
             DEFB 64,19
             DEFB 1,38
             DEFB 1,19
             DEFB 1,38
             DEFB 1,19
         DEFB $0
end asm
end sub