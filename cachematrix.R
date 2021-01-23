## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Create Object makeCacheMatrix, getters/seters etc

makeCacheMatrix <- function(x = matrix()) {
  
  # cache is Null at the begining
  inverseX <- NULL
  
  setmatrix <- function(y) {
    x <<- y
    m <<- NULL
  }
  getMatrix <- function() x
  
  # if you happen to know the inverse Matrix, you can type it in :) 
  setInverse <- function(inverseX_known) inverseX <<- inverseX_known

  getInverse <- function() inverseX
  
  list(setmatrix = setmatrix, getMatrix = getMatrix,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function
#check "special matrix", if there is a cached inverse record, return, if not
#calculate then return

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<- x$getInverse()
  
  #help to see where the function gets the result 
  #if its chached, you will see "inverse cache exist"
  #if it doesnt, you will see ""Too bad, its not in the cache,, working on it!!!!!""
  if(!is.null(m)){
    message("inverse cache exist")
    return(m)
  }
  
  message("Too bad, its not in the cache,, working on it!!!!!")
  tempMatrix <- x$getMatrix() 
  m<- solve(tempMatrix)
  x$setInverse(m)
  return(m)
  
}
