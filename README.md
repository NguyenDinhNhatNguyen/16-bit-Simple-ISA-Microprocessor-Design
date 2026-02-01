# 16-bit Simple ISA Microprocessor Design

![Status](https://img.shields.io/badge/Status-Completed-success)
![Method](https://img.shields.io/badge/Method-Schematic_%2F_Block_Diagram-orange)
![Tools](https://img.shields.io/badge/Tools-Quartus_%7C_ModelSim-blue)
![Course](https://img.shields.io/badge/Course-CE118_Digital_Logic_Design-green)

**Course:** Digital Logic Design (CE118.Q17)

**Institution:** University of Information Technology (UIT) - VNU-HCM

**Instructor:** M.Sc. Ta Tri Duc

## 📖 Overview

This project involves the design, simulation, and implementation of a **16-bit Microprocessor** based on a custom Simple Instruction Set Architecture (ISA). The project was developed for the **Digital Logic Design (CE118.Q17)** course at the **University of Information Technology - VNU-HCM**.

The core objective was to implement and compare two different CPU architectures (Single Cycle & Pipeline) to optimize processing performance.

## 📂 Documentation

Detailed documentation regarding the architecture, instruction set, and simulation results can be found here:

* 📄 **Final Report:** [https://drive.google.com/file/d/1gGBJraUPlhSF006yLMsuC_4IYFpdPllr/view?usp=drive_link]
* 📊 **Presentation Slides:** [https://docs.google.com/presentation/d/1hUMmPVYDNky4DM_HWBfWwcrabGu8j4-2/edit?usp=drive_link&ouid=111706927544390513706&rtpof=true&sd=true]

## 📐 Final Datapath Diagram

Below is the complete schematic (Block Diagram) of our **5-Stage Pipelined CPU**, designed directly in Quartus:

<img width="2035" height="1073" alt="Diagram Datapath Final" src="https://github.com/user-attachments/assets/2bffb6b7-3c40-4562-88c4-d973462e404b" />

*Figure 1: Full Datapath including Hazard Detection and Forwarding Unit.*

## 🛠 Tech Stack & Methodology

* **Design Methodology:**
    * **Primary:** Utilized **Block Diagrams (Schematic)** within Intel Quartus for the majority of functional blocks and system interconnections (Datapath, Top-level).
    * **Secondary:** Used Hardware Description Language (**Verilog/SystemVerilog**) to implement **only one specific functional block**, which was then integrated into the main schematic.
* **Synthesis Tool:** Intel Quartus Prime.
* **Simulation Tool:** ModelSim / QuestaSim.
* **Architecture:** 16-bit Custom ISA (RISC-like).

## ✨ Key Features

* **Instruction Set:** Supports standard arithmetic, logic, memory access, and branching instructions (ADD, SUB, AND, OR, LW, SW, BEQ).
* **Datapath Design:**
    * **ALU:** 16-bit Arithmetic Logic Unit.
    * **Register File:** 16-bit width registers.
    * **Control Unit:** Generates signals (RegWrite, MemWrite, etc.) based on OpCode.
* **5-Stage Pipeline Architecture:**
    * Execution is divided into: **IF, ID, EX, MEM, WB**.
    * Handles **Hazards** using **Forwarding** and **Stall** logic directly implemented via schematics.

## 📊 Performance Analysis

We compared the Single Cycle and Pipeline implementations using two test code sequences (Code 1 & Code 2). The results demonstrated significant performance improvements with Pipelining:

| Metric | Improvement (Pipeline vs. Single Cycle) |
| :--- | :--- |
| **Fmax (Max Frequency)** | Increased by **51% - 83%** |
| **Execution Time** | Reduced by **~23%** (for Code 1) |
| **Resource Usage** | Pipeline uses more logic gates/registers (trade-off for speed) |

> **Conclusion:** While the Single Cycle design uses fewer resources, the Pipelined design offers superior performance and is suitable for high-speed processing tasks.

## ⚙️ Simulation & Usage

1.  **Clone the Repository:**
    ```bash
    git clone https://github.com/NguyenDinhNhatNguyen/16-bit-Simple-ISA-Microprocessor-Design
    ```
2.  **Open Project:**
    * Launch **Quartus Prime**.
    * Open the project file `.qpf` or the main Block Design File (`.bdf`).
3.  **Run Simulation:**
    * Open **ModelSim**.
    * Load the testbench files (`testbench_code1.v` or `testbench_code2.v`).
    * Run the simulation to view waveforms for `clk`, `reset`, `pc`, and register values.

## 👥 Contributors (Group 5)

* **Nguyen Dinh Nhat Nguyen** (23521043)
* Tran Le Minh Dat (23520271)
* Trinh Nguyen Hoang Long (24521016)
* Tran Hoang Trung Duc (23520319)
* Vo Hong Duc (23520323)
* Ngo Tien Dat (23520254)
* Tran Quang Nhat (23521102)
* Vo Thanh Toan (23521611)
* Nguyen Thanh Hieu (23520486)
* Le Hung Phat (23521139)

---
*Ho Chi Minh City, December 2025*
