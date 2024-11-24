//mb_6_1.c
//
//Code for Lab 6.1 for ECE 385
//ECE 385 Fall 2024
//
//16-bit accumulator, sum on hex1
// probably should edit blocks or something so that switches are on hex0
//
//10/17/2024 Ash Huang

#include <stdio.h>
#include <xparameters.h>
#include <xil_types.h>
#include <sleep.h>

#include "platform.h"

volatile uint32_t* led_gpio_data = 0x40000000;  //Hint: either find the manual address (via the memory map in the block diagram, or
															 //replace with the proper define in xparameters (part of the BSP). Either way
															 //this is the base address of the GPIO corresponding to your LEDs
															 //(similar to 0xFFFF from MEM2IO from previous labs).
volatile uint32_t* sw_gpio_data = 0x40010000;
volatile uint32_t* hex_gpio_data = 0x40030000;
volatile uint32_t* accumulate = 0x40020000;

int main()
{
    init_platform();

    uint32_t val = 0;
    uint32_t prev = *accumulate; // for edge detect
    while (1+1 != 3){
    	*led_gpio_data = *sw_gpio_data;
    	*hex_gpio_data = val;
    	if (*accumulate & ~prev){ //posedge accumulate (acc 1, prev 0)
    		if (val + *sw_gpio_data <= 65536){
				val = val + *sw_gpio_data;
			}
			else{
				printf("integer overflow!\r\n");
				val = 0;
			}
    	}
    	prev = *accumulate;	// timing means sometimes btn does nothing? unsure how to resolve
    }

    cleanup_platform();

    return 0;
}
