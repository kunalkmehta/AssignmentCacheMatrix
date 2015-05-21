################### Programming Assignment 2 ###################
#   There are 2 Functions, makeCacheMatrix(), and cacheSolve() #
#   You can put any numeric vector in makeCacheMatrix() in     # 
#     the format makeCacheMatrix(c(4,3,3,2)). This would       #
#   automatically create a matrix. Since we are assuming that  #
#    values entered will be of invertible matrix, therefore    #
#   the function will calculate the length of the vector       #
#   entered and compute its square root to determine it's no   #
#     of rows and columns. Invertible matrix will always be    #
#   square matrix therefore this strategy will work to create  #
#                           matrix.                            #
#                                                              #
#    cacheSolve() function, first checks if the inverse has    #
#   already been computed, and if it is, then it will get the  #
#   value from cache, else it will first compute it's inverse, #
#   and then send across the inverse to makrCacheMatrix() to   #
#          store the value of inverse in cache.                #
#                                                              #
#                                                              #
#                        SAMPLE EXECUTION                      #
#                                                              #
#   > Matrix1<-makeCacheMatrix(c(4,3,3,2));                    #
#   > cacheSolve(Matrix1);                                     #
#     [1] "Matrix Inverse Will be:"                            #  
#          [,1] [,2]                                           # 
#    [1,]   -2    3                                            #
#    [2,]    3   -4                                            #
#                                                              #
#   > cacheSolve(Matrix1);                                     #
#     getting cached for Matrix Inverse                        #
#           [,1] [,2]                                          #
#     [1,]   -2    3                                           # 
#     [2,]    3   -4                                           #
################################################################


# Function to create and store inverse in cache

makeCacheMatrix <- function(mat) 
{
  checklen<-length(mat); # length function will tell us about the length of the vector entered
  calcrowmat=sqrt(checklen); # Square root function will give us square root, to calculate number of rows for the matrix
  
  mat1<-matrix(mat, nrow=calcrowmat, ncol=calcrowmat); # Since we are creating square matrix, nrow=ncol
  invmat <- NULL;
  get <- function()  # Function to get the matrix
  { 
    mat1;
  }
  setinv <- function(inverse) # Function to store inverse of matrix in cache
  {
    invmat <<- inverse;
  }
  getinv <- function() # Function to retrieve the inverse of the matrix 
  {
    invmat;
  }
  
  list(get = get, setinv = setinv, getinv = getinv); # List of functions available
}

# Function to check if inverse exists, if yes then retrieve from cache, else calculate
cacheSolve <- function(test) 
{
  
  checkmat <- test$getinv(); # Checking if inverse of the matrix exists
  
  if(!is.null(checkmat)) # If the inverse exists, then take the value from cache
  {
    print("getting cached for Matrix Inverse");
    inv<-test$getinv(); # Retrieving value from cache
  }
  else # If inverse doesn't exist then compute the value of inverse
  {
    data <- test$get(); # Retrieve matrix 
    inv <- solve(data); # Compute inverse
    test$setinv(inv); # Store inverse in cache
    print("Matrix Inverse Will be:");
  }
  inv; # Print inverse of the matrix
}
######################End of Program######################