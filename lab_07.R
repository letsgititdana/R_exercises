# 1
countEvenOdd <- function(numbers) {
  even = 0
  odd = 0
  for (i in numbers) {
    if (i%%2 == 0) { even = even+1 }
    else if (i%%2 !=0) { odd = odd+1 }
    else {return(NULL)}
  }
  return(list(even=even,odd=odd))
}

countEvenOdd(c(1,2,3,4,5,6,7))


# 2
vmSum <- function(numvec) {
  if (!is.vector(numvec)) {return('Please throw a vector!') }
  else if (class(numvec) != "numeric") {
    print('Please throw a numeric vector!')
    return(0)}
  else {
    sum = 0
    for (i in numvec) {sum=sum+i}
    return(sum)
  }
}

vmSum(data.frame(1,2,3))


# 3
vmSum2 <- function(numvec) {
  if (!is.vector(numvec)) {stop('Please throw a vector!')}
  else if (class(numvec)!="numeric") {warning('Please throw a numeric vector!'); return(0)}
  else {
    sum=0
    for (i in numvec) {sum=sum+i}
    return(sum)
  }
}
  
vmSum2(data.frame(1,2,3))


# 4
mySum <- function(vec) {
  if (!is.vector(vec)) {stop('Please throw a vector!')}
  else {
    even = 0
    odd = 0
    for (i in vec) {
      if (is.na(i)) {i=min(vec); warning('Changed NA to minimum value!')}
      else if (i%%2==0) {even = even+i}
      else {odd = odd+i}
    }
    return(list(evenSum=even, oddSum=odd))
  }
}

mySum(c(1,2,3,4,NA,6,7))


# 5
myExpr <- function(func) {
  if (!is.function(func)) {stop('Please throw a function!')}
  else {
    vec <- sample(1:45, 6); print(vec)
    return(func(vec))
  }
}

myExpr(mySum)


# 6
createVector <- function(...) {
  vec <- c(...)
  if (length(vec)==0) {return()}
  else if (sum(is.na(vec))>0) {return(NA)}
  else {return(vec)}
}

createVector(1,2,3,4,5)


# 7
createVector2 <- function(...) {
  vec <- list(...)
  if (length(vec)==0) {return()}
  else {
    num <- c()
    char <- c()
    logic <- c()
    for (i in 1:length(vec)) {
      if (is.numeric(vec[[i]])) {num[i] <- vec[[i]]}
      else if (is.character(vec[[i]])) {char[i] <- vec[[i]]}
      else {logic[i] <- vec[[i]]}
    }
    result <- list(numeric=num, character=char, logic=logic)
    return(lapply(result, function(x) x[!is.na(x)]))
  }
}

createVector2(1,2,'a',TRUE,3,FALSE,4,5,'b')



