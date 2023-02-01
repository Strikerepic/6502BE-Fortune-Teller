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





  
MESSAGE_PRINT_TOPLINE14:
  cpx #$FF
  beq WARP_JUMP
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
  beq WARP_JUMP
  lda m14,x
  beq PRE_PRE_PRINT14
  jsr LCD_WRITE_LETTER
  inx
  jmp MESSAGE_PRINT_BOTTOMLINE14



  









 




















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
  message13: .asciiz "go rob a muesum "
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
  m46: .asciiz "Be Happy! : --- "
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
  m52: .asciiz "newark is soon  "
  m53: .asciiz "Be careful this "
  m54: .asciiz "is classified:  "
  m55: .asciiz "Be alert: a man "
  m56: .asciiz "with a loud tie "
  m57: .asciiz "Cheer up, it's  "
  m58: .asciiz "getting worse : "
  m59: .asciiz "Great power     "
  m510: .asciiz "big power bill  "
  m511: .asciiz "oily toes boosts"
  m512: .asciiz "speed sharpley  "
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
  m72: .asciiz "i'm here to see "
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



 
  m8: .asciiz "An irish man is "
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
  m92: .asciiz "your a tree     "
  m93: .asciiz "agree with them "
  m94: .asciiz "it saves time   "
  m95: .asciiz "Am I ranting?   "
  m96: .asciiz "I hope so       "
  m97: .asciiz "BlackRock owns  "
  m98: .asciiz "all of society  "
  m99: .asciiz "Give me 6 hours "
  m910: .asciiz "to cut down a   "
  m911: .asciiz "tree and i'll   "
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
  m1015: .asciiz " ambidextrous  "




  m11: .asciiz "Imagination is a"
  m112: .asciiz "secret weapon   "
  m113: .asciiz "In event of fire"
  m114: .asciiz "yell fire loudly"
  m115: .asciiz "When is the end "
  m116: .asciiz "of the begining?"
  m117: .asciiz "Running down a  "
  m118: .asciiz "hill is easier  "
  m119: .asciiz "Luck has nothing"
  m1110: .asciiz "to do with this "
  m1111: .asciiz "Spectauclar     "
  m1112: .asciiz "achievemnt is   "
  m1113: .asciiz "always preceded "
  m1114: .asciiz "by unspectacular"
  m1115: .asciiz "preperation.    "




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
  m1311: .asciiz "the writting is "
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
  m149: .asciiz "The only constant"
  m1410: .asciiz "is change       "
  m1411: .asciiz "* * * * * * * * "
  m1412: .asciiz " * * * * * * * *"
  m1413: .asciiz "Debugged code   "
  m1414: .asciiz "always still has"
  m1415: .asciiz "fatal flaws...  "




  m15: .asciiz "watching watches"
  m152: .asciiz "tells no time   "
  m153: .asciiz "one doesn’t ask "
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




  m16: .asciiz "There's a quote:"
  m162: .asciiz "say it.         "
  m163: .asciiz "hot steel skids "
  m164: .asciiz "on thin ice     "
  m165: .asciiz "a lazy cat, lies"
  m166: .asciiz "the truth, flies"
  m167: .asciiz "move in chess   "
  m168: .asciiz "don’t in life   "
  m169: .asciiz "ski the slopes  "
  m1610: .asciiz "snow to slush   "
  m1611: .asciiz "speak softly,   "
  m1612: .asciiz "hydrate often   "
  m1613: .asciiz "To string a     "
  m1614: .asciiz "banjo one must  "
  m1615: .asciiz "hear the notes  "




  m17: .asciiz "No Shirt, No    "
  m172: .asciiz "shoes. Service! "
  m173: .asciiz "Dwarves Mines,  "
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
  m182: .asciiz "    Dogs Drool "
  m183: .asciiz "Blueberries are "
  m184: .asciiz "purple to me?   "
  m185: .asciiz "feel my motion  "
  m186: .asciiz "know my wave    "
  m187: .asciiz "crimes Ive done "
  m188: .asciiz "stories Ive told"
  m189: .asciiz "two people can’t"
  m1810: .asciiz "fit on 1 swing  "
  m1811: .asciiz "sink on boats   "
  m1812: .asciiz "float on water  "
  m1813: .asciiz "Statements are  "
  m1814: .asciiz "     Stated     "
  m1815: .asciiz "     Period!    "




  m19: .asciiz "To my haters:   "
  m192: .asciiz "stop lookin’    "
  m193: .asciiz "Boney fingers   "
  m194: .asciiz "grip strongly   "
  m195: .asciiz "Craft tools     "
  m196: .asciiz "Using sticks    "
  m197: .asciiz "To Create luck  "
  m198: .asciiz "act with skill  "
  m199: .asciiz "Invite me in    "
  m1910: .asciiz "please I’m cold "
  m1911: .asciiz "look at my chain"
  m1912: .asciiz "I’m BLINGIN’    "
  m1913: .asciiz "I gotta piss so "
  m1914: .asciiz "bad I can taste "
  m1915: .asciiz "IT!!!!!!!!!!!!!!"




  m20: .asciiz "To look closely "
  m202: .asciiz "view from afar  "
  m203: .asciiz "I’m insane      "
  m204: .asciiz "I’m just cracked"
  m205: .asciiz "Antlers are the "
  m206: .asciiz "branches of life"
  m207: .asciiz "Up is up when   "
  m208: .asciiz "down applies    "
  m209: .asciiz "Look at salad   "
  m2010: .asciiz "is it green?    "
  m2011: .asciiz "My hands turn as"
  m2012: .asciiz "time passes by  "
  m2013: .asciiz "Postpone        "
  m2014: .asciiz "     preordain  "
  m2015: .asciiz "      chronoboss"




  m21: .asciiz "Monkies go oh oh"
  m21_2: .asciiz "I go ah ah     "
  m21_3: .asciiz "Fruit snacks   "
  m21_4: .asciiz "cure my munchie"
  m21_5: .asciiz "I’m the DJ:    "
  m21_6: .asciiz "Disk Jockey    "
  m217: .asciiz "Hot dogs aren’t "
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













  




  .org $fffc
  .word reset
  .word $cbcb
