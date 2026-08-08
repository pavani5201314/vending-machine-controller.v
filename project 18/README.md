# Vending Machine Controller Using Verilog

## Overview

This project implements a simple **Vending Machine Controller** using Verilog HDL.

The vending machine accepts **Rs.5 and Rs.10 coins**. The price of the product is **Rs.15**.

When the inserted amount reaches or exceeds Rs.15, the machine dispenses the product and provides the required change.

## Features

* Accepts Rs.5 coin
* Accepts Rs.10 coin
* Product price = Rs.15
* Automatically dispenses the product
* Calculates change
* Reset functionality
* Clock-based synchronous operation

## Inputs

| Input    | Description                  |
| -------- | ---------------------------- |
| `clk`    | Clock signal                 |
| `reset`  | Resets the vending machine   |
| `coin5`  | Indicates insertion of Rs.5  |
| `coin10` | Indicates insertion of Rs.10 |

## Outputs

| Output     | Description                               |
| ---------- | ----------------------------------------- |
| `dispense` | Becomes `1` when the product is dispensed |
| `change`   | Amount of change returned                 |

## Working

The controller maintains the current balance.

Example:

```text
Rs.5 + Rs.10 = Rs.15
```

The machine dispenses the product and returns:

```text
Change = Rs.0
```

Another example:

```text
Rs.10 + Rs.10 = Rs.20
```

The machine dispenses the product and returns:

```text
Change = Rs.5
```

## Files

```text
vending_machine.v       → Main Verilog design
vending_machine_tb.v    → Testbench
output.txt              → Simulation output
README.md               → Project documentation
```

## Simulation

The design can be simulated using tools such as:

* Icarus Verilog
* ModelSim
* QuestaSim
* Vivado

For Icarus Verilog:

```bash
iverilog -o vending_sim vending_machine.v vending_machine_tb.v
vvp vending_sim
```

## Expected Output

```text
Time=0 | Coin5=0 | Coin10=0 | Dispense=0 | Change= 0
Time=25 | Coin5=1 | Coin10=0 | Dispense=0 | Change= 0
Time=35 | Coin5=0 | Coin10=0 | Dispense=0 | Change= 0
Time=45 | Coin5=0 | Coin10=1 | Dispense=1 | Change= 0
Time=65 | Coin5=0 | Coin10=1 | Dispense=0 | Change= 0
Time=75 | Coin5=0 | Coin10=0 | Dispense=0 | Change= 0
Time=85 | Coin5=0 | Coin10=1 | Dispense=0 | Change= 0
Time=95 | Coin5=0 | Coin10=0 | Dispense=1 | Change= 5
```

## Applications

Vending machine controllers are useful examples of **Finite State Machines (FSMs)** and digital control systems. Similar concepts are used in:

* Ticket machines
* Parking meters
* Automated payment systems
* Self-service kiosks
* Smart dispensing systems

## Author

**Vending Machine Controller – Verilog HDL Project**
