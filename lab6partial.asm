DRIVE_STRAIGHT
AND R0, R0, #0     ; Clear R0 to prepare for setting WDCR to 0000
STI R0, R5         ; Indirectly store 0000 into WDCR to drive straight
BR CHECK_SENSORS

TURN_RIGHT
AND R0, R0, #0     ; Clear R0
ADD R0, R0, #5     ; Prepare R0 with the value 0101 for turning right
STI R0, R5         ; Indirectly store 0101 into WDCR
BR CHECK_SENSORS

TURN_LEFT
AND R0, R0, #0     ; Clear R0
ADD R0, R0, #10    ; Prepare R0 with the value 1010 for turning left
STI R0, R5         ; Indirectly store 1010 into WDCR
BR CHECK_SENSORS

TURN_WHAT
AND R0, R0, #0     ; Clear R0
ADD R0, R0, #15    ; Prepare R0 with the value 1111 for stopping or safe default
STI R0, R5         ; Indirectly store 1111 into WDCR
BR CHECK_SENSORS
