## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL                       ## Initialize inv as NULL; It will hold value of inverse matrix
  set <- function(y) {              ## Define the set function to assign new value of matix in parent environment
    x <<- y 
    inv <<- NULL                    ## If there is a new matrix , reset inv to NULL
  }
  get <- function() x               ## define the get function , returns value of the matrix arguement
}

  setinverse <- function(inverse)  inv <<- inverse        ## assigns value of inv in parent environment
  getinverse <- function() inv                            ## gets the value of inv where called
  list(set = set , get = get , setinverse = setinverse , getinverse = getinverse) # Needed for reference to the function with the $ operator
  
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x&getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}
