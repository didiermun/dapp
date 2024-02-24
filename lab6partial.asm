.orig x3000

; Load addresses of LSDR and WDCR into registers for easy access
LEA R4, LSDR       ; Assume R4 is used for the address of LSDR
LEA R5, WDCR       ; Assume R5 is used for the address of WDCR

CHECK_SENSORS
LDI R0, LSDR       ; Load data from sensor register LSDR into R0

; Mask LR sensor inputs to get only the relevant bits
AND R0, R0, #3     ; R0 = LOWER 2 BITS SENSOR inputs ONLY

; Check sensor values and determine action
ADD R1, R0, #-3    ; Check if LR = 11 (on track)
BRz DRIVE_STRAIGHT

ADD R1, R0, #-1    ; Check if LR = 01 (off track to left)
BRz TURN_LEFT

ADD R1, R0, #-2    ; Check if LR = 10 (off track to right)
BRz TURN_RIGHT

; If none of the above, assume LR = 00 (completely off track)
BR TURN_WHAT

; Define actions for each sensor state
DRIVE_STRAIGHT
AND R0, R0, #0     ; Clear R0 to prepare for setting WDCR to 0000
ST R0, WDCR        ; Directly store 0000 into WDCR to drive straight
BR CHECK_SENSORS

TURN_RIGHT
AND R0, R0, #0     ; Clear R0
ADD R0, R0, #5     ; Prepare R0 with the value 0101 for turning right
ST R0, WDCR        ; Store 0101 into WDCR
BR CHECK_SENSORS

TURN_LEFT
AND R0, R0, #0     ; Clear R0
ADD R0, R0, #10    ; Prepare R0 with the value 1010 for turning left
ST R0, WDCR        ; Store 1010 into WDCR
BR CHECK_SENSORS

TURN_WHAT
AND R0, R0, #0     ; Clear R0
ADD R0, R0, #15    ; Prepare R0 with the value 1111 for stopping or safe default
ST R0, WDCR        ; Store 1111 into WDCR
BR CHECK_SENSORS

HALT

; Data section
LAST_COMMAND .FILL x00FF ; Initialize LAST_COMMAND to go straight (optional usage)
LSDR         .FILL x4000 ; Address of the Line Sensor Data Register
WDCR         .FILL x4010 ; Address of the Wheel Drive Control Register

.END
