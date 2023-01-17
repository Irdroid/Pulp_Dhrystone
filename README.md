# Pulp_Dhrystone
Dhrystone CPU Benchmark test for Pulpissimo.

Dhrystone MIPS (Million Instructions per Second), or DMIPS, is a
measure of computer performance relative to the performance of the DEC
VAX 11/780 minicomputer of the 1970s. The Dhrystone test is based on a
standard loop of synthetic code, intended to mimic the types of operations
required in real computer algorithms of that time

The Pulpino / Pulpissimo MCUs feature either RI5CY or ZERO RISCY CPUs which have a custom registers for cycles and instructions counters, thus a modification to the official [RISC-V cpu benchmark tests](https://github.com/riscv-software-src/riscv-tests) was made.

## For RI5CY those registers are:

- CSR_PCCR0 0x780 32bit reg, cycles counter
- CSR_PCCR1 0x781 32bit reg, instructions counter
- CSR_PCER	0xCC0 (Configuration which enables or disables the counters, default they are disabled)

## Compilation

The utility contains a Makefile which is to be used with the [Pulp-runtime](https://github.com/pulp-platform/pulp-runtime). Once environmental variables are set issue "make" and then upload the binary via JTAG to the target. 

## Test Results

The test results are reported via UART, the utility will run and print the results to the host via Pulpissimo UART interface