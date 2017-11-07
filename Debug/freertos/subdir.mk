################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freertos/croutine.c \
../freertos/event_groups.c \
../freertos/fsl_tickless_lptmr.c \
../freertos/fsl_tickless_systick.c \
../freertos/heap_4.c \
../freertos/list.c \
../freertos/port.c \
../freertos/queue.c \
../freertos/tasks.c \
../freertos/timers.c 

OBJS += \
./freertos/croutine.o \
./freertos/event_groups.o \
./freertos/fsl_tickless_lptmr.o \
./freertos/fsl_tickless_systick.o \
./freertos/heap_4.o \
./freertos/list.o \
./freertos/port.o \
./freertos/queue.o \
./freertos/tasks.o \
./freertos/timers.o 

C_DEPS += \
./freertos/croutine.d \
./freertos/event_groups.d \
./freertos/fsl_tickless_lptmr.d \
./freertos/fsl_tickless_systick.d \
./freertos/heap_4.d \
./freertos/list.d \
./freertos/port.d \
./freertos/queue.d \
./freertos/tasks.d \
./freertos/timers.d 


# Each subdirectory must supply rules for building sources it contributes
freertos/%.o: ../freertos/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCR_INTEGER_PRINTF -D__MTB_DISABLE -DDEBUG -DFSL_RTOS_FREE_RTOS -DFRDM_KW41Z -DFREEDOM -DSDK_DEBUGCONSOLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DSDK_OS_FREE_RTOS -DCPU_MKW41Z512VHT4 -DCPU_MKW41Z512VHT4_cm0plus -D__NEWLIB__ -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries\source" -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries" -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries\drivers" -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries\CMSIS" -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries\freertos" -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries\board" -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries\utilities" -I"C:\Users\samue\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_rtos_examples_freertos_hello_standard_libraries\startup" -O0 -fno-common -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


