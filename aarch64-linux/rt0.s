.global _start
.extern main

.text
_start:
    ldr x0, [sp]
    add x1, sp, #8

    bl main

    mov w8, #93
    svc #0
