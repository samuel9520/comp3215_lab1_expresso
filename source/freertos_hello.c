/*
 * Copyright (c) 2015, Freescale Semiconductor, Inc.
 * Copyright 2016-2017 NXP
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of the copyright holder nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/* FreeRTOS kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"

/* Freescale includes. */
#include "fsl_device_registers.h"
#include "fsl_debug_console.h"
#include "board.h"

#include "pin_mux.h"
#include <stdbool.h>
#include "clock_config.h"
/*******************************************************************************
 * Definitions
 ******************************************************************************/

/* Task priorities. */
#define RedLEDTaskPriority (tskIDLE_PRIORITY + 1)
#define BlueLEDTaskPriority (tskIDLE_PRIORITY + 1)

/* Timing Macros */
#define xMilliSecondOfTicks (configTICK_RATE_HZ/1000)


/*******************************************************************************
 * Prototypes
 ******************************************************************************/
static void BlueLEDTaskFunction(void *pvParameters);
static void RedLEDTaskFunction(void *pvParameters);

/*******************************************************************************
 * Code
 ******************************************************************************/
/*!
 * @brief Application entry point.
 */
int main(void)
{
    /* Init board hardware. */
    BOARD_InitPins();
    BOARD_BootClockRUN();
    //BOARD_InitDebugConsole();

    /* Create Tasks */
    xTaskCreate(BlueLEDTaskFunction, "Blue", configMINIMAL_STACK_SIZE, NULL, BlueLEDTaskPriority, NULL);
    xTaskCreate(RedLEDTaskFunction, "Red", configMINIMAL_STACK_SIZE, NULL, RedLEDTaskPriority, NULL);

    /* Start Scheduler */
    vTaskStartScheduler();

    /* Should Never Reach Here */
    for (;;)
        ;
}

/*!
 * @brief Task responsible for blinking blue led
 */
static void BlueLEDTaskFunction(void *pvParameters) {

	LED_BLUE_INIT(1);

	TickType_t xLastWakeTime;
	xLastWakeTime = xTaskGetTickCount();

	while(1) {
		vTaskDelayUntil(&xLastWakeTime, xMilliSecondOfTicks*100);
		LED_BLUE_TOGGLE();
	}
}

/*!
 * @brief Task responsible for blinking red led
 */
static void RedLEDTaskFunction(void *pvParameters) {

	LED_THREE_INIT(1);

	TickType_t xLastWakeTime;
	xLastWakeTime = xTaskGetTickCount();

	while(1) {
		vTaskDelayUntil(&xLastWakeTime, xMilliSecondOfTicks*500);
        LED_THREE_TOGGLE();
	}
}
