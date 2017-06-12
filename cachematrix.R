## 
## Programming Assignment 2: Caching the inverse of a matrix
## Function: stores a matrix and its inverse in a cache
##



## Create a "special object' with getters/setters that contains a matrix and its inverse.

makeCacheMatrix <- function(m = matrix()) {
      mInv <- NULL
      
      # sets matrix
      set <- function(x) {
            m <<- x
            mInv <<- NULL # flag inverse matrix not yet computed
      }
      # returns matrix
      get <- function() m
      
      # sets inverse matrix 
      setInverse <- function(mInverse) mInv <<- mInverse
      
      #returns inverse matrix
      getInverse <- function() mInv
      
      # list of functions: Required to replicate object behaviour for "special object"
      list(set = set, get = get,
           setInverse = setInverse,
           getInverse = getInverse)
}


## Returns the inverse of a matrix cached inside the passed "object".
## If the inverse does not exist, the inverse is computed and stored for future retrieval.

cacheSolve <- function(mObj, ...) {
      mInv <- mObj$getInverse()
      
      # If inverse matrix exists, return the inverse matrix.      
      if(!is.null(mInv)) {
            message("getting cached inverse matrix")
            return(mInv)
      }
      
      # Compute, store & return inverse matrix
      m <- mObj$get()
      mInv <- solve(m, ...)
      message("saving cached inverse of matrix")
      mObj$setInverse(mInv)
      mInv
}

