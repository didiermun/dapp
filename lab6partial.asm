.orig x3000

; Load the address of the LSDR into R2
LEA R2, LSDR
; Load the address of the WDCR into R3
LEA R3, WDCR

CHECK_SENSORS
; Load sensor value from memory-mapped LSDR
LDR R0, R2, #0 ; R0 now contains the sensor value

; Isolate the 2 LSBs (sensor inputs)
AND R0, R0, #3

; Check if on track (11)
ADD R1, R0, #-3 ; Subtract 3, if result is 0, then on track
BRz DRIVE_STRAIGHT

; Check if off track to the left (01)
ADD R1, R0, #-1 ; Subtract 1, if result is 0, then off to the left
BRz TURN_RIGHT

; Check if off track to the right (10)
ADD R1, R0, #-2 ; Subtract 2, if result is 0, then off to the right
BRz TURN_LEFT

; If none of the above, assume completely off track (00)
BR TURN_WHAT

DRIVE_STRAIGHT
; Set WDCR to drive straight (0000)
AND R1, R1, #0 ; Clear R1
STR R1, R3, #0 ; Store directly to WDCR, assuming direct address
BR CHECK_SENSORS

TURN_RIGHT
; Set WDCR to turn right (specific value needed, assuming 0001 for example)
AND R1, R1, #0
ADD R1, R1, #1 ; Example value for turning right
STR R1, R3, #0 ; Store directly to WDCR
BR CHECK_SENSORS

TURN_LEFT
; Set WDCR to turn left (specific value needed, assuming 0010 for example)
AND R1, R1, #0
ADD R1, R1, #2 ; Example value for turning left
STR R1, R3, #0 ; Store directly to WDCR
BR CHECK_SENSORS

TURN_WHAT
; Implement logic for completely off track, setting motors accordingly
; For example, stop or search for track
AND R1, R1, #0 ; Clear R1
; Assuming stopping or a safe default
STR R1, R3, #0 ; Store directly to WDCR
BR CHECK_SENSORS

HALT

LSDR .FILL x4000
WDCR .FILL x4010
.END
