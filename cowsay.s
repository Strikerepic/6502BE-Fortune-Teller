PORTB = $6000
PORTA = $6001
DATADIRB = $6002
DATADRIA = $6003

ENABLE = %10000000
RW = %0100000
REGISTERSELECT = %00100000    ; when register select is high, we are writting to the display 
  
  .org $8000

reset:

  ldx #$ff
  txs
  ldx #$00
  
  lda #%11111111 ; Data Direction for port b is now all output
  sta DATADIRB

  lda #%11100000 ; 3 MSBs are now configured for output everything else is input
  sta DATADRIA


  lda #%00111000 ; Set 8 bit mode, 2 line display and 5x8 sized font
  jsr LCD_COMMAND


  lda #%00001110 ; Display control, display on + cursor on + cursor blink is off  
  jsr LCD_COMMAND


  lda #%00000110 ; Increments the address allows text to be printed left to right. Otherwise right to left
  jsr LCD_COMMAND

  jmp PRE_PRINT
  


PRE_PRE_PRINT:
  inx
PRE_PRINT:
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop

  lda #%00000001 ; Clears Display 
  jsr LCD_COMMAND

  lda #%00000010 ; Returns home
  jsr LCD_COMMAND



MESSAGE_PRINT_TOPLINE:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT2
  lda message1,x
  beq START_NEWLINE
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE


START_NEWLINE:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT2
  lda message1,x
  beq PRE_PRE_PRINT
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE



















PRE_PRE_PRE_PRINT2:
  ldx #$00
  jmp PRE_PRINT2

PRE_PRE_PRINT2:
  inx
PRE_PRINT2:
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop

  lda #%00000001 ; Clears Display 
  jsr LCD_COMMAND

  lda #%00000010 ; Returns home
  jsr LCD_COMMAND







  MESSAGE_PRINT_TOPLINE2:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT3
  lda m2,x
  beq START_NEWLINE2
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE2


START_NEWLINE2:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE2:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT3
  lda m2,x
  beq PRE_PRE_PRINT2
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE2




PRE_PRE_PRE_PRINT3:
  ldx #$00
  jmp PRE_PRINT3

PRE_PRE_PRINT3:
  inx
PRE_PRINT3:
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop

  lda #%00000001 ; Clears Display 
  jsr LCD_COMMAND

  lda #%00000010 ; Returns home
  jsr LCD_COMMAND





  
MESSAGE_PRINT_TOPLINE3:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT4
  lda m3,x
  beq START_NEWLINE3
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE3


START_NEWLINE3:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE3:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT4
  lda m3,x
  beq PRE_PRE_PRINT3
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE3











PRE_PRE_PRE_PRINT4:
  ldx #$00
  jmp PRE_PRINT4

PRE_PRE_PRINT4:
  inx
PRE_PRINT4:
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  lda #%00000001 ; Clears Display 
  jsr LCD_COMMAND

  lda #%00000010 ; Returns home
  jsr LCD_COMMAND


  
MESSAGE_PRINT_TOPLINE4:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT5
  lda m4,x
  beq START_NEWLINE4
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE4


START_NEWLINE4:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE4:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT5
  lda m4,x
  beq PRE_PRE_PRINT4
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE4











PRE_PRE_PRE_PRINT5:
  ldx #$00
  jmp PRE_PRINT5

PRE_PRE_PRINT5:
  inx
PRE_PRINT5:
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop

  lda #%00000001 ; Clears Display 
  jsr LCD_COMMAND

  lda #%00000010 ; Returns home
  jsr LCD_COMMAND





  
MESSAGE_PRINT_TOPLINE5:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT6
  lda m5,x
  beq START_NEWLINE5
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE5


START_NEWLINE5:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE5:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT6
  lda m5,x
  beq PRE_PRE_PRINT5
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE5












  
PRE_PRE_PRE_PRINT6:
  ldx #$00
  jmp PRE_PRINT6

PRE_PRE_PRINT6:
  inx
PRE_PRINT6:
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop

  lda #%00000001 ; Clears Display 
  jsr LCD_COMMAND

  lda #%00000010 ; Returns home
  jsr LCD_COMMAND





  
MESSAGE_PRINT_TOPLINE6:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT7
  lda m6,x
  beq START_NEWLINE6
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE6


START_NEWLINE6:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE6:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT7
  lda m6,x
  beq PRE_PRE_PRINT6
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE6











  
PRE_PRE_PRE_PRINT7:
  ldx #$00
  jmp PRE_PRINT7

PRE_PRE_PRINT7:
  inx
PRE_PRINT7:
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop

  lda #%00000001 ; Clears Display 
  jsr LCD_COMMAND

  lda #%00000010 ; Returns home
  jsr LCD_COMMAND





  
MESSAGE_PRINT_TOPLINE7:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT8
  lda m7,x
  beq START_NEWLINE7
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE7


START_NEWLINE7:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE7:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT8
  lda m7,x
  beq PRE_PRE_PRINT7
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE7









  





  
PRE_PRE_PRE_PRINT8:
  ldx #$00
  jmp PRE_PRINT8

PRE_PRE_PRINT8:
  inx
PRE_PRINT8:
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop

  lda #%00000001 ; Clears Display 
  jsr LCD_COMMAND

  lda #%00000010 ; Returns home
  jsr LCD_COMMAND





  
MESSAGE_PRINT_TOPLINE8:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT9
  lda m8,x
  beq START_NEWLINE8
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE8


START_NEWLINE8:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE8:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT9
  lda m8,x
  beq PRE_PRE_PRINT8
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE8







  
PRE_PRE_PRE_PRINT9:
  ldx #$00
  jmp PRE_PRINT9

PRE_PRE_PRINT9:
  inx
PRE_PRINT9:
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop

  lda #%00000001 ; Clears Display 
  jsr LCD_COMMAND

  lda #%00000010 ; Returns home
  jsr LCD_COMMAND





  
MESSAGE_PRINT_TOPLINE9:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT10
  lda m9,x
  beq START_NEWLINE9
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE9


START_NEWLINE9:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE9:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT10
  lda m9,x
  beq PRE_PRE_PRINT9
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE9




PRE_PRE_PRE_PRINT10:
  ldx #$00
  jmp PRE_PRINT10

PRE_PRE_PRINT10:
  inx
PRE_PRINT10:
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop

  lda #%00000001 ; Clears Display 
  jsr LCD_COMMAND

  lda #%00000010 ; Returns home
  jsr LCD_COMMAND





  
MESSAGE_PRINT_TOPLINE10:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT11
  lda m10,x
  beq START_NEWLINE10
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE10


START_NEWLINE10:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE10:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT11
  lda m10,x
  beq PRE_PRE_PRINT10
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE10













  
PRE_PRE_PRE_PRINT11:
  ldx #$00
  jmp PRE_PRINT11

PRE_PRE_PRINT11:
  inx
PRE_PRINT11:
  nop
  jsr PRE_PRINTSUB



  
MESSAGE_PRINT_TOPLINE11:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT12
  lda m11,x
  beq START_NEWLINE11
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE11


START_NEWLINE11:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE11:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT12
  lda m11,x
  beq PRE_PRE_PRINT11
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE11












  
PRE_PRE_PRE_PRINT12:
  ldx #$00
  jmp PRE_PRINT12

PRE_PRE_PRINT12:
  inx
PRE_PRINT12:
  nop
  jsr PRE_PRINTSUB





  
MESSAGE_PRINT_TOPLINE12:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT13
  lda m12,x
  beq START_NEWLINE12
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE12


START_NEWLINE12:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE12:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT13
  lda m12,x
  beq PRE_PRE_PRINT12
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE12
















  
PRE_PRE_PRE_PRINT13:
  ldx #$00
  jmp PRE_PRINT13

PRE_PRE_PRINT13:
  inx
PRE_PRINT13:
  nop
  jsr PRE_PRINTSUB



  
MESSAGE_PRINT_TOPLINE13:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT14
  lda m13,x
  beq START_NEWLINE13
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE13


START_NEWLINE13:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE13:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT14
  lda m13,x
  beq PRE_PRE_PRINT13
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE13










  
PRE_PRE_PRE_PRINT14:
  ldx #$00
  jmp PRE_PRINT14

PRE_PRE_PRINT14:
  inx
PRE_PRINT14:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE14:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT15
  lda m14,x
  beq START_NEWLINE14
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE14


START_NEWLINE14:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE14:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT15
  lda m14,x
  beq PRE_PRE_PRINT14
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE14












PRE_PRE_PRE_PRINT15:
  ldx #$00
  jmp PRE_PRINT15

PRE_PRE_PRINT15:
  inx
PRE_PRINT15:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE15:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT16
  lda m15,x
  beq START_NEWLINE15
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE15


START_NEWLINE15:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE15:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT16
  lda m15,x
  beq PRE_PRE_PRINT15
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE15








PRE_PRE_PRE_PRINT16:
  ldx #$00
  jmp PRE_PRINT16

PRE_PRE_PRINT16:
  inx
PRE_PRINT16:
  nop
  jsr PRE_PRINTSUB

  


MESSAGE_PRINT_TOPLINE16:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT17
  lda m16_,x
  beq START_NEWLINE16
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE17


START_NEWLINE16:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE16:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT17
  lda m16_,x
  beq PRE_PRE_PRINT16
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE16






PRE_PRE_PRE_PRINT17:
  ldx #$00
  jmp PRE_PRINT17

PRE_PRE_PRINT17:
  inx
PRE_PRINT17:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE17:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT18
  lda m17,x
  beq START_NEWLINE17
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE17


START_NEWLINE17:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE17:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT18
  lda m17,x
  beq PRE_PRE_PRINT17
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE17



  












PRE_PRE_PRE_PRINT18:
  ldx #$00
  jmp PRE_PRINT18

PRE_PRE_PRINT18:
  inx
PRE_PRINT18:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE18:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT19
  lda m18,x
  beq START_NEWLINE18
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE18


START_NEWLINE18:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE18:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT19
  lda m18,x
  beq PRE_PRE_PRINT18
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE18








PRE_PRE_PRE_PRINT19:
  ldx #$00
  jmp PRE_PRINT19

PRE_PRE_PRINT19:
  inx
PRE_PRINT19:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE19:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT20
  lda m19,x
  beq START_NEWLINE19
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE19


START_NEWLINE19:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE19:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT20
  lda m19,x
  beq PRE_PRE_PRINT19
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE19
















PRE_PRE_PRE_PRINT20:
  ldx #$00
  jmp PRE_PRINT20

PRE_PRE_PRINT20:
  inx
PRE_PRINT20:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE20:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT21
  lda m20,x
  beq START_NEWLINE20
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE20


START_NEWLINE20:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE20:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT21
  lda m20,x
  beq PRE_PRE_PRINT20
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE20











PRE_PRE_PRE_PRINT21:
  ldx #$00
  jmp PRE_PRINT21

PRE_PRE_PRINT21:
  inx
PRE_PRINT21:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE21:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT22
  lda m21,x
  beq START_NEWLINE21
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE21


START_NEWLINE21:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE21:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT22
  lda m21,x
  beq PRE_PRE_PRINT21
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE21













PRE_PRE_PRE_PRINT22:
  ldx #$00
  jmp PRE_PRINT22

PRE_PRE_PRINT22:
  inx
PRE_PRINT22:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE22:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT23
  lda m22_,x
  beq START_NEWLINE22
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE22


START_NEWLINE22:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE22:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT23
  lda m22_,x
  beq PRE_PRE_PRINT22
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE22











  
PRE_PRE_PRE_PRINT23:
  ldx #$00
  jmp PRE_PRINT23

PRE_PRE_PRINT23:
  inx
PRE_PRINT23:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE23:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT24
  lda m23_,x
  beq START_NEWLINE23
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE23


START_NEWLINE23:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE23:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT24
  lda m23_,x
  beq PRE_PRE_PRINT23
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE23










PRE_PRE_PRE_PRINT24:
  ldx #$00
  jmp PRE_PRINT24

PRE_PRE_PRINT24:
  inx
PRE_PRINT24:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE24:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT25
  lda m24_,x
  beq START_NEWLINE24
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE24


START_NEWLINE24:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE24:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT25
  lda m24_,x
  beq PRE_PRE_PRINT24
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE24








PRE_PRE_PRE_PRINT25:
  ldx #$00
  jmp PRE_PRINT25

PRE_PRE_PRINT25:
  inx
PRE_PRINT25:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE25:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT26
  lda m25_,x
  beq START_NEWLINE25
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE25


START_NEWLINE25:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE25:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT26
  lda m25_,x
  beq PRE_PRE_PRINT25
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE25








PRE_PRE_PRE_PRINT26:
  ldx #$00
  jmp PRE_PRINT26

PRE_PRE_PRINT26:
  inx
PRE_PRINT26:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE26:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT27
  lda m26_,x
  beq START_NEWLINE26
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE26


START_NEWLINE26:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE26:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT27
  lda m26_,x
  beq PRE_PRE_PRINT26
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE26








PRE_PRE_PRE_PRINT27:
  ldx #$00
  jmp PRE_PRINT27

PRE_PRE_PRINT27:
  inx
PRE_PRINT27:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE27:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT28
  lda m27_,x
  beq START_NEWLINE27
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE27


START_NEWLINE27:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE27:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT28
  lda m27_,x
  beq PRE_PRE_PRINT27
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE27


  






PRE_PRE_PRE_PRINT28:
  ldx #$00
  jmp PRE_PRINT28

PRE_PRE_PRINT28:
  inx
PRE_PRINT28:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE28:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT29
  lda m28_,x
  beq START_NEWLINE28
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE28


START_NEWLINE28:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE28:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT29
  lda m28_,x
  beq PRE_PRE_PRINT28
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE28









PRE_PRE_PRE_PRINT29:
  ldx #$00
  jmp PRE_PRINT29

PRE_PRE_PRINT29:
  inx
PRE_PRINT29:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE29:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT30
  lda m29_,x
  beq START_NEWLINE29
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE29


START_NEWLINE29:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE29:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT30
  lda m29_,x
  beq PRE_PRE_PRINT29
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE29









PRE_PRE_PRE_PRINT30:
  ldx #$00
  jmp PRE_PRINT30

PRE_PRE_PRINT30:
  inx
PRE_PRINT30:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE30:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT31
  lda m30_,x
  beq START_NEWLINE30
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE30


START_NEWLINE30:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE30:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT31
  lda m30_,x
  beq PRE_PRE_PRINT30
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE30










PRE_PRE_PRE_PRINT31:
  ldx #$00
  jmp PRE_PRINT31

PRE_PRE_PRINT31:
  inx
PRE_PRINT31:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE31:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT32
  lda m31_,x
  beq START_NEWLINE31
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE31


START_NEWLINE31:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE31:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT32
  lda m31_,x
  beq PRE_PRE_PRINT31
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE31









PRE_PRE_PRE_PRINT32:
  ldx #$00
  jmp PRE_PRINT32

PRE_PRE_PRINT32:
  inx
PRE_PRINT32:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE32:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT33
  lda m32_,x
  beq START_NEWLINE32
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE32


START_NEWLINE32:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE32:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT33
  lda m32_,x
  beq PRE_PRE_PRINT32
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE32







PRE_PRE_PRE_PRINT33:
  ldx #$00
  jmp PRE_PRINT33

PRE_PRE_PRINT33:
  inx
PRE_PRINT33:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE33:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT34
  lda m33_,x
  beq START_NEWLINE33
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE33


START_NEWLINE33:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE33:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT34
  lda m33_,x
  beq PRE_PRE_PRINT33
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE33









PRE_PRE_PRE_PRINT34:
  ldx #$00
  jmp PRE_PRINT34

PRE_PRE_PRINT34:
  inx
PRE_PRINT34:
  nop
  jsr PRE_PRINTSUB


MESSAGE_PRINT_TOPLINE34:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT35
  lda m34_,x
  beq START_NEWLINE34
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE34


START_NEWLINE34:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE34:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT35
  lda m34_,x
  beq PRE_PRE_PRINT34
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE34








PRE_PRE_PRE_PRINT35:
  ldx #$00
  jmp PRE_PRINT35

PRE_PRE_PRINT35:
  inx
PRE_PRINT35:
  nop
  jsr PRE_PRINTSUB



MESSAGE_PRINT_TOPLINE35:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT36
  lda m35_,x
  beq START_NEWLINE35
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE35


START_NEWLINE35:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE35:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT36
  lda m35_,x
  beq PRE_PRE_PRINT35
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE35








PRE_PRE_PRE_PRINT36:
  ldx #$00
  jmp PRE_PRINT36

PRE_PRE_PRINT36:
  inx
PRE_PRINT36:
  nop
  jsr PRE_PRINTSUB


  MESSAGE_PRINT_TOPLINE36:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT37
  lda m36_,x
  beq START_NEWLINE36
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE36


START_NEWLINE36:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE36:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT37
  lda m36_,x
  beq PRE_PRE_PRINT36
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE36







PRE_PRE_PRE_PRINT37:
  ldx #$00
  jmp PRE_PRINT37

PRE_PRE_PRINT37:
  inx
PRE_PRINT37:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE37:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT38
  lda m37_,x
  beq START_NEWLINE37
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE37


START_NEWLINE37:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE37:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT38
  lda m37_,x
  beq PRE_PRE_PRINT37
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE37






PRE_PRE_PRE_PRINT38:
  ldx #$00
  jmp PRE_PRINT38

PRE_PRE_PRINT38:
  inx
PRE_PRINT38:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE38:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT39
  lda m38_,x
  beq START_NEWLINE38
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE38


START_NEWLINE38:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE38:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT39
  lda m38_,x
  beq PRE_PRE_PRINT38
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE38








PRE_PRE_PRE_PRINT39:
  ldx #$00
  jmp PRE_PRINT39

PRE_PRE_PRINT39:
  inx
PRE_PRINT39:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE39:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT40
  lda m39_,x
  beq START_NEWLINE39
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE39


START_NEWLINE39:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE39:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT40
  lda m39_,x
  beq PRE_PRE_PRINT39
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE39







PRE_PRE_PRE_PRINT40:
  ldx #$00
  jmp PRE_PRINT40

PRE_PRE_PRINT40:
  inx
PRE_PRINT40:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE40:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT41
  lda m40_,x
  beq START_NEWLINE40
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE40


START_NEWLINE40:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE40:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT41
  lda m40_,x
  beq PRE_PRE_PRINT40
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE40







PRE_PRE_PRE_PRINT41:
  ldx #$00
  jmp PRE_PRINT41

PRE_PRE_PRINT41:
  inx
PRE_PRINT41:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE41:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT42
  lda m41_,x
  beq START_NEWLINE41
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE41


START_NEWLINE41:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE41:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT42
  lda m41_,x
  beq PRE_PRE_PRINT41
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE41






PRE_PRE_PRE_PRINT42:
  ldx #$00
  jmp PRE_PRINT42

PRE_PRE_PRINT42:
  inx
PRE_PRINT42:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE42:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT43
  lda m42_,x
  beq START_NEWLINE42
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE42


START_NEWLINE42:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE42:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT43
  lda m42_,x
  beq PRE_PRE_PRINT42
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE42









PRE_PRE_PRE_PRINT43:
  ldx #$00
  jmp PRE_PRINT43

PRE_PRE_PRINT43:
  inx
PRE_PRINT43:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE43:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT44
  lda m43_,x
  beq START_NEWLINE43
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE43


START_NEWLINE43:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE43:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT44
  lda m43_,x
  beq PRE_PRE_PRINT43
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE43









PRE_PRE_PRE_PRINT44:
  ldx #$00
  jmp PRE_PRINT44

PRE_PRE_PRINT44:
  inx
PRE_PRINT44:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE44:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT45
  lda m44_,x
  beq START_NEWLINE44
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE44


START_NEWLINE44:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE44:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT45
  lda m44_,x
  beq PRE_PRE_PRINT44
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE44









PRE_PRE_PRE_PRINT45:
  ldx #$00
  jmp PRE_PRINT45

PRE_PRE_PRINT45:
  inx
PRE_PRINT45:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE45:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT46
  lda m45_,x
  beq START_NEWLINE45
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE45


START_NEWLINE45:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE45:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT46
  lda m45_,x
  beq PRE_PRE_PRINT45
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE45









PRE_PRE_PRE_PRINT46:
  ldx #$00
  jmp PRE_PRINT46

PRE_PRE_PRINT46:
  inx
PRE_PRINT46:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE46:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT47
  lda m46_,x
  beq START_NEWLINE46
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE46


START_NEWLINE46:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE46:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT47
  lda m46_,x
  beq PRE_PRE_PRINT46
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE46








PRE_PRE_PRE_PRINT47:
  ldx #$00
  jmp PRE_PRINT47

PRE_PRE_PRINT47:
  inx
PRE_PRINT47:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE47:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT48
  lda m47_,x
  beq START_NEWLINE47
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE47


START_NEWLINE47:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE47:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT48
  lda m47_,x
  beq PRE_PRE_PRINT47
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE47








PRE_PRE_PRE_PRINT48:
  ldx #$00
  jmp PRE_PRINT48

PRE_PRE_PRINT48:
  inx
PRE_PRINT48:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE48:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT49
  lda m48_,x
  beq START_NEWLINE48
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE48


START_NEWLINE48:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE48:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT49
  lda m48_,x
  beq PRE_PRE_PRINT48
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE48











PRE_PRE_PRE_PRINT49:
  ldx #$00
  jmp PRE_PRINT49

PRE_PRE_PRINT49:
  inx
PRE_PRINT49:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE49:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT50
  lda m49_,x
  beq START_NEWLINE49
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE49


START_NEWLINE49:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE49:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT50
  lda m49_,x
  beq PRE_PRE_PRINT49
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE49






PRE_PRE_PRE_PRINT50:
  ldx #$00
  jmp PRE_PRINT50

PRE_PRE_PRINT50:
  inx
PRE_PRINT50:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE50:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT51
  lda m50_,x
  beq START_NEWLINE50
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE50


START_NEWLINE50:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE50:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT51
  lda m50_,x
  beq PRE_PRE_PRINT50
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE50







PRE_PRE_PRE_PRINT51:
  ldx #$00
  jmp PRE_PRINT51

PRE_PRE_PRINT51:
  inx
PRE_PRINT51:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE51:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT52
  lda m51_,x
  beq START_NEWLINE51
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE50


START_NEWLINE51:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE51:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT52
  lda m51_,x
  beq PRE_PRE_PRINT51
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE51





PRE_PRE_PRE_PRINT52:
  ldx #$00
  jmp PRE_PRINT52

PRE_PRE_PRINT52:
  inx
PRE_PRINT52:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE52:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT53
  lda m52_,x
  beq START_NEWLINE52
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE52


START_NEWLINE52:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE52:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT53
  lda m52_,x
  beq PRE_PRE_PRINT52
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE52









PRE_PRE_PRE_PRINT53:
  ldx #$00
  jmp PRE_PRINT53

PRE_PRE_PRINT53:
  inx
PRE_PRINT53:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE53:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT54
  lda m53_,x
  beq START_NEWLINE53
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE53


START_NEWLINE53:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE53:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT54
  lda m53_,x
  beq PRE_PRE_PRINT53
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE53







PRE_PRE_PRE_PRINT54:
  ldx #$00
  jmp PRE_PRINT54

PRE_PRE_PRINT54:
  inx
PRE_PRINT54:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE54:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT55
  lda m54_,x
  beq START_NEWLINE54
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE54


START_NEWLINE54:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE54:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT55
  lda m54_,x
  beq PRE_PRE_PRINT54
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE54






PRE_PRE_PRE_PRINT55:
  ldx #$00
  jmp PRE_PRINT55

PRE_PRE_PRINT55:
  inx
PRE_PRINT55:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE55:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT56
  lda m55_,x
  beq START_NEWLINE55
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE55


START_NEWLINE55:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE55:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT56
  lda m55_,x
  beq PRE_PRE_PRINT55
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE55










PRE_PRE_PRE_PRINT56:
  ldx #$00
  jmp PRE_PRINT56

PRE_PRE_PRINT56:
  inx
PRE_PRINT56:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE56:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT57
  lda m56_,x
  beq START_NEWLINE56
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE56


START_NEWLINE56:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE56:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT57
  lda m56_,x
  beq PRE_PRE_PRINT56
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE56










PRE_PRE_PRE_PRINT57:
  ldx #$00
  jmp PRE_PRINT57

PRE_PRE_PRINT57:
  inx
PRE_PRINT57:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE57:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT58
  lda m57_,x
  beq START_NEWLINE57
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE57


START_NEWLINE57:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE57:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT58
  lda m57_,x
  beq PRE_PRE_PRINT57
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE57








PRE_PRE_PRE_PRINT58:
  ldx #$00
  jmp PRE_PRINT58

PRE_PRE_PRINT58:
  inx
PRE_PRINT58:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE58:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT59
  lda m58_,x
  beq START_NEWLINE58
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE58


START_NEWLINE58:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE58:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT59
  lda m58_,x
  beq PRE_PRE_PRINT58
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE58











PRE_PRE_PRE_PRINT59:
  ldx #$00
  jmp PRE_PRINT59

PRE_PRE_PRINT59:
  inx
PRE_PRINT59:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE59:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT60
  lda m59_,x
  beq START_NEWLINE59
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE59


START_NEWLINE59:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE59:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT60
  lda m59_,x
  beq PRE_PRE_PRINT59
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE59








PRE_PRE_PRE_PRINT60:
  ldx #$00
  jmp PRE_PRINT60

PRE_PRE_PRINT60:
  inx
PRE_PRINT60:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE60:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT61
  lda m60_,x
  beq START_NEWLINE60
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE60


START_NEWLINE60:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE60:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT61
  lda m60_,x
  beq PRE_PRE_PRINT60
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE60









PRE_PRE_PRE_PRINT61:
  ldx #$00
  jmp PRE_PRINT61

PRE_PRE_PRINT61:
  inx
PRE_PRINT61:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE61:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT62
  lda m61_,x
  beq START_NEWLINE61
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE61


START_NEWLINE61:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE61:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT62
  lda m61_,x
  beq PRE_PRE_PRINT61
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE61






PRE_PRE_PRE_PRINT62:
  ldx #$00
  jmp PRE_PRINT62

PRE_PRE_PRINT62:
  inx
PRE_PRINT62:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE62:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT63
  lda m62_,x
  beq START_NEWLINE62
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE62


START_NEWLINE62:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE62:
  cpx #$FF
  beq PRE_PRE_PRE_PRINT63
  lda m62_,x
  beq PRE_PRE_PRINT62
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE62





PRE_PRE_PRE_PRINT63:
  ldx #$00
  jmp PRE_PRINT63

PRE_PRE_PRINT63:
  inx
PRE_PRINT63:
  nop
  jsr PRE_PRINTSUB



  MESSAGE_PRINT_TOPLINE63:
  cpx #$FF
  beq WarpJump
  lda m63_,x
  beq START_NEWLINE63
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_TOPLINE63


START_NEWLINE63:
  lda #%0011000000    ; Start at the begining of the second line
  jsr LCD_COMMAND
  inx

MESSAGE_PRINT_BOTTOMLINE63:
  cpx #$FF
  beq WarpJump
  lda m63_,x
  beq PRE_PRE_PRINT63
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE63









WarpJump:
  jmp PRE_PRE_PRE_PRINT2









  



















  












  










PRE_PRINTSUB:
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  
  lda #%00000001 ; Clears Display 
  jsr LCD_COMMAND

  lda #%00000010 ; Returns home
  jsr LCD_COMMAND
  rts
  
  
LCD_DELAY:
  pha
  lda #%00000000 ; DATADIRB is now input to read state of busy flag
  sta DATADIRB
  nop
LCD_LOOP:
  lda #RW
  sta PORTA
  lda #%11000000  ; Bootleg bitwise and with E and RW
  sta PORTA
  lda PORTB
  and #%10000000
  bne LCD_LOOP


  lda #RW
  sta PORTA
  lda #%11111111 ; DATADIRB is now output
  sta DATADIRB
  pla
  rts

LCD_COMMAND:
  nop
  jsr LCD_DELAY
  sta PORTB
  lda #0         ; clears RS E & RW
  sta PORTA
  lda #ENABLE    ; Read below to follow
  sta PORTA
  lda #0
  sta PORTA      ; in combo with above, flashes enable bit high telling display to accept instruction above
  rts
LCD_WRITE_LETTER:
  jsr LCD_DELAY
  sta PORTB
  lda #REGISTERSELECT        ; Setting Register select high to tell it were writting data this time
  sta PORTA
  lda #%10100000             ; Bootleg bitwise or for RegisterSlect and Enable
  sta PORTA
  lda #REGISTERSELECT
  sta PORTA                  ; in combo with above, flashes enable bit high telling display to accept instruction above
  rts









MESSAGES:

 
   
 
  message1: .asciiz "What follows is "
  message2: .asciiz "a great list of "
  message3: .asciiz "Info.   Code by:"
  message4: .asciiz "------BVR-------"
  message5: .asciiz "                "
  message6: .asciiz "Cold Hands, but "
  message7: .asciiz "no gloves...    "
  message8: .asciiz "Day of inquiry  "
  message9: .asciiz "subpoena close.."
  message10: .asciiz "Bank error in   "
  message11: .asciiz "your favor +$20 "
  message12: .asciiz "Artsy ventures? "
  message13: .asciiz "go rob a museum "
  message14: .asciiz "break into jail "
  message15: .asciiz "cop   brutality "





  m2: .asciiz "Prepare for the "
  m22: .asciiz "worst. Hope for "
  m23: .asciiz "The best.       "
  m24: .asciiz "- A Dentist     "
  m25: .asciiz "Make a wish, it "
  m26: .asciiz "may come true.  "
  m27: .asciiz "Dont reveal your"
  m28: .asciiz "best argument   "
  m29: .asciiz "Look behind you."
  m210: .asciiz "Who's there?    "
  m211: .asciiz "Allocate 8 years"
  m212: .asciiz "for delivery    "
  m213: .asciiz "Falling Rocks   "
  m214: .asciiz "Look up always  "
  m215: .asciiz "All Rights Res. "




  m3: .asciiz "Park on driveway"
  m32: .asciiz "drive on parkway"
  m33: .asciiz "Don't fart in   "
  m34: .asciiz "full Elevator   "
  m35: .asciiz "Apple bottom    "
  m36: .asciiz "jeans boots with"
  m37: .asciiz "Enjoy yourself  "
  m38: .asciiz "while you can   "
  m39: .asciiz "congratulations "
  m310: .asciiz "You can read    "
  m311: .asciiz "Cargo on ships  "
  m312: .asciiz "shipment in cars"
  m313: .asciiz "No angry way to "
  m314: .asciiz "say bubbles     "
  m315: .asciiz "Gambling = good "






  m4: .asciiz "Do something odd"
  m42: .asciiz "go pay a bill   "
  m43: .asciiz "Don't kiss an   "
  m44: .asciiz "elephant today  "
  m45: .asciiz "---Don't Worry  "
  m46: .asciiz "Be Happy! :) -- "
  m47: .asciiz "time to become  "
  m48: .asciiz "a big dude man  "
  m49: .asciiz "You will spill  "
  m410: .asciiz "Soup in 20 min  "
  m411: .asciiz "give him an     "
  m412: .asciiz "evasive response"
  m413: .asciiz "P.M is bright   "
  m414: .asciiz "cop shines a    "
  m415: .asciiz "light at you    "




  m5: .asciiz "A journey in    "
  m52: .asciiz "Newark is soon  "
  m53: .asciiz "Be careful this "
  m54: .asciiz "is classified:  "
  m55: .asciiz "Be alert: a man "
  m56: .asciiz "with a loud tie "
  m57: .asciiz "Cheer up, it's  "
  m58: .asciiz "getting worse : "
  m59: .asciiz "Great power     "
  m510: .asciiz "big power bill  "
  m511: .asciiz "oily toes boosts"
  m512: .asciiz "speed sharply   "
  m513: .asciiz "Excellent time  "
  m514: .asciiz "to buy 1000 SPY "
  m515: .asciiz "option puts     "




  m6: .asciiz "This is not a   "
  m62: .asciiz "game. I'm not an"
  m63: .asciiz "AI testing you. "
  m64: .asciiz "or am I? IDK?   "
  m65: .asciiz "Moving slowly,  "
  m66: .asciiz "wrong Direction "
  m67: .asciiz "Lady Luck has   "
  m68: .asciiz "brought more $$ "
  m69: .asciiz "Lady friend     "
  m610: .asciiz "takes it away.  "
  m611: .asciiz "Monday canceled "
  m612: .asciiz "All liked that  "
  m613: .asciiz "A little pain   "
  m614: .asciiz "never has hurt  "
  m615: .asciiz "anybody         "




  m7: .asciiz "Im a phantom and"
  m72: .asciiz "I'm here to see "
  m73: .asciiz "Better to bow   "
  m74: .asciiz "legged then not "
  m75: .asciiz "Dont fight bird "
  m76: .asciiz "kiss avocado    "
  m77: .asciiz "It'll be cool if"
  m78: .asciiz "they finish it  "
  m79: .asciiz "You'll feel good"
  m710: .asciiz "Once you give up"
  m711: .asciiz "Stop Conformity!"
  m712: .asciiz "Dishwasher Sale!"
  m713: .asciiz "La-li-lu-le-lo  "
  m714: .asciiz "Snake is that..."
  m715: .asciiz "Diamond Dogs.   "



 
  m8: .asciiz "An Irish man is "
  m82: .asciiz "at peace ina pub"
  m83: .asciiz "I marvel at the "
  m84: .asciiz "power of emotion"
  m85: .asciiz "I live in the   "
  m86: .asciiz "American Gardens"
  m87: .asciiz "Building on west"
  m88: .asciiz "81st Street     "
  m89: .asciiz "My name is      "
  m810: .asciiz "Patrick Bateman "
  m811: .asciiz "Generalisations "
  m812: .asciiz "are bad, maybe. "
  m813: .asciiz "ChatGPT wrote   "
  m814: .asciiz "the next one    "
  m815: .asciiz "AI model 4 help "




  m9: .asciiz "40 isn't old if "
  m92: .asciiz "you're a tree   "
  m93: .asciiz "agree with them "
  m94: .asciiz "it saves time   "
  m95: .asciiz "Am I ranting?   "
  m96: .asciiz "I hope so       "
  m97: .asciiz "BlackRock owns  "
  m98: .asciiz "all of society  "
  m99: .asciiz "Give me 6 hours "
  m910: .asciiz "to cut down a   "
  m911: .asciiz "tree and I'll   "
  m912: .asciiz "spend the first "
  m913: .asciiz "four sharpening "
  m914: .asciiz "the axe         "
  m915: .asciiz "-Abraham Lincoln"



 
  m10: .asciiz "every absurdity "
  m102: .asciiz "has its champion"
  m103: .asciiz "everything is   "
  m104: .asciiz "miscellaneous   "
  m105: .asciiz "Need good grass?"
  m106: .asciiz "sidewalk cracks "
  m107: .asciiz "I can read your "
  m108: .asciiz "mind. Be ashamed"
  m109: .asciiz "I hear what your"
  m1010: .asciiz "saying, idc tho "
  m1011: .asciiz "I thought you   "
  m1012: .asciiz "took care of it!"
  m1013: .asciiz "Id give my right"
  m1014: .asciiz "arm to be       "
  m1015: .asciiz " ambidextrous   "




  m11: .asciiz "Imagination is a"
  m112: .asciiz "secret weapon   "
  m113: .asciiz "In event of fire"
  m114: .asciiz "yell fire loudly"
  m115: .asciiz "When is the end "
  m116: .asciiz "of the start?   "
  m117: .asciiz "Running down a  "
  m118: .asciiz "hill is easier  "
  m119: .asciiz "Luck has nothing"
  m1110: .asciiz "to do with this "
  m1111: .asciiz "Spectacular     "
  m1112: .asciiz "achievement is  "
  m1113: .asciiz "always preceded "
  m1114: .asciiz "by unspectacular"
  m1115: .asciiz "preparation.    "




  m12: .asciiz "Operator tell me"
  m122: .asciiz "where they are. "
  m123: .asciiz "Pardon me but I "
  m124: .asciiz "must laugh at u "
  m125: .asciiz "Paul Revere was "
  m126: .asciiz "a tattle-tale   "
  m127: .asciiz "Remember the uh."
  m128: .asciiz "umm... uh......."
  m129: .asciiz "Drive defensive "
  m1210: .asciiz "offense> defence"
  m1211: .asciiz "rubberbands have"
  m1212: .asciiz "snappy endings  "
  m1213: .asciiz "WERE IN A HURRY "
  m1214: .asciiz "take it easy    "
  m1215: .asciiz "-Airport TSA    "



  
  m13: .asciiz "Go on, tempt me "
  m132: .asciiz "with a spoon.   "
  m133: .asciiz "the flaw that   "
  m134: .asciiz "makes perfect is"
  m135: .asciiz "Grass is greener"
  m136: .asciiz "without shade   "
  m137: .asciiz "this next one is"
  m138: .asciiz "not a repeat!   "
  m139: .asciiz "Would ya like to"
  m1310: .asciiz "purchase a duck?"
  m1311: .asciiz "the writing is  "
  m1312: .asciiz "on the wall     "
  m1313: .asciiz "I'm afraid your "
  m1314: .asciiz "friend Mathis is"
  m1315: .asciiz "my friend,Mathis"



   
  m14: .asciiz "What I Know. The"
  m142: .asciiz "Big Picture. Its"
  m143: .asciiz "the funds are at"
  m144: .asciiz "the Milan branch"
  m145: .asciiz "Why does the    "
  m146: .asciiz "funny bone hurt "
  m147: .asciiz "banach tarski   "
  m148: .asciiz "paradox         "
  m149: .asciiz "The only delta  "
  m1410: .asciiz "is change       "
  m1411: .asciiz "* * * * * * * * "
  m1412: .asciiz " * * * * * * * *"
  m1413: .asciiz "Debugged code   "
  m1414: .asciiz "always still has"
  m1415: .asciiz "fatal flaws...  "




  m15: .asciiz "watching watches"
  m152: .asciiz "tells no time   "
  m153: .asciiz "one doesn't ask "
  m154: .asciiz "chips air flavor"
  m155: .asciiz "stone + sword = "
  m156: .asciiz "dull sword      "
  m157: .asciiz "a whet stone is "
  m158: .asciiz "whet when wet   "
  m159: .asciiz "Mountains, flow."
  m1510: .asciiz "rivers, climb.  "
  m1511: .asciiz "think thoughts  "
  m1512: .asciiz "know knowledge  "
  m1513: .asciiz "to teach the    "
  m1514: .asciiz "teacher, ask the"
  m1515: .asciiz "student to study"




  m16_: .asciiz "There's a quote:"
  m162: .asciiz "say it.         "
  m163: .asciiz "hot steel skids "
  m164: .asciiz "on thin ice     "
  m165: .asciiz "a lazy cat, lies"
  m166: .asciiz "the truth, flies"
  m167: .asciiz "move in chess   "
  m168: .asciiz "don't in life   "
  m169: .asciiz "ski the slopes  "
  m1610: .asciiz "snow to slush   "
  m1611: .asciiz "speak softly,   "
  m1612: .asciiz "hydrate often   "
  m1613: .asciiz "To string a     "
  m1614: .asciiz "banjo one must  "
  m1615: .asciiz "hear the notes  "




  m17: .asciiz "No Shirt, No    "
  m172: .asciiz "shoes. Service! "
  m173: .asciiz "Dwarves Mine,   "
  m174: .asciiz "Elves Cast      "
  m175: .asciiz "To see curve the"
  m176: .asciiz "glass carefully "
  m177: .asciiz "Strike a key    "
  m178: .asciiz "notes will play "
  m179: .asciiz "stab wounds heal"
  m1710: .asciiz "with stitches.  "
  m1711: .asciiz "sweatshirts are "
  m1712: .asciiz "too hot for me  "
  m1713: .asciiz "Pills taken will"
  m1714: .asciiz "take the pill   "
  m1715: .asciiz "taker...        "




  m18: .asciiz "Queens Rule     "
  m182: .asciiz "    Dogs Drool  "
  m183: .asciiz "Blueberries are "
  m184: .asciiz "purple to me?   "
  m185: .asciiz "feel my motion  "
  m186: .asciiz "know my wave    "
  m187: .asciiz "crimes Ive done "
  m188: .asciiz "stories Ive told"
  m189: .asciiz "two people can't"
  m1810: .asciiz "fit on 1 swing  "
  m1811: .asciiz "sink on boats   "
  m1812: .asciiz "float on water  "
  m1813: .asciiz "Statements are  "
  m1814: .asciiz "     Stated     "
  m1815: .asciiz "     Period!    "




  m19: .asciiz "To my haters:   "
  m192: .asciiz "stop lookin'    "
  m193: .asciiz "Boney fingers   "
  m194: .asciiz "grip strongly   "
  m195: .asciiz "Craft tools     "
  m196: .asciiz "Using sticks    "
  m197: .asciiz "To Create luck  "
  m198: .asciiz "act with skill  "
  m199: .asciiz "Invite me in    "
  m1910: .asciiz "please I'm cold "
  m1911: .asciiz "look at my chain"
  m1912: .asciiz "I'm BLINGIN'    "
  m1913: .asciiz "I gotta piss so "
  m1914: .asciiz "bad I can taste "
  m1915: .asciiz "IT!!!!!!!!!!!!!!"




  m20: .asciiz "To look closely "
  m202: .asciiz "view from afar  "
  m203: .asciiz "I'm insane      "
  m204: .asciiz "I'm just cracked"
  m205: .asciiz "Antlers are the "
  m206: .asciiz "branches of life"
  m207: .asciiz "Up is up when   "
  m208: .asciiz "down applies    "
  m209: .asciiz "Look at salad   "
  m2010: .asciiz "is it green?    "
  m2011: .asciiz "My hands turn as"
  m2012: .asciiz "time passes by  "
  m2013: .asciiz "Postpone        "
  m2014: .asciiz "   preordain    "
  m2015: .asciiz "      chronoboss"




  m21: .asciiz "Monkies go oh oh"
  m21_2: .asciiz "I go ah ah      "
  m21_3: .asciiz "Fruit snacks    "
  m21_4: .asciiz "cure my munchies"
  m21_5: .asciiz "I'm the DJ:     "
  m21_6: .asciiz "Disk Jockey     "
  m217: .asciiz "Hot dogs aren't "
  m218: .asciiz "all for buns    "
  m219: .asciiz "I love to break "
  m2110: .asciiz "like glass      "
  m2111: .asciiz "My soul is a    "
  m2112: .asciiz "**kaleidoscope**"
  m2113: .asciiz "The future is   "
  m2114: .asciiz "what I see when "
  m2115: .asciiz "I close my eyes "




  m22_: .asciiz "cephalopods    "
  m222: .asciiz "undulate freely "
  m223: .asciiz "All the rice    "
  m224: .asciiz "LOTTA CARBS     "
  m225: .asciiz "this is assembly"
  m226: .asciiz "exfil cordially "
  m227: .asciiz "Hot-Cross-Buns  "
  m228: .asciiz "Buns-Cross-Hot  "
  m229: .asciiz "Get Goofy       "
  m2210: .asciiz "      Stay Silly"
  m2211: .asciiz "To go faster    "
  m2212: .asciiz "accelerator     "
  m2213: .asciiz "Computer Boot   "
  m2214: .asciiz "but don't take a"
  m2215: .asciiz "boot to Computer"




  m23_: .asciiz "dip your toes   "
  m232: .asciiz "water is nice   "
  m233: .asciiz "OREO. Milks fav "
  m234: .asciiz "coooookkkkiiieee"
  m235: .asciiz "  Linux Users   "
  m236: .asciiz "Installing Apps "
  m237: .asciiz "Ah! The Roast is"
  m238: .asciiz "Super Effective!"
  m239: .asciiz "America Lives in"
  m2310: .asciiz "the past tense  "
  m2311: .asciiz "We aren't in    "
  m2312: .asciiz "Kanssas Anymore!"
  m2313: .asciiz "Goodnight Dallas"
  m2314: .asciiz "Texas. Wherever "
  m2315: .asciiz "you are!        "




  m24_: .asciiz "If you fail     "
  m242: .asciiz "just don't.     "
  m243: .asciiz "A Modem is just "
  m244: .asciiz "an online home  "
  m245: .asciiz "3-year-olds     "
  m246: .asciiz "become adults   "
  m247: .asciiz "7 Bullets 1 Mil "
  m248: .asciiz "Each. $7,000,000"
  m249: .asciiz "Squeegees only  "
  m2410: .asciiz "work with water "
  m2411: .asciiz "The Tsar Dances "
  m2412: .asciiz "wunderbar       "
  m2413: .asciiz "Good ideas come "
  m2414: .asciiz "When one milks a"
  m2415: .asciiz "cow rapidly.    "




  m25_: .asciiz "If you fail     "
  m252: .asciiz "just don't.     "
  m253: .asciiz "If it's a just  "
  m254: .asciiz "tile. You reveal"
  m255: .asciiz "Displaying #    "
  m256: .asciiz "9363347321154566"
  m257: .asciiz "Total Gaming != "
  m258: .asciiz "Hours living    "
  m259: .asciiz "Don't just swiss"
  m2510: .asciiz "cheese it man   "
  m2511: .asciiz "Get em up here  "
  m2512: .asciiz "don't hesitate  "
  m2513: .asciiz "Wait a second..."
  m2514: .asciiz "this one looks  "
  m2515: .asciiz "very familiar   "




  m26_: .asciiz "Your second wind"
  m262: .asciiz "starts too late "
  m263: .asciiz "A grave period  "
  m264: .asciiz "begins for you  "
  m265: .asciiz "Avoid gunfire in"
  m266: .asciiz "restrooms today "
  m267: .asciiz "Low flying      "
  m268: .asciiz "butterflies near"
  m269: .asciiz "Basically just  "
  m2610: .asciiz "space domination"
  m2611: .asciiz "Just rewrite the"
  m2612: .asciiz "whole story now "
  m2613: .asciiz "I get hands-on. "
  m2614: .asciiz "This means your "
  m2615: .asciiz "face is now off."




  m27_: .asciiz "World War with  "
  m272: .asciiz "no technology   "
  m273: .asciiz "Dwayne 'theRock'"
  m274: .asciiz "has a boulder   "
  m275: .asciiz "Fruit Snacks    "
  m276: .asciiz "squished by shoe"
  m277: .asciiz "Say something:  "
  m278: .asciiz "like what do you"
  m279: .asciiz "Wait! You want  "
  m2710: .asciiz "the whole EEPROM"
  m2711: .asciiz "Short people    "
  m2712: .asciiz "reach for toes. "
  m2713: .asciiz "   Hood   Up,   "
  m2714: .asciiz "  Airpods  in,  "
  m2715: .asciiz " Middle School  "




  m28_: .asciiz "Bouta eat the   "
  m282: .asciiz "whole Cheeto bag"
  m283: .asciiz "Life's music    "
  m284: .asciiz "has no rhythm   "
  m285: .asciiz "Goofy walk with "
  m286: .asciiz "the snazzy shoes"
  m287: .asciiz "Break glass when"
  m288: .asciiz "host isn't funny"
  m289: .asciiz "A man has fallen"
  m2810: .asciiz "into the river "
  m2811: .asciiz "1v1 me in       "
  m2812: .asciiz "connect 4 bruv  "
  m2813: .asciiz "Now that there  "
  m2814: .asciiz "is a serious    "
  m2815: .asciiz "    BLUNDER!    "




  m29_: .asciiz "ssssssssssssssss"
  m292: .asciiz "I'm a snake. sss"
  m293: .asciiz "Tic-Tac-Toe-Tic "
  m294: .asciiz "Tac-Toe = 2T-T-T"
  m295: .asciiz "Oh look a penny "
  m296: .asciiz "is it heads up? "
  m297: .asciiz "What color is   "
  m298: .asciiz "your jail cell? "
  m299: .asciiz "What am I if not"
  m2910: .asciiz "A blood ballon  "
  m2911: .asciiz "You look like   "
  m2912: .asciiz "wallpaper tastes"
  m2913: .asciiz "   Bears Bite!  "
  m2914: .asciiz "   Rouges kite  "
  m2915: .asciiz "  I hurt people "




  m30_: .asciiz "What is the dog "
  m302: .asciiz "without doing?  "
  m303: .asciiz "Fusion v Fission"
  m304: .asciiz "bomb either way "
  m305: .asciiz "Am I the danger "
  m306: .asciiz "or are you?     "
  m307: .asciiz "Are you mentally"
  m308: .asciiz "here at Dominos?"
  m309: .asciiz "OBAMNA: ________"
  m3010: .asciiz "SODAAAA!!!!!    "
  m3011: .asciiz "Beans in the    "
  m3012: .asciiz "cake: Bri'ish   "
  m3013: .asciiz "I WOKE UP IN    "
  m3014: .asciiz "STEAMIN MOOD    "
  m3015: .asciiz "TODAY YEAH      "




  m31_: .asciiz "Why do you know "
  m312_: .asciiz "where to roof is"
  m313_: .asciiz "Getting into a  "
  m314_: .asciiz "pickle sucks!   "
  m315_: .asciiz "Zaro Bugs here! "
  m316: .asciiz "But zever nero! "
  m317: .asciiz "We deem you a   "
  m318: .asciiz "low priority    "
  m319: .asciiz "I feel better   "
  m3110: .asciiz "about my problem"
  m3111: .asciiz "I have MANY:    "
  m3112: .asciiz "CHARTS AND DATA "
  m3113: .asciiz "  Sassy is NOT  "
  m3114: .asciiz "  -_-Always-_-  "
  m3115: .asciiz "  ...Classy...  "




  m32_: .asciiz "TikTok girls    "
  m322: .asciiz "scare Putin.    "
  m323: .asciiz "Lo-Fi beats on  "
  m324: .asciiz "Hi-Fi streets.  "
  m325: .asciiz "No more water.  "
  m326: .asciiz "deemed too moist"
  m327: .asciiz "Philanthropists "
  m328: .asciiz "donate often    "
  m329: .asciiz "404-Error:      "
  m3210: .asciiz "Words Not Found "
  m3211: .asciiz "I hear what I   "
  m3212: .asciiz "say, don't play "
  m3213: .asciiz "Beer and Pretzel"
  m3214: .asciiz "The breakfast of"
  m3215: .asciiz "   Champions!   "




  m33_: .asciiz "Your tastes are "
  m332: .asciiz "quite viable    "
  m333: .asciiz "You'll Be framed"
  m334: .asciiz "with murder     "
  m335: .asciiz "Please, Please! "
  m336: .asciiz "who is a vector "
  m337: .asciiz "6th Graders will"
  m338: .asciiz "not enter my lab"
  m339: .asciiz "Explain the code"
  m3310: .asciiz "but dont show it"
  m3311: .asciiz "Walk me through "
  m3312: .asciiz "why this works  "
  m3313: .asciiz "Why does reality"
  m3314: .asciiz "   feel all so  "
  m3315: .asciiz "   Unnecessary  "




  m34_: .asciiz "Ya Know they    "
  m342: .asciiz "look very alike "
  m343: .asciiz "This man slowly "
  m344: .asciiz "loses his mind  "
  m345: .asciiz "I saw that guy  "
  m346: .asciiz "with hair & eyes"
  m347: .asciiz "I hope you smile"
  m348: .asciiz "just kidding :( "
  m349: .asciiz "What the oh! Dog"
  m3410: .asciiz "with da butter  "
  m3411: .asciiz "Not knowledgable"
  m3412: .asciiz "be smarter less "
  m3413: .asciiz "My messages     "
  m3414: .asciiz "never get to the"
  m3415: .asciiz "sender. IGNORED "




  m35_: .asciiz "Let's have a    "
  m352: .asciiz "serious talk ya?"
  m353: .asciiz "This has made me"
  m354: .asciiz "deeply upset    "
  m355: .asciiz "10 minutes is a "
  m356: .asciiz "long time for me"
  m357: .asciiz "Slow. Sloopy.   "
  m358: .asciiz "Uncoordinated.  "
  m359: .asciiz "There was a     "
  m3510: .asciiz "connection. Pain"
  m3511: .asciiz "Only time will  "
  m3512: .asciiz "tell. Delay it. "
  m3513: .asciiz "What's Poppin   "
  m3514: .asciiz "its ya boy 6502 "
  m3515: .asciiz "Microprocessor  "




  m36_: .asciiz "You can't lick  "
  m362: .asciiz "your lips and   "
  m363: .asciiz "Just stare at me"
  m364: .asciiz "STOP LOOKIN'    "
  m365: .asciiz "Deal to show its"
  m366: .asciiz "the status quo  "
  m367: .asciiz "ICE Brings the  "
  m368: .asciiz "heat. Flee!     "
  m369: .asciiz "How valuable is "
  m3610: .asciiz "your pinky?     "
  m3611: .asciiz "Just a short    "
  m3612: .asciiz "trial. Nothing +"
  m3613: .asciiz "BRUUUHHHH! I    "
  m3614: .asciiz "even bought girl"
  m3615: .asciiz "scout cookies!  "




  m37_: .asciiz "Plutonium is my "
  m372: .asciiz "candy of choice "
  m373: .asciiz "This pic goes   "
  m374: .asciiz "dummy hard tho  "
  m375: .asciiz "Amicus Curiae   "
  m376: .asciiz "for the soup    "
  m377: .asciiz "2 years in jail "
  m378: .asciiz "2 years of fun! "
  m379: .asciiz "The conundrum is"
  m3710: .asciiz "pictured below  "
  m3711: .asciiz "IM BOUT TO BREW "
  m3712: .asciiz "A HOT STEW      "
  m3713: .asciiz "Even the capitan"
  m3714: .asciiz "of winter wears "
  m3715: .asciiz "long socks.     "




  m38_: .asciiz "Toxic waste     "
  m382: .asciiz "flows like water"
  m383: .asciiz "Kerosene burns  "
  m384: .asciiz "the evidence    )"
  m385: .asciiz "     Racialy    "
  m386: .asciiz "Motivated !=14th"
  m387: .asciiz "Self driving car"
  m388: .asciiz "kills jaywalkers"
  m389: .asciiz "Make un cube    "
  m3810: .asciiz "vatch it bounce!"
  m3811: .asciiz "This potion make"
  m3812: .asciiz "A da big booty  "
  m3813: .asciiz "Italian Plumbers"
  m3814: .asciiz "Mario Brothers  "
  m3815: .asciiz "Kill a turtle   "




  m39_: .asciiz "You are as      "
  m392: .asciiz "meticulous as I "
  m393: .asciiz "I will keep you "
  m394: .asciiz "in the fight    "
  m395: .asciiz "I'll be waiting "
  m396: .asciiz "for you         "
  m397: .asciiz "Sometimes the   "
  m398: .asciiz "direct route    "
  m399: .asciiz "lacks finnese   "
  m3910: .asciiz "yet is still   "
  m3911: .asciiz "remarkably     "
  m3912: .asciiz "effective      "
  m3913: .asciiz "This heist will"
  m3914: .asciiz "Require through"
  m3915: .asciiz "Preperation... "




  m40_: .asciiz "Gamers don't    "
  m402: .asciiz "play with love  "
  m403: .asciiz "PvZ jazz music  "
  m404: .asciiz "got me bopin'   "
  m405: .asciiz "All for one and "
  m406: .asciiz "one for all!    "
  m407: .asciiz "as you sow, so  "
  m408: .asciiz "shall you reap  "
  m409: .asciiz "I like the way  "
  m4010: .asciiz "you're thinking "
  m4011: .asciiz "This trojan is  "
  m4012: .asciiz "painless        "
  m4013: .asciiz "    Always      "
  m4014: .asciiz "      Be        "
  m4015: .asciiz "   Prepared     "




  m41_: .asciiz "Working for the "
  m412_: .asciiz "FBI backfires   "
  m413_: .asciiz "Bootlegging     "
  m414_: .asciiz "Boozer right by "
  m415_: .asciiz "My temperature  "
  m416: .asciiz "rised. Fans?    "
  m417: .asciiz "The sly fox     "
  m418: .asciiz "laughs violently"
  m419: .asciiz "I get up and    "
  m4110: .asciiz "close my eyes  "
  m4111: .asciiz "I am sitting in"
  m4112: .asciiz "the morning at "
  m4113: .asciiz "the diner on   "
  m4114: .asciiz "the corner I am"
  m4115: .asciiz "waiting at the "




  m42_: .asciiz "Looking Backward"
  m422: .asciiz "Explosion loud  "
  m423: .asciiz "Minimum wage up "
  m424: .asciiz "Max wage down to"
  m425: .asciiz "Cook food quick "
  m426: .asciiz "but its cold    "
  m427: .asciiz "Kale ends more  "
  m428: .asciiz "diets than McDs "
  m429: .asciiz "I've been to    "
  m4210: .asciiz "your house. Its"
  m4211: .asciiz "Remember have a"
  m4212: .asciiz "six flags day! "
  m4213: .asciiz "I'm faster than"
  m4214: .asciiz "electron drift "
  m4215: .asciiz "speed! (1 mm/s)"




  m43_: .asciiz "The papers burn "
  m432: .asciiz "the crimes rise "
  m433: .asciiz "A fun game for  "
  m434: .asciiz "VR: Real Life   "
  m435: .asciiz "Roller Coasters "
  m436: .asciiz "and deregulation"
  m437: .asciiz "Ronald Regan and"
  m438: .asciiz "a rising deficit"
  m439: .asciiz "Enron loves your"
  m4310: .asciiz "Books. Cooked.  "
  m4311: .asciiz "The SEC hates   "
  m4312: .asciiz "burned books too"
  m4313: .asciiz "Sleeping next to"
  m4314: .asciiz "a ladder? Does  "
  m4315: .asciiz "your head hurt  "




  m44_: .asciiz "Chocolate chips "
  m442: .asciiz "are a facade    "
  m443: .asciiz "Drink heavily   "
  m444: .asciiz "no keys in reach"
  m445: .asciiz "The rubber      "
  m446: .asciiz "industry is fire"
  m447: .asciiz "A pen with no   "
  m448: .asciiz "ink has no use  "
  m449: .asciiz "Yesterday I was "
  m4410: .asciiz "doin my car.Wait"
  m4411: .asciiz "It was a total  "
  m4412: .asciiz "pain. I won tho "
  m4413: .asciiz "Chess is ping-  "
  m4414: .asciiz "pong- if it was "
  m4415: .asciiz "checkers        "




  m45_: .asciiz "Just dunk on the"
  m452: .asciiz "substitute judge"
  m453: .asciiz "Just don't do it"
  m454: .asciiz "-Me to the IRS  "
  m455: .asciiz "Why do you turn "
  m456: .asciiz "off your phone? "
  m457: .asciiz "Why do people   "
  m458: .asciiz "take selfies.   "
  m459: .asciiz "If a snowman    "
  m4510: .asciiz "melts its water "
  m4511: .asciiz "If dragons dont "
  m4512: .asciiz "exist, then who "
  m4513: .asciiz "Imagine if there"
  m4514: .asciiz "were shoe people"
  m4515: .asciiz "would they stink"




  m46_: .asciiz "Every day you   "
  m462: .asciiz "eat food        "
  m463: .asciiz "Mouse V Mouse   "
  m464: .asciiz "computer v cheze"
  m465: .asciiz "Cyberbullied?   "
  m466: .asciiz "No more Wi-Fi   "
  m467: .asciiz "Why do old      "
  m468: .asciiz "people shrink   "
  m469: .asciiz "My calc textbook"
  m4610: .asciiz "stops bullets   "
  m4611: .asciiz "Life is not like"
  m4612: .asciiz "chocolate       "
  m4613: .asciiz "Throwing axe and"
  m4614: .asciiz "the tax man     "
  m4615: .asciiz "crime either way"




  m47_: .asciiz "To scared to    "
  m472: .asciiz "Jump? Then do it"
  m473: .asciiz "You guys know   "
  m474: .asciiz "Scotland. Wow   "
  m475: .asciiz "I pull up at the"
  m476: .asciiz "afterparty.     "
  m477: .asciiz "Running nose.   "
  m478: .asciiz "leaking nose too"
  m479: .asciiz "    Capybara    "
  m4710: .asciiz "                "
  m4711: .asciiz "Glass is clear  "
  m4712: .asciiz "Brass is not    "
  m4713: .asciiz "a pencil eraser "
  m4714: .asciiz "doesn't work    "
  m4715: .asciiz "on blood        "




  m48_: .asciiz "In a COD Lobby? "
  m482: .asciiz "cover your ears "
  m483: .asciiz "XBOX or PS      "
  m484: .asciiz "Switch for me   "
  m485: .asciiz "Robtics laptops "
  m486: .asciiz "you can see it  "
  m487: .asciiz "Wi-Fi network is"
  m488: .asciiz "not secure      "
  m489: .asciiz "Ya can't catch  "
  m4810: .asciiz "Ya boyo goyo    "
  m4811: .asciiz "No standing to  "
  m4812: .asciiz "sue, just due   "
  m4813: .asciiz "Bumbers are 100%"
  m4814: .asciiz "Yeah, I checked "
  m4815: .asciiz "they were good  "





  m49_: .asciiz "The darkness    "
  m492: .asciiz "I know it well  "
  m493: .asciiz "Have the lambs  "
  m494: .asciiz "stopped screamin"
  m495: .asciiz "    You're no   "
  m496: .asciiz "     messiah    "
  m497: .asciiz "I feel right at "
  m498: .asciiz "home: psych ward"
  m499: .asciiz "I don't do this "
  m4910: .asciiz "often but, can  "
  m4911: .asciiz "Your eyes stay  "
  m4912: .asciiz "closed for now  "
  m4913: .asciiz "I'm having an   "
  m4914: .asciiz "old friend for  "
  m4915: .asciiz "diner           "




  m50_: .asciiz "The Whooper wave"
  m502: .asciiz "Is upon us      "
  m503: .asciiz "Its in the main "
  m504: .asciiz "method bozo!    "
  m505: .asciiz "you sat here    "
  m506: .asciiz "cause cool club "
  m507: .asciiz "Whats goin on   "
  m508: .asciiz "here?!?!?!?!?!?!"
  m509: .asciiz "This is gonna be"
  m5010: .asciiz "platinum. PL    "
  m5011: .asciiz "Your neck is    "
  m5012: .asciiz "easy to break   "
  m5013: .asciiz "Go on name every"
  m5014: .asciiz "boat. Go on     "
  m5015: .asciiz "yeah, thats what"



  m51_: .asciiz "Give it about   "
  m512_: .asciiz "the same # juice"
  m513_: .asciiz "The middle man  "
  m514_: .asciiz "was outside us  "
  m515_: .asciiz "Allergic to     "
  m516: .asciiz "horse > 50 miles"
  m517: .asciiz "Boxing ring vs  "
  m518: .asciiz "dolphin.        "
  m519: .asciiz "Bruh this game  "
  m5110: .asciiz "is racist       "
  m5111: .asciiz "defamation is my"
  m5112: .asciiz "ally in war     "
  m5113: .asciiz "Requested cheese"
  m5114: .asciiz "burger with bun "
  m5115: .asciiz "recived pickle  "




  m52_: .asciiz "Libel & Slander "
  m522: .asciiz "Pen beats sword?"
  m523: .asciiz "d-f-d-d-f-d     "
  m524: .asciiz "is it raining?  "
  m525: .asciiz "Look at all the "
  m526: .asciiz "blinky lights!  "
  m527: .asciiz "01110111 thats  "
  m528: .asciiz "binary for w www"
  m529: .asciiz "The rivers flow "
  m5210: .asciiz "in the desert   "
  m5211: .asciiz "Focus. look     "
  m5212: .asciiz "at the flame    "
  m5213: .asciiz "Glance into the "
  m5214: .asciiz "future with the "
  m5215: .asciiz "flame....       "





  m53_: .asciiz "Right-Wing Hip  "
  m532: .asciiz "hop goes hard   "
  m533: .asciiz "Is that part of "
  m534: .asciiz "the heart?      "
  m535: .asciiz "I have 2,000,000"
  m536: .asciiz "in rise of kings"
  m537: .asciiz "WYR: Dust Bowl  "
  m538: .asciiz "or 1800s Worker "
  m539: .asciiz "Housing market  "
  m5310: .asciiz "crash of 2008 =("
  m5311: .asciiz "Extrude from dye"
  m5312: .asciiz "green to blue   "
  m5313: .asciiz "In the midst of "
  m5314: .asciiz "chaos, there is "
  m5315: .asciiz "also opportunity"




  m54_: .asciiz "The wise one    "
  m542: .asciiz "avoids the war  "
  m543: .asciiz "Be where your   "
  m544: .asciiz "enemy is not!   "
  m545: .asciiz "it tastes like  "
  m546: .asciiz "cheese v2.0.4   "
  m547: .asciiz "Hello, it's me  "
  m548: .asciiz "Jack Nicholson  "
  m549: .asciiz "I'm on set for  "
  m5410: .asciiz "The Departed and"
  m5411: .asciiz "I need a copy of"
  m5412: .asciiz "Yoshi's Woolly  "
  m5413: .asciiz "World for the   "
  m5414: .asciiz "Nintendo 64. I  "
  m5415: .asciiz "need this game  "




  m55_: .asciiz "Fear = Zepplin  "
  m552: .asciiz "in BTD6         "
  m553: .asciiz "My email has    "
  m554: .asciiz "90,000 messages "
  m555: .asciiz "How do I unlock "
  m556: .asciiz "these fortunes  "
  m557: .asciiz "Tape measures   "
  m558: .asciiz "snap back well  "
  m559: .asciiz "Oreo's on the   "
  m5510: .asciiz "table......gone "
  m5511: .asciiz "Theft is best   "
  m5512: .asciiz "durring midnight"
  m5513: .asciiz "Satellites delay"
  m5514: .asciiz "the speed of my "
  m5515: .asciiz "video games     "





  m56_: .asciiz "Ya know, I'll   "
  m562: .asciiz "take the free PR"
  m563: .asciiz "The daily       "
  m564: .asciiz "happenings do   "
  m565: .asciiz "To look like one"
  m566: .asciiz "steal the photo "
  m567: .asciiz "Your not rockin "
  m568: .asciiz "with that?      "
  m569: .asciiz "Said actually   "
  m5610: .asciiz "thats crazy!!!!"
  m5611: .asciiz "Practice like   "
  m5612: .asciiz "you lose        "
  m5613: .asciiz "See her once    "
  m5614: .asciiz "mind impression "
  m5615: .asciiz "bad memory      "





  m57_: .asciiz "Touch the wire  "
  m572: .asciiz "electrical shock"
  m573: .asciiz "Lets go through "
  m574: .asciiz "the chronicles  "
  m575: .asciiz "I heard you are "
  m576: .asciiz "in urgent need  "
  m577: .asciiz "I set you up    "
  m578: .asciiz "reamin still    "
  m579: .asciiz "Take the ball,  "
  m5710: .asciiz "I bounce it!    "
  m5711: .asciiz "Beep-Bop-Booop  "
  m5712: .asciiz "Flip-Phone      "
  m5713: .asciiz "Like on your    "
  m5714: .asciiz "fridge. hm?     "
  m5715: .asciiz "SHUT UP!!!!!!!!!"





  m58_: .asciiz "It starts weak  "
  m582: .asciiz "replace after   "
  m583: .asciiz "It's the same   "
  m584: .asciiz "thing. Why?     "
  m585: .asciiz "Dude is twisted "
  m586: .asciiz "-Er Here!    Ov-"
  m587: .asciiz "Moral Compass   "
  m588: .asciiz "now gone        "
  m589: .asciiz "Roughly 57%     "
  m5810: .asciiz "Solid Ratio!    "
  m5811: .asciiz "Consider it 56% "
  m5812: .asciiz "Now! HA!        "
  m5813: .asciiz "Save all of     "
  m5814: .asciiz "the emotions for"
  m5815: .asciiz "the jury        "





  m59_: .asciiz "Gotta Catch em  "
  m592: .asciiz "all! Pokemon!   "
  m593: .asciiz "It's the same   "
  m594: .asciiz "thing. Why?     "
  m595: .asciiz "Dude is twisted "
  m596: .asciiz "-Er Here!    Ov-"
  m597: .asciiz "Moral Compass   "
  m598: .asciiz "now gone        "
  m599: .asciiz "Roughly 57%     "
  m5910: .asciiz "Solid Ratio!    "
  m5911: .asciiz "Consider it 56% "
  m5912: .asciiz "Now! HA!        "
  m5913: .asciiz "Save all of     "
  m5914: .asciiz "the emotions for"
  m5915: .asciiz "the jury        "




  m60_: .asciiz "Erratic behavior"
  m602: .asciiz "elevator decends"
  m603: .asciiz "The note. Whats "
  m604: .asciiz "on it nothing!  "
  m605: .asciiz "WAIT! You didn't"
  m606: .asciiz "think to inquire"
  m607: .asciiz "I just can't    "
  m608: .asciiz "my mind is b<7!3"
  m609: .asciiz "BofA is the     "
  m6010: .asciiz "WORST!          "
  m6011: .asciiz "Battery Dead =  "
  m6012: .asciiz "No workey? :(   "
  m6013: .asciiz "Yo-Yo on the car"
  m6014: .asciiz "earns you a scar"
  m6015: .asciiz "youve been Yo-yo"





  m61_: .asciiz "Wait wait wait! "
  m612_: .asciiz "u got no friends"
  m613_: .asciiz "You really exude"
  m614_: .asciiz "big Ohio energy "
  m615_: .asciiz "Just look at him"
  m616: .asciiz "he speaks it!   "
  m617: .asciiz "Ay Yo! who wants"
  m618: .asciiz "da bread bag?   "
  m619: .asciiz "Buy Christmas   "
  m6110: .asciiz "a day late!     "
  m6111: .asciiz "Eat fruit strip "
  m6112: .asciiz "cautiously      "
  m6113: .asciiz "I'm just gonna  "
  m6114: .asciiz "remain silent   "
  m6115: .asciiz "5th Amendment   "




  m62_: .asciiz "Got that   Paw-"
  m622: .asciiz "Patrol band-aid"
  m623: .asciiz "The note. Whats "
  m624: .asciiz "on it nothing!  "
  m625: .asciiz "You're Bluffing "
  m626: .asciiz "*Pushes button* "
  m627: .asciiz "Lights Out. The "
  m628: .asciiz "escape begins   "
  m629: .asciiz "It recorded the "
  m6210: .asciiz "wrong audio data"
  m6211: .asciiz "  Kickstart &   "
  m6212: .asciiz "     Restart    "
  m6213: .asciiz "I've commited   "
  m6214: .asciiz "100%. Everything"
  m6215: .asciiz "on the table... "





  m63_: .asciiz "Revenge is more "
  m632: .asciiz "sweet than sugar"
  m633: .asciiz "Oh! The 6502 is "
  m634: .asciiz "evolving! =>6503"
  m635: .asciiz "Black Knight    ""
  m636: .asciiz "Black Kite      "
  m637: .asciiz "Show me the way "
  m638: .asciiz "red carpet!     "
  m639: .asciiz "Iiiiitttt'ssss! "
  m6310: .asciiz "   Togedemaru   "
  m6311: .asciiz "John Is a man   "
  m6312: .asciiz "of focus...     "
  m6313: .asciiz "It's all to play"
  m6314: .asciiz "for. The heist  "
  m6315: .asciiz "commences now!  "


























  






  .org $fffc
  .word reset
  .word $cbcb
