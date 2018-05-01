################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/cores/arduino/USB/CDC.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/cores/arduino/USB/PluggableUSB.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/cores/arduino/USB/USBCore.cpp 

C_SRCS += \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/cores/arduino/USB/samd21_host.c 

C_DEPS += \
./core/core/USB/samd21_host.c.d 

AR_OBJ += \
./core/core/USB/CDC.cpp.o \
./core/core/USB/PluggableUSB.cpp.o \
./core/core/USB/USBCore.cpp.o \
./core/core/USB/samd21_host.c.o 

CPP_DEPS += \
./core/core/USB/CDC.cpp.d \
./core/core/USB/PluggableUSB.cpp.d \
./core/core/USB/USBCore.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
core/core/USB/CDC.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/cores/arduino/USB/CDC.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -mcpu=cortex-m0plus -mthumb -c -g -Os -Wall -Wextra -std=gnu++11 -ffunction-sections -fdata-sections -fno-threadsafe-statics -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -DF_CPU=48000000L -DARDUINO=10802 -DARDUINO_SAMD_MKR1000 -DARDUINO_ARCH_SAMD -D__SAMD21G18A__ -DUSB_VID=0x2341 -DUSB_PID=0x804e -DUSBCON '-DUSB_MANUFACTURER="Arduino LLC"' '-DUSB_PRODUCT="Arduino MKR1000"' "-I/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/CMSIS/4.5.0/CMSIS/Include/" "-I/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/CMSIS-Atmel/1.1.0/CMSIS/Device/ATMEL/"  -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/variants/mkr1000" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/libraries/SPI" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/WiFi101/0.15.1" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/WiFi101/0.15.1/src" -I"/Users/joeygough/Documents/sloeber-workspace/localServer/libraries/ArduinoThread" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/core/USB/PluggableUSB.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/cores/arduino/USB/PluggableUSB.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -mcpu=cortex-m0plus -mthumb -c -g -Os -Wall -Wextra -std=gnu++11 -ffunction-sections -fdata-sections -fno-threadsafe-statics -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -DF_CPU=48000000L -DARDUINO=10802 -DARDUINO_SAMD_MKR1000 -DARDUINO_ARCH_SAMD -D__SAMD21G18A__ -DUSB_VID=0x2341 -DUSB_PID=0x804e -DUSBCON '-DUSB_MANUFACTURER="Arduino LLC"' '-DUSB_PRODUCT="Arduino MKR1000"' "-I/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/CMSIS/4.5.0/CMSIS/Include/" "-I/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/CMSIS-Atmel/1.1.0/CMSIS/Device/ATMEL/"  -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/variants/mkr1000" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/libraries/SPI" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/WiFi101/0.15.1" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/WiFi101/0.15.1/src" -I"/Users/joeygough/Documents/sloeber-workspace/localServer/libraries/ArduinoThread" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/core/USB/USBCore.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/cores/arduino/USB/USBCore.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -mcpu=cortex-m0plus -mthumb -c -g -Os -Wall -Wextra -std=gnu++11 -ffunction-sections -fdata-sections -fno-threadsafe-statics -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -DF_CPU=48000000L -DARDUINO=10802 -DARDUINO_SAMD_MKR1000 -DARDUINO_ARCH_SAMD -D__SAMD21G18A__ -DUSB_VID=0x2341 -DUSB_PID=0x804e -DUSBCON '-DUSB_MANUFACTURER="Arduino LLC"' '-DUSB_PRODUCT="Arduino MKR1000"' "-I/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/CMSIS/4.5.0/CMSIS/Include/" "-I/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/CMSIS-Atmel/1.1.0/CMSIS/Device/ATMEL/"  -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/variants/mkr1000" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/libraries/SPI" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/WiFi101/0.15.1" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/WiFi101/0.15.1/src" -I"/Users/joeygough/Documents/sloeber-workspace/localServer/libraries/ArduinoThread" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/core/USB/samd21_host.c.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/cores/arduino/USB/samd21_host.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -mcpu=cortex-m0plus -mthumb -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DF_CPU=48000000L -DARDUINO=10802 -DARDUINO_SAMD_MKR1000 -DARDUINO_ARCH_SAMD -D__SAMD21G18A__ -DUSB_VID=0x2341 -DUSB_PID=0x804e -DUSBCON '-DUSB_MANUFACTURER="Arduino LLC"' '-DUSB_PRODUCT="Arduino MKR1000"' "-I/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/CMSIS/4.5.0/CMSIS/Include/" "-I/Applications/sloeber.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/CMSIS-Atmel/1.1.0/CMSIS/Device/ATMEL/"  -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/variants/mkr1000" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/samd/1.6.17/libraries/SPI" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/WiFi101/0.15.1" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/WiFi101/0.15.1/src" -I"/Users/joeygough/Documents/sloeber-workspace/localServer/libraries/ArduinoThread" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


