# Generated by Alpagut Sencer KARACA @Aydın-2018
STD_PERIPH_LIBS ?= ./STM32F10x_StdPeriph_Lib_V3.5.0
RTOS_LIBS ?= ./RTOS

# list of source files
SOURCES  = main1.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/CMSIS/CM3/DeviceSupport/ST/STM32F10x/system_stm32f10x.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_adc.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_bkp.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_can.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_cec.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_crc.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_dac.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_dbgmcu.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_dma.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_exti.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_flash.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_fsmc.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_gpio.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_i2c.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_iwdg.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_pwr.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_rcc.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_rtc.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_sdio.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_spi.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_tim.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_usart.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/stm32f10x_wwdg.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/src/misc.c
SOURCES += twilcd.c
SOURCES += delay.c
SOURCES += interface.c
SOURCES += usart.c
SOURCES += touch.c
SOURCES += $(STD_PERIPH_LIBS)/Libraries/CMSIS/CM3/DeviceSupport/ST/STM32F10x/startup/TrueSTUDIO/startup_stm32f10x_md.s
SOURCES += $(RTOS_LIBS)/Source/croutine.c
SOURCES += $(RTOS_LIBS)/Source/event_groups.c
SOURCES += $(RTOS_LIBS)/Source/list.c
SOURCES += $(RTOS_LIBS)/Source/queue.c
SOURCES += $(RTOS_LIBS)/Source/stream_buffer.c
SOURCES += $(RTOS_LIBS)/Source/tasks.c
SOURCES += $(RTOS_LIBS)/Source/timers.c
SOURCES += $(RTOS_LIBS)/Source/portable/GCC/ARM_CM3/port.c
SOURCES += $(RTOS_LIBS)/CMSIS/RTOS2/FreeRTOS/Source/freertos_evr.c
SOURCES += $(RTOS_LIBS)/Source/portable/MemMang/heap_2.c





# name for output binary files
PROJECT ?= led

# compiler, objcopy (should be in PATH)
CC = arm-none-eabi-gcc
OBJCOPY = arm-none-eabi-objcopy
SIZE = arm-none-eabi-size
# path to st-flash (or should be specified in PATH)
ST_FLASH ?= st-flash

# specify compiler flags
CFLAGS  = -g -O2 -Wall -Wno-unused-variable
CFLAGS += -T$(STD_PERIPH_LIBS)/Project/STM32F10x_StdPeriph_Template/TrueSTUDIO/STM3210B-EVAL/stm32_flash.ld
CFLAGS += -mlittle-endian -mthumb -mcpu=cortex-m4 -mthumb-interwork -specs=nano.specs -specs=nosys.specs 
CFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16
CFLAGS += -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER
CFLAGS += -Wl,--gc-sections
CFLAGS += -I.
CFLAGS += -I$(STD_PERIPH_LIBS)/Libraries/CMSIS/CM3/DeviceSupport/ST/STM32F10x/
CFLAGS += -I$(STD_PERIPH_LIBS)/Libraries/CMSIS/CM3/CoreSupport
CFLAGS += -I$(STD_PERIPH_LIBS)/Libraries/STM32F10x_StdPeriph_Driver/inc
CFLAGS += -I$(RTOS_LIBS)/Source/
CFLAGS += -I$(RTOS_LIBS)/Source/include
CFLAGS += -I$(RTOS_LIBS)/Source/portable/GCC/ARM_CM3/
CFLAGS += -I$(RTOS_LIBS)/Config/ARMCM/
CFLAGS += -I$(RTOS_LIBS)/CMSIS/RTOS2/FreeRTOS/Include   
CFLAGS += -I$(RTOS_LIBS)/CMSIS/RTOS2/FreeRTOS/Include1

OBJS = $(SOURCES:.c=.o)

all: $(PROJECT).elf

# compile
$(PROJECT).elf: $(SOURCES)
	$(CC) $(CFLAGS) $^ -o $@
	$(OBJCOPY) -O ihex $(PROJECT).elf   $(PROJECT).hex
	$(OBJCOPY) -O binary $(PROJECT).elf $(PROJECT).bin 
	@echo $(PROJECT).bin "file size is (kB) :" 
	@stat -L -c %s $(PROJECT).bin
	@$(SIZE) $(PROJECT).elf
# remove binary files
clean:
	@echo "************************************"
	@echo -e '\e[91mCLEANING SOLUTIONS\e[39m'
	@echo "------------------------------------"
	@rm -f *.o *.elf *.hex *.bin
	@echo Done!

# flash
burn:
	@echo "************************************"
	@echo -e '\e[5mBURNING\e[25m'
	@echo "------------------------------------"
	$(ST_FLASH) --reset write $(PROJECT).bin 0x8000000
	@echo Done !
erase:
	@echo "************************************"
	@echo -e '\e[91mFLASH ERASE\e[39m'
	@echo "------------------------------------"
	@$(ST_FLASH) erase 
	@echo Done!
deploy:
	@echo "************************************"
	@echo -e '\e[5mDEPLOY SEQUENCE INITIALIZED\e[25m'
	@echo "------------------------------------"
	@make clean && make all && make burn
debug:
	@echo "************************************"
	@echo "DEBUG INTERFACE"
	@echo "------------------------------------"
	@arm-none-eabi-gdb $(PROJECT).elf

	

	

