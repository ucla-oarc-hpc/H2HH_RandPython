library(nloptr)

# Objective function
objective_function <- function(x) {
  return((x - 3)^2)
}

# Gradient of the objective function
gradient_function <- function(x) {
  return(2 * (x - 3))
}

# Initial guess for the variable
x0 <- 2  # Adjusted the initial guess

# Using nloptr to solve the optimization problem
result <- nloptr(
  x0 = x0,
  eval_f = objective_function,
  eval_grad_f = gradient_function,  # Providing the gradient function
  opts = list(
    algorithm = "NLOPT_LD_MMA",  # Using a different algorithm
    print_level = 0,  # No output
    stopval = 1.0e-8,
    ftol_rel = 1.0e-8  # Relative tolerance on function value
  )
)

# Displaying the result
cat("Optimal value of x:", result$solution, "\n")
cat("Minimum value of the objective function:", result$objective, "\n")