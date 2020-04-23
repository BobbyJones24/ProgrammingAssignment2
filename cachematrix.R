## The first function creates the inverse of a matrix and stores it in the cache memory

## Creates the inverse of the matrix entered into the function

makeCacheMatrix <- function(x = matrix()) {
        if(!is.matrix(x)) {
                stop("Please enter a matrix as the function argument")
        } else {
                y <- solve(x)
                cachedmatrix <<- y
        }
        if(!is.matrix(cachedmatrix)) {
                stop("Matix is not invertible")
        } else  {
                print("matrix inverted and stored in cachedmatrix")
        }        
}


## Creates the inverse of matrix x, checks first to see if the inverse has already been
## calculated and stored in memory.  Pulls first from memory if it exists, if not calculates
## the inverse using solve()

cacheSolve <- function(x, ...) {
        if(!is.null(cachedmatrix)) {
                y <- cachedmatrix
        } else {
                y <- solve(x)
                cachedmatrix <<- y       
        }
        print(y)
}
