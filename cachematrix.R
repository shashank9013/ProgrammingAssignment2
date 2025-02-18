## Calculates the inverse of matrix and caches it


## function that calculates inverse of special matrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Function to cache the above inverse matrix
cacheSolve <- function(x, ...) {m <- x$getInverse()
if(!is.null(m)) {
  message("getting cached data")
  return(m)
}
data <- x$get()
m <- inverse(data, ...)
x$setInverse(m)
m
}


