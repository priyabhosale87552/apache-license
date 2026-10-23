# Simple Interest Calculator

A small command-line program that calculates simple interest and the total amount payable on a loan or investment.

## What is Simple Interest?

Simple interest is interest calculated only on the original principal amount, not on previously earned interest.

**Formula:**

```
Simple Interest (SI) = (P × R × T) / 100
Total Amount (A)     = P + SI
```

Where:

| Symbol | Meaning                        |
|--------|--------------------------------|
| P      | Principal amount               |
| R      | Annual rate of interest (in %) |
| T      | Time period (in years)         |

## Features

- Accepts principal, rate and time as input
- Validates that inputs are positive numbers
- Displays the simple interest and the total amount

## Requirements

- Python 3.6 or higher (no external libraries needed)

## How to Run

1. Clone this repository:
   ```bash
   git clone https://github.com/<your-username>/simple-interest-calculator.git
   cd simple-interest-calculator
   ```
2. Run the program:
   ```bash
   python simple_interest.py
   ```
3. Enter the requested values when prompted.

## Example

```
Enter principal amount: 10000
Enter annual rate of interest (%): 5
Enter time period (years): 3

Simple Interest : 1500.00
Total Amount    : 11500.00
```

Calculation: (10000 × 5 × 3) / 100 = 1500

## Project Structure

```
simple-interest-calculator/
├── README.md
└── simple_interest.py
```

## License

This project is free to use for learning purposes.
