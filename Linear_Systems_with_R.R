## Solving Linear Systems with R
options(scipen=999)
## The a square-matrix will be m x m, and we write it by this way:
## coefficients_matrix <- matrix(c(a_11, a_12, ... , a_1m,
##                    a_21, a_22, ... , a_2m,
##                    a_m1, a_m2, ... , a_mm),
##                    m,m,
##                    byrow = TRUE)
##                    
## constants_matrix <- matrix(c(b_1,b_2,...b_m),
##                             m,1,)
##
## Then we solve it with solve(coeficientes_matrix, constant_matrix)

# Defining the matrices

coefficients_matrix <- matrix(c(2, 06,   0, 05,
                                6, 21,  08, 17,
                                4, 12,  -4, 13,
                                0, -3, -12, 2),
                              4,4,
                              byrow = TRUE)
constants_matrix <- matrix(c(50,
                             20), 2,1)

# The inverse matrix:
solve(coefficients_matrix)

  # Showing that the multiplication is equal to an identity matrix, %*% is the operator for matrix multiplication
round(solve(coefficients_matrix) %*% coefficients_matrix)

# Solving the linear system:

solve(coefficients_matrix, constants_matrix)

# For details about the funcion solve(), execute:
?solve
