/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.8
        Device            :  PIC18F87K22
        Driver Version    :  2.00
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#include "mcc_generated_files/mcc.h"
#include <math.h>
#include <stdio.h>
#include <string.h>


#define SAMPLE_SIZE 128
#define BUFFER_SIZE 1800
#define STD_DEV_THRESHOLD 1.0
#define EMG_MIN_VALUE 0
#define EMG_MAX_VALUE 4095
#define GLOBAL_THRESHOLD 1500;

uint16_t circularBuffer[BUFFER_SIZE];
uint16_t bufferIndex = 0;
volatile uint8_t scaled_value;


void sampleSignal(){
        
    uint16_t sample = ADC_GetConversion(channel_AN0);
    circularBuffer[bufferIndex] = sample;
    bufferIndex = (bufferIndex+1)%BUFFER_SIZE;
    while(!flag_tmr0);
    flag_tmr0 = false;
}
uint16_t AveregeFilter(){

    uint32_t sum = 0;
    for(uint8_t i=0; i<SAMPLE_SIZE; i++){
        sum += circularBuffer[(bufferIndex - i + BUFFER_SIZE) % BUFFER_SIZE];
        
    }
    return (uint16_t)(sum/SAMPLE_SIZE);

}
float StandardDev(uint16_t average){
    float variance = 0;
    
    for(uint8_t i= 0; i<SAMPLE_SIZE; i++){
        float razlika = circularBuffer[(bufferIndex-i+BUFFER_SIZE)%BUFFER_SIZE]-average;
        variance += razlika*razlika;
        
    }
    variance /= SAMPLE_SIZE;
    return sqrt(variance);

}
uint16_t calculateThreshold(float stdDev){
    float thresholdRatio = stdDev*STD_DEV_THRESHOLD;
    uint16_t threshold =  (uint16_t)GLOBAL_THRESHOLD + (uint16_t)thresholdRatio;
    return (uint16_t)(threshold);
    /*
    if(threshold < EMG_MIN_VALUE){
        threshold = EMG_MIN_VALUE;
    
    }else if (threshold > EMG_MAX_VALUE){
        threshold = EMG_MAX_VALUE;
    }
    */
}
float EMGServoVrednosti(uint16_t emg) {
   
    return(float)(emg - EMG_MIN_VALUE)/(EMG_MAX_VALUE-EMG_MIN_VALUE);
   
}

void main(void)
{
    // Initialize the device
    SYSTEM_Initialize();

    // If using interrupts in PIC18 High/Low Priority Mode you need to enable the Global High and Low Interrupts
    // If using interrupts in PIC Mid-Range Compatibility Mode you need to enable the Global and Peripheral Interrupts
    // Use the following macros to:

    // Enable the Global Interrupts
    INTERRUPT_GlobalInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Enable the Peripheral Interrupts
    INTERRUPT_PeripheralInterruptEnable();

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();
    uint16_t value;
   
    while (1)
    {
        value = ADC_GetConversion(channel_AN0);
        
        sampleSignal();
        uint16_t average = AveregeFilter();
        float stdDev = StandardDev(average);
        uint16_t threshold = calculateThreshold(stdDev);
        
        if (average > 1500) {
            scaled_value=20;
        
        }
        else{
            scaled_value=10;
        }
        
        
        EUSART1_Write(0x03);
        EUSART1_Write((uint8_t)value);
        EUSART1_Write((uint8_t)(value>>8));
       
        EUSART1_Write((uint8_t)average);
        EUSART1_Write((uint8_t)(average>>8));
        
       
        EUSART1_Write(0xFC);
    }
}
/**
 End of File
*/