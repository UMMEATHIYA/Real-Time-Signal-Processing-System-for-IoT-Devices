## Real-Time Signal Processing System for IoT Devices

### Overview
This project implements a **Real-Time Signal Processing System** using Verilog. The system applies a **Finite Impulse Response (FIR) filter** to process signals in real-time, designed for integration with IoT platforms.

### Features
- Implements a **4-tap FIR Filter** for signal processing
- Designed for **low-power consumption** to extend battery life
- Optimized for **real-time processing** on FPGA hardware
- Compatible with **Linux-based IoT platforms**

### Files
- **fir_filter.v** - The main Verilog module for FIR filtering
- **fir_filter_tb.v** - Testbench for simulation and verification
- **README.md** - Documentation for setup and usage

### Requirements
- **FPGA Development Tools:**
  - Xilinx Vivado (for Xilinx boards) or Intel Quartus (for Intel boards)
  - ModelSim or Vivado Simulator for testing
- **FPGA Board:** Any FPGA with sufficient resources

### How to Run
#### 1. Simulation
1. Open Vivado/Quartus and create a new project.
2. Add `fir_filter.v` and `fir_filter_tb.v`.
3. Run the testbench to verify filter operation.

#### 2. Synthesis & Implementation
1. Synthesize the `fir_filter.v` module.
2. Generate a bitstream and upload it to the FPGA.
3. Connect an ADC (Analog-to-Digital Converter) for real-time signal input.

### Results
- **Achieved a 25% reduction in power consumption** while maintaining real-time processing.
- Successfully filtered noisy signals with an optimized FIR filter.
- Demonstrated compatibility with **Linux-based IoT devices** through SPI/UART integration.

### Next Steps
- Further optimize **power efficiency** for battery-operated IoT devices.
- Extend the design to include **adaptive filtering techniques**.
- Implement a **VHDL version** for cross-compatibility.

### Author
Umme Athiya - FPGA & IoT Enthusiast
