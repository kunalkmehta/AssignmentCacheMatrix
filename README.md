# AssignmentCacheMatrix
Programming assignment 2 for R Course from John Hopkin's University, Course code rprog-014
Programming Assignment 2 
   There are 2 Functions, makeCacheMatrix(), and cacheSolve() 
   You can put any numeric vector in makeCacheMatrix() in     
     the format makeCacheMatrix(c(4,3,3,2)). This would      
   automatically create a matrix. Since we are assuming that  
    values entered will be of invertible matrix, therefore    
   the function will calculate the length of the vector       
   entered and compute its square root to determine it's no   
     of rows and columns. Invertible matrix will always be    
   square matrix therefore this strategy will work to create  
                           matrix.                            
                                                                                             
cacheSolve() function, first checks if the inverse has    
   already been computed, and if it is, then it will get the  
   value from cache, else it will first compute it's inverse, 
   and then send across the inverse to makrCacheMatrix() to   
   store the value of inverse in cache.                
                                                              
                                                              
                        SAMPLE EXECUTION                      
                                                              
   > Matrix1<-makeCacheMatrix(c(4,3,3,2));                    
   > cacheSolve(Matrix1);                                     
     [1] "Matrix Inverse Will be:"                              
    [  ]  [,1] [,2]                                            
    [1,]   -2    3                                            
    [2,]    3   -4                                            
                                                              
   > cacheSolve(Matrix1);                                     
     getting cached for Matrix Inverse                        
     [  ]  [,1] [,2]                                          
     [1,]   -2    3                                            
     [2,]    3   -4                                           

