## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(i = matrix()) {                     #supplying matrix to i
        inv <- NULL                                             
        set <- function(j) {
                i <<- j                       # setting the value of the matrix
                inv <<- NULL
  }
  get <- function() i                        # get the velue of matrix i
  setinverse <- function(inverse) inv <<- inverse       # setting the value of matrix i and make it inverse
  getinverse <- function() inv                          # get the inverse matrix
  list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(i, ...) {
  inv <- i$getinverse()                     
  if(!is.null(inv)) {                           # checking the inversion is made 
    message("getting cached data")              
    return(inv)
  }
  matrix_to_invert <- i$get()                  
  inv <- solve(matrix_to_invert, ...)
  i$setinverse(inv)
  inv      ## Return a matrix that is the inverse of 'i'
        
}
