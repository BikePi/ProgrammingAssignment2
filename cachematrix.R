## Coursera rprog-016 - ProgrammingAssignment2

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL

set <- function(y) {
        x <<- y
	inv < -- NULL
	}

}

get <- function() {
        x
	}

setinv <- function(i) {
        inv <<- i
	}

getint <- function() {
        inv
	}

## returns the new matric
list(set = set,
        get = get,
	setinv = setinv,
        getinv = getinv)
}




# This function computes the inverse of the special "matrix" returned by 
# the above function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getinv()

	if(!is.null(inv)) {
	message("getting the cached inverse")
	return(inv)
}

        matr <- x$get()
	inv <- solve(matr, ...)
	x$setinv(inv)
	message("calculated the inverse and cached it")
	return(inv)

}
