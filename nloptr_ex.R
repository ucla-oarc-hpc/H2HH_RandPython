# SimpleRScriptWithNloptr.R

library(nloptr)

# Objective function to minimize
objective_function <- function(x) {
  return(x^2 + 4*x + 4)
}

# Initial guess
x0 <- 10

# Use nloptr to optimize
result <- nloptr(
  x0 = x0, 
  eval_f = objective_function, 
  algorithm = "NLOPT_LD_LBFGS", 
  lb = -Inf, 
  ub = Inf, 
  opts = list("maxeval" = 100)
)

# Print results
cat("Minimum value of f(x) is:", result$objective, "\n")
cat("Optimal value of x is:", result$solution, "\n")
