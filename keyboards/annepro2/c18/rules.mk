# MCU
MCU = cortex-m0plus
ARMV = 6
USE_FPU = no
MCU_FAMILY = HT32
MCU_SERIES = HT32F523xx
MCU_LDSCRIPT = HT32F52352_ANNEPRO2_C18
MCU_STARTUP = ht32f523xx

BOARD = ANNEPRO2_C18

# Bootloader selection
BOOTLOADER = custom
PROGRAM_CMD = annepro2_tools --boot $(BUILD_DIR)/$(TARGET).bin

# Debounce algorithms: Possible solution to misinterpretation of keypresses
DEBOUNCE_TYPE = sym_defer_pk
#DEBOUNCE_TYPE = eager_pk
#DEBOUNCE_TYPE = sym_eager_pk

# Anne Pro 2
SRC = \
	annepro2_ble.c \
	ap2_led.c \
	protocol.c \
	rgb_driver.c \
