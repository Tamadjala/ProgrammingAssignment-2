## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    z <- NULL
    
    set <- function(y){
        
        x <<- y
        z <<- NULL
    }
    
    get <- function() x
    setInverse <- function(solveMatrix) z <<- solveMatrix
    getInverse <- function() z
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
    

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    z <- x$getInverse()
    
    if(!is.null(z)){
        
        message("cached data")
        return(z)
    }
    mat <- x$get()
    z <- solve(mat,...)
    x$setInverse(z)
    z 
    
}
