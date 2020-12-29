## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates the special square matrix and cashe in inverse in the cash·

makeCacheMatrix <- function(x = matrix()) {
  inver <- NULL
  set   <- function(y){
    x<<-y
    inver <<- NULL
  }
  rec <- function() x
  setInverse <- function(inverse)  inver<<- inverse.gaussian
  recInverse <- function() inver
  list(set = set,
       rec = rec,
       setInverse = setInverse,
       recInverse = recInverse)

}


## Write a short comment describing this function
##This function calculate the inverse of the special "matrix" created by 
## makeCacheMatrix above.In case the inverse is calculated, and the matrix still the same, this function "cashesolve" should return the inverse from the cashe.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inver<- x$recInverse()
  if (!is.null(inver)) {
    message("getting cached data")
    return(inver)
  }
  mat <- x$rec()
  inver <- solve(mat, ...)
  x$setInverse(inver)
  invermatrx$recinverse()
}
matrx <- makeCacheMatrix(matrix(11:16, 3, 3))
matrx$rec()

matrx$recInverse()


