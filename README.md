# 🔢 Verilog: Adders & 16-to-1 MUX

This repository includes Verilog code, testbenches, and GTKWave outputs for:

- ✅ Half Adder  
- ✅ Full Adder  
- ✅ 16-to-1 Multiplexer (using 5 × 4-to-1 MUXes)

---

## 📁 File Summary

| Design       | Verilog Code      | Testbench         | GTKWave Output     |
|--------------|-------------------|-------------------|--------------------|
| Half Adder   | `half_adder.v`    | `half_adder_tb.v` | `half_adder.png`   |
| Full Adder   | `full_adder.v`    | `full_adder_tb.v` | `fulladder.png`    |
| 16-to-1 MUX  | `mux16to1.v`      | `mux16to1_tb.v`   | `16to1mux.png`     |

---

## ▶️ Run Simulation

```bash
# Replace <design> and <testbench> with actual filenames

iverilog -o out.vvp <design>.v <testbench>.v
vvp out.vvp
gtkwave <dump>.vcd
