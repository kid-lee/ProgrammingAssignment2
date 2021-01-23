source(cachematrix)

Mat3 <- matrix(rnorm(10000), ncol=100, nrow = 100)

CMAT3 <- makeCacheMatrix(Mat3)

# you will see "Too bad, its not in the cache,, working on it!!!!!" when running the fuction for the fist time 
cacheSolve(CMAT3)

# you will see "Too bad, its not in the cache,, working on it!!!!!". when running the fuction for the 2nd time
cacheSolve(CMAT3)

