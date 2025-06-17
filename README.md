# 🔢 Verilog Adders: Half Adder & Full Adder

This repository contains Verilog design code, testbenches, and waveform outputs (using GTKWave) for:

- ✅ Half Adder
- ✅ Full Adder

## 📁 Files

| File              | Description                    |
|------------------|--------------------------------|
| half_adder.v      | Verilog code for half adder    |
| half_adder_tb.v   | Testbench for half adder       |
| half_adder.png    | GTKWave simulation output      |
| full_adder.v      | Verilog code for full adder    |
| full_adder_tb.v   | Testbench for full adder       |
| fulladder.png     | GTKWave simulation output      |

## 🖥️ How to Simulate

```bash
iverilog -o half_adder.out half_adder.v half_adder_tb.v
vvp half_adder.out
gtkwave halfadder.vcd
