;; 203 Lab#7 - Spring 2014
;; Play a musical note corresponding to the key pressed
;;
;; Sample code for students
 
 .ORIG X3000
 ;; initially, stop any note playing by setting FGCR to zero
 AND R0 ,R0,#0
 STI R0, FGCR_ADDR ; mem[x440a] = R0 = 0
 	; set FGCR = 0 to stop playing note
 BR WAIT_FOR_KEY
 ;;
 ;; Starting the main loop WAIT_FOR_KEY
 ;; Test KPDR until it is non-zero,  
 ;;indicating key pressed
WAIT_FOR_KEY
 LDI R0,KPDR_ADDR ; R0 = ascii(typed_key),  
 	; typed_key ranged from 1 to 9
 	; ascii code will be from x31 to x39
 BRz WAIT_FOR_KEY ; If zero, no key yet. Loop back
 ;;  
 ;; Got a key! RO = TYPED KEY.  
 ;; Convert the typed ASCII_# into an index (0-8)
 ;; which means that convert "1" to 0, "2" to 1, and etc.
 ;;
 ;; Write your convertion code here!!!!!!!!!!!!!!!
 ;; You will put the converted index number in R0!
 ;; R0 should be in the range of 0-8,  
 ;;
ADD R0, R0, #-12
ADD R0, R0, #-12
ADD R0, R0, #-12
ADD R0, R0, #-13

 ;; However, let's doubtcheck it for safety.
 ;; WRITE you codes here to check if R0 is out of range
 ;; If the number is out of range,
 ;; branch back to WAIT_FOR_KEY   
 ;;
BRn WAIT_FOR_KEY

ADD R1, R0, #-9	; Subtract 9 from R0
BRp WAIT_FOR_KEY ; If positive, R0 was greater than 8, wait for another key

 ;; now R0 in within 0 and 8, which means that  
 ;; the key_in number is within '1' and '9'.
 ;;
 ;; Write he next piece of codes to  
 ;; play the note by looking up the frequency.
 ;; Use LEA to load the starting address of note_freq_array  
 ;; into a register.

 ;; Then, use R0 as your index to find the corresponding frequency  
 ;; in the array and put that frequency in R1.
 ;; So, R1  = frequency in frequency array.
 ;;
 
 ;; Write this frequency to the frequency generator FGDR  
 ;; To play this musical note, you need to write any  
 ;; non-zero number to FGCR
 ;; Now the note will be played through the speaker!!

LEA R2, NOTE_FREQ_ARR   ; Load the address of the note frequency array into R2
ADD R2, R2, R0      	; Add the index to get the address of the specific note frequency
LDR R1, R2, #0      	; Load the frequency value into R1 from the array
STI R1, FGDR_ADDR   	; Store the frequency in FGDR to set the note frequency
AND R1, R1, #0      	; Clear R1
ADD R1, R1, #1      	; Set R1 to a non-zero value
STI R1, FGCR_ADDR   	; Write a non-zero value to FGCR to start playing the note
 
 ;;
 ;;
WAIT_FOR_RELEASE
 ;; Wait for release...
 ;; Check register KPSR - if it becomes zero, key is released
 ;; branch to KEY_RELEASED; otherwise,
 ;; if KPSR is non-zero, keep waiting..
 ;;  ;; Write your codes here

LDI R1, KPSR_ADDR  	; Load the value of KPSR into R1
BRz KEY_RELEASED  
BR WAIT_FOR_RELEASE  ; If KPSR is not zero, keep waiting
 ;;
 ;;
KEY_RELEASED  
 ;; Key has been released. Turn off tone.
 ;;
 ;; Set FGCR to zero
 ;; write your code here!
AND R0, R0, #0     	; Clear R0
STI R0, FGCR_ADDR  	; Write zero to FGCR to stop the note
 ;;
 BR WAIT_FOR_KEY  ; repeat
 ;;
 HALT
 
;; LABEL DEFINITIONS
;; 9 numeric keys
ASCII_KEYS
 .STRINGZ "123456789"
;; KPDR holds the most recent key to be pressed.
KPDR_ADDR    
 .FILL x4400
;;KPSR tracks the number of milliseconds since the last key was pressed.
KPSR_ADDR    
 .FILL x4402
;; FGDR specifes the frequency for the output tone.
FGDR_ADDR    
 .FILL x4408  
;; FGCR controls the behavior of the function generator.
FGCR_ADDR   ; If FGCR = 0, stop playing musical notes.
 .FILL x440a  ; non-zero FGCR will generate musical notes.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 9 frequencies for 9 key_in numbers
NOTE_FREQ_ARR  
 .FILL 440  ;; x01B8
 .FILL 466  ;; x01D2
 .FILL 493  ;; x01ED
 .FILL 523  ;; x020B
 .FILL 554  ;; x022A
 .FILL 587  ;; x024B
 .FILL 622  ;; x026E
 .FILL 698  ;; x02BA
 .FILL 783  ;; x030F
;;
;; RESERVE some memory for recording application
NOTE_ARRAY
 .BLKW 32
 .END
