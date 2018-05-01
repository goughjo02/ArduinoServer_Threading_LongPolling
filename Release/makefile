################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -f

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include libraries/WiFi101/src/utility/subdir.mk
-include libraries/WiFi101/src/spi_flash/source/subdir.mk
-include libraries/WiFi101/src/socket/source/subdir.mk
-include libraries/WiFi101/src/driver/source/subdir.mk
-include libraries/WiFi101/src/common/source/subdir.mk
-include libraries/WiFi101/src/bus_wrapper/source/subdir.mk
-include libraries/WiFi101/src/bsp/source/subdir.mk
-include libraries/WiFi101/src/subdir.mk
-include libraries/SPI/subdir.mk
-include libraries/ArduinoThread/subdir.mk
-include core/variant/subdir.mk
-include core/core/avr/subdir.mk
-include core/core/USB/subdir.mk
-include core/core/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
AR += \
/Users/joeygough/Documents/sloeber-workspace/localServer/Release/arduino.ar \

ELF += \
localServer.elf \

HEX += \
localServer.hex \


# All Target
all: localServer

# Tool invocations
localServer: $(HEX)
	@echo 'Building target: $@'
	@echo 'Printing size:'
	"/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-size" -A "/Users/joeygough/Documents/sloeber-workspace/localServer/Release/localServer.elf"
	@echo 'Finished building target: $@'
	@echo ' '

/Users/joeygough/Documents/sloeber-workspace/localServer/Release/arduino.ar: $(AR_OBJ)
	@echo 'Starting archiver'
	"/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-ar" rcs    /Users/joeygough/Documents/sloeber-workspace/localServer/Release/arduino.ar $(AR_OBJ)
	@echo 'Finished building: $@'
	@echo ' '

localServer.elf: $(LINK_OBJ) $(AR)
	@echo 'Starting combiner'
	"/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" "-L/Users/joeygough/Documents/sloeber-workspace/localServer/Release" -Os -Wl,--gc-sections -save-temps "-T/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/hardware/samd/1.6.17/variants/mkr1000/linker_scripts/gcc/flash_with_bootloader.ld" "-Wl,-Map,/Users/joeygough/Documents/sloeber-workspace/localServer/Release/localServer.map" --specs=nano.specs --specs=nosys.specs -mcpu=cortex-m0plus -mthumb -Wl,--cref -Wl,--check-sections -Wl,--gc-sections -Wl,--unresolved-symbols=report-all -Wl,--warn-common -Wl,--warn-section-align -o "/Users/joeygough/Documents/sloeber-workspace/localServer/Release/localServer.elf"   $(LINK_OBJ)  -Wl,--start-group "-L/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/CMSIS/4.5.0/CMSIS/Lib/GCC/" -larm_cortexM0l_math -lm  /Users/joeygough/Documents/sloeber-workspace/localServer/Release/arduino.ar  -Wl,--end-group
	@echo 'Finished building: $@'
	@echo ' '

localServer.hex: $(ELF)
	@echo 'Create eeprom image'
	${A.RECIPE.OBJCOPY.BIN.PATTERN}
	${A.RECIPE.OBJCOPY.HEX.PATTERN}
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(PDE_DEPS)$(C_DEPS)$(AR)$(CC_DEPS)$(AR_OBJ)$(C++_DEPS)$(LINK_OBJ)$(CXX_DEPS)$(ASM_DEPS)$(HEX)$(INO_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(ELF)$(CPP_DEPS)
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
