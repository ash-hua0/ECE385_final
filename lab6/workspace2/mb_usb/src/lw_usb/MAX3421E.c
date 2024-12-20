/* MAX3421E low-level functions                             */
/* reading, writing registers, reset, host transfer, etc.   */
/* GPIN, GPOUT are as per tutorial, reassign if necessary   */
/* USB power on is GPOUT7, USB power overload is GPIN7      */

#define _MAX3421E_C_

#include "stdlib.h"
#include "stdio.h"
#include "string.h"
#include "project_config.h"
#include "xparameters.h"
#include <unistd.h>
#include <xspi.h>
#include <xgpio.h>
#include <xtmrctr.h>
#include "xintc.h"

/* variables and data structures */

/* External variables */

extern BYTE usb_task_state;
static XSpi SpiInstance;
static int Status;
static XGpio Gpio_rst;
static XGpio Gpio_int;
static XSpi_Config *ConfigPtr;	/* Pointer to Configuration data */
XTmrCtr Usb_timer;

//Initialization of SPI port is already done for you
void SPI_init() {

	xil_printf("Initializing SPI\n");

/*
* Looks up the device configuration based on the unique device ID. A table
* contains the configuration info for each device in the system.
*
* @param	DeviceId contains the ID of the device to look up the
*		configuration for.
*
* @return
*
* A pointer to the configuration found or NULL if the specified device ID was
* not found. See xspi.h for the definition of XSpi_Config.
 */
	ConfigPtr = XSpi_LookupConfig(XPAR_SPI_USB_DEVICE_ID);
	if (ConfigPtr == NULL) {
		return XST_DEVICE_NOT_FOUND;
	}

/*
* Initializes a specific XSpi instance such that the driver is ready to use.
*
* The state of the device after initialization is:
*	- Device is disabled
*	- Slave mode
*	- Active high clock polarity
*	- Clock phase 0
*
* @param	InstancePtr is a pointer to the XSpi instance to be worked on.
* @param	Config is a reference to a structure containing information
*		about a specific SPI device. This function initializes an
*		InstancePtr object for a specific device specified by the
*		contents of Config. This function can initialize multiple
*		instance objects with the use of multiple calls giving
		different Config information on each call.
* @param	EffectiveAddr is the device base address in the virtual memory
*		address space. The caller is responsible for keeping the
*		address mapping from EffectiveAddr to the device physical base
*		address unchanged once this function is invoked. Unexpected
*		errors may occur if the address mapping changes after this
*		function is called. If address translation is not used, use
*		Config->BaseAddress for this parameters, passing the physical
*		address instead.
*
* @return
*		- XST_SUCCESS 0L if successful.
*		- XST_DEVICE_IS_STARTED 5L if the device is started. It must be
*		  stopped to re-initialize.
 */
	Status = XSpi_CfgInitialize(&SpiInstance, ConfigPtr,
				  ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	if (Status != XST_SUCCESS)
	{
		xil_printf ("SPI device failed to initialize %d", Status);
	}
	Status = XSpi_SetOptions(&SpiInstance, XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION);
	if (Status != XST_SUCCESS)
	{
		xil_printf ("SPI device failed to go into master mode %d", Status);
	}


	/*
	 * This function enables interrupts for the SPI device.
	 * If Spi driver is used in interrupt mode, must connect SPI interrupt handler
	 * to interrupt controller before this function is called.
	 * If Spi driver is used in polled mode must disable Global Interrupts after fxn call.
	 * If the device is configured with FIFOs, the FIFOs are reset at this time.
	 *
	 * @param	InstancePtr is a pointer to the XSpi instance to be worked on.
 	 *
 	 * @return
	 *		- XST_SUCCESS 0L if the device is successfully started
	 *		- XST_DEVICE_IS_STARTED 5L if the device was already started.
	 */
	XSpi_Start(&SpiInstance);

	/*
	 * disable all interrupts for device by writing to Global interrupt enable register.
	 * @param	InstancePtr is a pointer to the XSpi instance
	 */
	XSpi_IntrGlobalDisable(&SpiInstance);


}

BYTE SPI_wr(BYTE data) {
	return 0; //This function is not needed
}


/* Functions    */
/* Single host register write   */
void MAXreg_wr(BYTE reg, BYTE val) {
	XSpi_SetSlaveSelect(&SpiInstance, 1);  // select usb slave device
	u8 WriteBuf[2] = {reg + 2, val}; // write reg+2, val
	u8 ReadBuf[2] = {0, 0};	// d/c for read
	Status = XSpi_Transfer(&SpiInstance, WriteBuf, ReadBuf, 2);
	if (Status){
		xil_printf("MAXreg_wr error: %d\n", Status);
	}
	XSpi_SetSlaveSelect(&SpiInstance, 0);  // deselect slave
}
// after writing, plug in fpga and check if prints messages

/* multiple-byte write */
/* returns a pointer to a memory position after last written */
BYTE* MAXbytes_wr(BYTE reg, BYTE nbytes, BYTE* data) {
	XSpi_SetSlaveSelect(&SpiInstance, 1);  // select usb slave device
	u8 WriteBuf[nbytes+1];
	WriteBuf[0] = reg + 2; //write reg + 2 via SPI
	//write data[n] via SPI, where n goes from 0 to nbytes-1
	for(int i = 0; i < nbytes; i++){
		WriteBuf[i+1] = *(data + i);
	}
	//u8 ReadBuf[nbytes + 1];	// d/c for read

	Status = XSpi_Transfer(&SpiInstance, WriteBuf, NULL, nbytes+1);
	if (Status){
		xil_printf("MAXbytes_wr error: %d\n", Status);
	}
	XSpi_SetSlaveSelect(&SpiInstance, 0);  // deselect slave
	return (data + nbytes);
}

/* Single host register read        */
BYTE MAXreg_rd(BYTE reg) {
	XSpi_SetSlaveSelect(&SpiInstance, 1);
	u8 ReadBuf[2] = {0, 0}; // first bite d/c, second byte is readdata
	u8 WriteBuf[2] = {reg, 0};  // first byte is command, second d/c
	Status = XSpi_Transfer(&SpiInstance, WriteBuf, ReadBuf, 2);
	//xil_printf("%d\n", Status);
	XSpi_SetSlaveSelect(&SpiInstance, 0);
	return ReadBuf[1];
}



/* multiple-bytes register read                             */
/* returns a pointer to a memory position after last read   */
BYTE* MAXbytes_rd(BYTE reg, BYTE nbytes, BYTE* data) {
	XSpi_SetSlaveSelect(&SpiInstance, 1);
	u8 ReadBuf[nbytes+1]; // first bite d/c, second byte is readdata
	u8 WriteBuf[nbytes+1];  // first byte is command, rest d/c
	ReadBuf[0] = 0;
	WriteBuf[0] = reg; //write reg via SPI
	Status = XSpi_Transfer(&SpiInstance, WriteBuf, ReadBuf, nbytes+1);

	//read data[n] from SPI, where n goes from 0 to nbytes-1
	for(int i = 0; i < nbytes; i++){
		data[i] = ReadBuf[i+1];
	}
	if (Status){
		xil_printf("MAXbytes_wr error: %d\n", Status);
	}
	XSpi_SetSlaveSelect(&SpiInstance, 0);
	return (data + nbytes);
}
/* reset MAX3421E using chip reset bit. SPI configuration is not affected   */
void MAX3421E_reset(void) {
	Status = XGpio_Initialize(&Gpio_rst, XPAR_GPIO_USB_RST_DEVICE_ID);
	XGpio_SetDataDirection(&Gpio_rst, 1, 0); //configure reset, and set reset to output
	Status = XGpio_Initialize(&Gpio_int, XPAR_GPIO_USB_INT_DEVICE_ID);
	XGpio_SetDataDirection(&Gpio_int, 1, ~1); //configure int, and set int to input


	//hardware reset, then software reset
	XGpio_DiscreteClear(&Gpio_rst, 1, 0x1);
	xil_printf ("Holding USB in Reset\n");
	for (int delay = 0; delay < 0x7FFFF; delay ++){}
	XGpio_DiscreteSet(&Gpio_rst, 1, 0x1);
	xil_printf ("Revision is: %d, if this reads 0 check your MAXreg_rd \n", MAXreg_rd( rREVISION));
	BYTE tmp = 0;

	MAXreg_wr( rUSBCTL, bmCHIPRES);      //Chip (soft) reset. This stops the oscillator
	MAXreg_wr( rUSBCTL, 0x00);           //Remove the reset

	xil_printf("Waiting for PLL to stabilize: ");
	while (!(MAXreg_rd( rUSBIRQ) & bmOSCOKIRQ)) { //wait until the PLL stabilizes
		tmp++;                                      //timeout after 256 attempts
		xil_printf(".\n");
		if (tmp == 0) {
			xil_printf("reset timeout!, check your MAXreg_wr\n");
		}
	}
}
/* turn USB power on/off                                                */
/* ON pin of VBUS switch (MAX4793 or similar) is connected to GPOUT0    */
/* OVERLOAD pin of Vbus switch is connected to GPIN7                    */
/* OVERLOAD state low. NO OVERLOAD or VBUS OFF state high.              */
BOOL Vbus_power(BOOL action) {
    BYTE tmp = MAXreg_rd( rIOPINS1 );       //copy of IOPINS2
    if( action ) {                              //turn on by setting GPOUT0
        tmp |= bmGPOUT0;
    }
    else {                                      //turn off by clearing GPOUT0
        tmp &= ~bmGPOUT0;
    }
    MAXreg_wr( rIOPINS1,tmp );                              //send GPOUT0
    for (int delay = 0; delay < 0xFFFFF; delay ++){}		//delay a couple MS
    xil_printf ("VBUS power state change \n");
    return( TRUE );                                         // power on/off successful
	return (1);
}

/* probe bus to determine device presence and speed */
void MAX_busprobe(void) {
	BYTE bus_sample;

    MAXreg_wr(rHCTL,bmSAMPLEBUS);
	bus_sample = MAXreg_rd( rHRSL);            //Get J,K status
	bus_sample &= ( bmJSTATUS | bmKSTATUS);      //zero the rest of the byte

	switch (bus_sample) {                   //start full-speed or low-speed host
	case ( bmJSTATUS):
		/*kludgy*/
		if (usb_task_state != USB_ATTACHED_SUBSTATE_WAIT_RESET_COMPLETE) { //bus reset causes connection detect interrupt
			if (!(MAXreg_rd( rMODE) & bmLOWSPEED)) {
				MAXreg_wr( rMODE, MODE_FS_HOST);         //start full-speed host
				xil_printf("Starting in full speed\n");
			} else {
				MAXreg_wr( rMODE, MODE_LS_HOST);    //start low-speed host
				xil_printf("Starting in low speed\n");
			}
			usb_task_state = ( USB_STATE_ATTACHED); //signal usb state machine to start attachment sequence
		}
		break;
	case ( bmKSTATUS):
		if (usb_task_state != USB_ATTACHED_SUBSTATE_WAIT_RESET_COMPLETE) { //bus reset causes connection detect interrupt
			if (!(MAXreg_rd( rMODE) & bmLOWSPEED)) {
				MAXreg_wr( rMODE, MODE_LS_HOST);   //start low-speed host
				xil_printf("Starting in low speed\n");
			} else {
				MAXreg_wr( rMODE, MODE_FS_HOST);         //start full-speed host
				xil_printf("Starting in full speed\n");
			}
			usb_task_state = ( USB_STATE_ATTACHED); //signal usb state machine to start attachment sequence
		}
		break;
	case ( bmSE1):              //illegal state
		usb_task_state = ( USB_DETACHED_SUBSTATE_ILLEGAL);
		break;
	case ( bmSE0):              //disconnected state
		if (!((usb_task_state & USB_STATE_MASK) == USB_STATE_DETACHED)) //if we came here from other than detached state
			usb_task_state = ( USB_DETACHED_SUBSTATE_INITIALIZE); //clear device data structures
		else {
			MAXreg_wr( rMODE, MODE_FS_HOST); //start full-speed host
			usb_task_state = ( USB_DETACHED_SUBSTATE_WAIT_FOR_DEVICE);
		}
		break;
	} //end switch( bus_sample )
}
/* MAX3421E initialization after power-on   */
void MAX3421E_init(void) {
	/* Configure full-duplex SPI, interrupt pulse   */
	SPI_init();
	MAXreg_wr( rPINCTL, (bmFDUPSPI + bmINTLEVEL + bmGPXB)); //Full-duplex SPI, level interrupt, GPX
	MAX3421E_reset();                                //stop/start the oscillator

	//start USB timer
	Status = XTmrCtr_Initialize(&Usb_timer, XPAR_TIMER_USB_AXI_DEVICE_ID);
	if (Status != XST_SUCCESS) {
			xil_printf ("Timer instantiation failed\n");
	}
	XTmrCtr_Start(&Usb_timer, 0);

	xil_printf ("The following should be about 1 second ticks. If they are not, check your timer \n");
	//Test timer to make sure it is plausible
	for (int i = 0; i < 3; i++)
	{
		u32 current = XTmrCtr_GetValue(&Usb_timer, 0);
		while (XTmrCtr_GetValue(&Usb_timer, 0) - current < 100000000)
		{

		}
		xil_printf (".tick.\n");
	}

	/* configure power switch   */
	Vbus_power( OFF);                                      //turn Vbus power off
	//MAXreg_wr( rGPINIEN, bmGPINIEN7); //enable interrupt on GPIN7 (power switch overload flag)
	Vbus_power( ON);
	/* configure host operation */
	MAXreg_wr( rMODE, bmDPPULLDN | bmDMPULLDN | bmHOST | bmSEPIRQ); // set pull-downs, SOF, Host, Separate GPIN IRQ on GPX
	//MAXreg_wr( rHIEN, bmFRAMEIE|bmCONDETIE|bmBUSEVENTIE );                      // enable SOF, connection detection, bus event IRQs
	MAXreg_wr( rHIEN, bmCONDETIE);                        //connection detection
	/* HXFRDNIRQ is checked in Dispatch packet function */
	MAXreg_wr(rHCTL, bmSAMPLEBUS);        // update the JSTATUS and KSTATUS bits
	MAX_busprobe();                             //check if anything is connected
	MAXreg_wr( rHIRQ, bmCONDETIRQ); //clear connection detect interrupt                 
	MAXreg_wr( rCPUCTL, 0x01);                            //enable interrupt pin
}

/* MAX3421 state change task and interrupt handler */
void MAX3421E_Task(void) {
	if (XGpio_DiscreteRead(&Gpio_int, 1) & 0x01 == 0) {
		xil_printf("MAX interrupt\n\r");
		MaxIntHandler();
	}
	//if ( IORD_ALTERA_AVALON_PIO_DATA(USB_GPX_BASE) == 1) {
	//	xil_printf("GPX interrupt\n\r");
	//	MaxGpxHandler();
	//}
}

void MaxIntHandler(void) {
	BYTE HIRQ;
	BYTE HIRQ_sendback = 0x00;
	HIRQ = MAXreg_rd( rHIRQ);                  //determine interrupt source
	xil_printf("IRQ: %x\n", HIRQ);
	if (HIRQ & bmFRAMEIRQ) {                   //->1ms SOF interrupt handler
		HIRQ_sendback |= bmFRAMEIRQ;
	}                   //end FRAMEIRQ handling

	if (HIRQ & bmCONDETIRQ) {
		MAX_busprobe();
		HIRQ_sendback |= bmCONDETIRQ;      //set sendback to 1 to clear register
	}
	if (HIRQ & bmSNDBAVIRQ) //if the send buffer is clear (previous transfer completed without issue)
	{
		MAXreg_wr(rSNDBC, 0x00);//clear the send buffer (not really necessary, but clears interrupt)
	}
	if (HIRQ & bmBUSEVENTIRQ) {           //bus event is either reset or suspend
		usb_task_state++;                       //advance USB task state machine
		HIRQ_sendback |= bmBUSEVENTIRQ;
	}
	/* End HIRQ interrupts handling, clear serviced IRQs    */
	MAXreg_wr( rHIRQ, HIRQ_sendback); //write '1' to CONDETIRQ to ack bus state change
}

void MaxGpxHandler(void) {
	BYTE GPINIRQ;
	GPINIRQ = MAXreg_rd( rGPINIRQ);            //read both IRQ registers
}
