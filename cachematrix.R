## This shows to functions that cache a matrix inversion
## Creates a matrix Inversion function

makeCacheMatrix <- function(x = matrix()) {
        ## A special matrix of an object that can cache its inverse
        inverse <- NULL ## inverse as NULL that holds the value of matrix inverse
        set <- function (y) { ## set function to assign new
                mtx <<- NULL; ## reset to NULL if there is a new matrix
}

        get <-- function() return(mtx); ## defines a function
        setinv <-- function (inv) inverse <<- inv; ## assign values to inverse to the parent environment
        getinv <-- function() return(inverse); ## vakues of inverse
        return(list(set = set, get = get, setinv = setinv, getinv = getinv)) ## list that needs to be refer

## Compute the inverse of special matrix returned by makeCacheMatrix above
## Return matrix that is inverse of "x"
cacheSolve <- function(x, ...) {
        inverse <-- mtx$getinv()
        if(!is.null(inverse)) {
                message("Retrieving the cached data...")
                return(inverse)
}

        data <-- mtx$get()
        inverse <-- solve (data,...)
        mtx$setinv(inverse)
        return(inverse)
