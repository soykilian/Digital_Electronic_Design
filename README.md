# Digital_Electronic_Design
This is a audio processing project was designed for academic purposes at the Universidad Politécnica de Madrid to be used on the FPGA [NEXYS 4 DDR](https://digilent.com/reference/programmable-logic/nexys-4-ddr/reference-manual).
The global module consist of several entities:
- 12 MHz Clock.
- Microphone.
- PWM.
- Speaker.
- Low-Pass and High-Pass FIR Filters.
- RAM Memory
- 7-segment display with control signals
- 15 LEDs audio equalizer
### All this entities are controlled by a Finite State Machine described on the global_controller.vhd file

### How to use it:
Clone the repository:
```sh 
git clone 
```
The design sources can be found in:
```sh
cd dsed_audio/dsed_audio.srcs/sources_1/new
````
The test benches are located in:
```sh
cd dsed_audio/dsed_audio.srcs/sim_1/new
```


To use design on yout FPGAas it is, open it on Vivado,  go to Open Hardware Manager and implement the file:
*global_controller.bit*.

If you have a different model, change de file:
*dsed_audio/Nexys4DDR_Master.xdc*.

Be aware that the modules may need modification.

### Related links:

- [Vivado Tutorial](https://www.xilinx.com/support/documentation/university/Vivado-Teaching/HDL-Design/2015x/VHDL/docs-pdf/Vivado_Tutorial.pdf)
- [Nexys 4 DDR Reference Manual](https://digilent.com/reference/_media/nexys4-ddr:nexys4ddr_rm.pdf)

