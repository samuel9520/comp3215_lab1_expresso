################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/freertos_hello.c \
../source/mtb.c 

OBJS += \
./source/freertos_hello.o \
./source/mtb.o 

C_DEPS += \
./source/freertos_hello.d \
./source/mtb.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCR_INTEGER_PRINTF -D__MTB_DISABLE -DDEBUG -DFSL_RTOS_FREE_RTOS -DFRDM_KW41Z -DFREEDOM -DSDK_DEBUGCONSOLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DSDK_OS_FREE_RTOS -DCPU_MKW41Z512VHT4 -DCPU_MKW41Z512VHT4_cm0plus -D__NEWLIB__ -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries\source" -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries" -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries\drivers" -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries\CMSIS" -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries\freertos" -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries\board" -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries\utilities" -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries\startup" -O0 -fno-common -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


