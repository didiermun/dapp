.orig x3000

;; main loop Label
CHECK_SENSORS

LDI R0, LSDR   ; load data from sensor register LSDR

;; Mask LR sensor inputs
AND R0,R0,#3   ; R0 = LOWER 2 BITS SENSOR inputs ONLY

ADD R1, R0, #-3   ; LR = 11 means on track
      ; So, if R1 = R0- 3 = 0, on the track
BRz DRIVE_STRAIGHT  ; command drive straight

;; Test LR=01 (off track to left)
AND R2, R0, #1     ; Isolate right bit
BRz TURN_LEFT      ; If right bit is 0 (and left bit must be 1), turn left

;; Test LR=10 (off track to right)
AND R3, R0, #2     ; Isolate left bit
BRz TURN_RIGHT     ; If left bit is 0 (and right bit must be 1), turn right

;; Test LR=00 (completely off track)
BRnp TURN_WHAT     ; If neither bit is set, handle accordingly

;; loop back to read sensors again
BR CHECK_SENSORS

DRIVE_STRAIGHT

AND R0, R0, #0
ADD R0, R0, #0    ; WDCR = 0000, drive straight
STI R0, WDCR
ST R0, LAST_COMMAND
BR CHECK_SENSORS

TURN_RIGHT
AND R0, R0, #0
ADD R0, R0, #5    ; WDCR = 0101, turn right (left-front and right-rear backward)
STI R0, WDCR
ST R0, LAST_COMMAND
BR CHECK_SENSORS

TURN_LEFT
AND R0, R0, #0
ADD R0, R0, #10   ; WDCR = 1010, turn left (right-front and left-rear backward)
STI R0, WDCR
ST R0, LAST_COMMAND
BR CHECK_SENSORS

TURN_WHAT
;; Decide based on previous commands or a default safe behavior, for example, stop or turn right to search for track
AND R0, R0, #0     ; Clear R0
ADD R0, R0, #15   ; WDCR = 1111, for example, stop or any safe default
STI R0, WDCR
ST R0, LAST_COMMAND
BR CHECK_SENSORS

;; always use HALT at the end of your main program
HALT

;; The following section will be data definition
;; LAST_COMMAND was initialized to go straight.
;; It should be used to store the last motor commands.
LAST_COMMAND
.FILL x00ff

;;; Don't change the following definitions for sensors and motor commands
LSDR
.FILL x4000
WDCR
.FILL x4010

;; You always need the following instruction to end the program
.END
