# Traffic Light Controller (FSM) — Verilog

A finite state machine (FSM) based traffic light controller cycling through RED → GREEN → YELLOW states.

## Files
- traffic.v — the design module (FSM logic)
- testbench.v — testbench to simulate and verify state transitions

## Tools Used
- Verilog HDL
- Icarus Verilog (simulator)
- EDA Playground (for simulation)

## How it works
The FSM has three states (RED, GREEN, YELLOW) represented using a 2-bit register.
On every clock edge, the state transitions in order: RED → GREEN → YELLOW → RED.
A default case handles any unused state combination, resetting it back to RED for safety.

## What I learned
- Designing a Finite State Machine (FSM) in Verilog
- Using parameters to define readable state names
- case statements for state transitions
- Importance of a default case for unused state combinations
