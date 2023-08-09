
num1 <- 12
num2 <- 8

# Perform arithmetic operations
sum_result <- num1 + num2
difference <- num1 - num2
product <- num1 * num2

# Check for division by zero
if (num2 != 0) {
  quotient <- num1 / num2
} else {
  quotient <- "Undefined (division by zero)"
}

# Display the results
cat("Numbers:", num1, "and", num2, "\n")
cat("Sum:", sum_result, "\n")
cat("Difference:", difference, "\n")
cat("Product:", product, "\n")
cat("Quotient:", quotient, "\n")

