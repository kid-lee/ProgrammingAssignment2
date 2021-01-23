source(cachematrix)

Mat3 <- matrix(rnorm(10000), ncol=100, nrow = 100)

CMAT3 <- makeCacheMatrix(Mat3)

cacheSolve(CMAT3)

cacheSolve(CMAT3)

