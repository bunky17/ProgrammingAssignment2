---
title: "Example output"
author: "Ian Kerr"
date: "June 12, 2017"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown
> myMatrix <- makeCacheMatrix(matrix(1:4, 2, 2))
> myMatrix$get()
     [,1] [,2]
[1,]    1    3
[2,]    2    4
> cacheSolve(myMatrix)
saving cached inverse of matrix
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
> cacheSolve(myMatrix)
getting cached inverse matrix
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
> myMatrix$getInverse()
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
> mymatrix$set(matrix(1, 0, 5, 2, 1, 6, 3, 4,0,3,3 ))

> myMatrix$set(matrix(c(1, 0, 5, 2, 1, 6, 3, 4,0), 3, 3 ))
> myMatrix$get()
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    0    1    4
[3,]    5    6    0

> cacheSolve(myMatrix)
saving cached inverse of matrix
     [,1] [,2] [,3]
[1,]  -24   18    5
[2,]   20  -15   -4
[3,]   -5    4    1
> cacheSolve(myMatrix)
getting cached inverse matrix
     [,1] [,2] [,3]
[1,]  -24   18    5
[2,]   20  -15   -4
[3,]   -5    4    1
> 