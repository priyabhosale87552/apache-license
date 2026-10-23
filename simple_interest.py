def calculate_simple_interest(principal, rate, time):
    """Return (simple_interest, total_amount)."""
    interest = (principal * rate * time) / 100
    return interest, principal + interest


def read_positive(prompt):
    while True:
        try:
            value = float(input(prompt))
            if value > 0:
                return value
            print("Please enter a number greater than 0.")
        except ValueError:
            print("Invalid input. Please enter a number.")


def main():
    principal = read_positive("Enter principal amount: ")
    rate = read_positive("Enter annual rate of interest (%): ")
    time = read_positive("Enter time period (years): ")

    interest, total = calculate_simple_interest(principal, rate, time)

    print(f"\nSimple Interest : {interest:.2f}")
    print(f"Total Amount    : {total:.2f}")


if __name__ == "__main__":
    main()
