# Exercise 1: create 'exam1' function which returns a vector "Aa" "Bb" ... "Zz".
exam1 <- function() {
  return(paste0(LETTERS, letters))
}

exam1()


# Exercise 2: create 'exam2' function which returns the sum of 1 to an input number 'n'.
exam2 <- function(num) {
  return((num * (num + 1)) / 2)
}

exam2(10)


# Exercise 3: create 'exam3' function which returns the difference between two input numbers.
exam3 <- function(num1, num2) {
  if (num1 != num2) { return(max(num1, num2) - min(num1, num2)) }
  else { return(0) }
}

exam3(2,5)


# Exercise 4: create 'exam4' function for arithmetic operations.
exam4 <- function(num1, oper, num2) {
  if (!(oper %in% c('+', '-', '*', '%/%', '%%'))) {
    return("Please enter proper operators")
  }
  
  else if (oper %in% c('%/%', '%%')) {
    if (num1 == 0) { return('Error 1') }
    else if (num2 == 0) { return('Error 2') }
    else {
      if (oper == '%/%') { return(num1%/%num2) }
      if (oper == '%%') { return(num1%%num2) }
    }
  }
  
  else {
    if (oper == '+') { return(num1+num2) }
    if (oper == '-') { return(num1-num2) }
    if (oper == '*') { return(num1*num2) }
  }
}

exam4(15,'%/%',5)
  

# Exercise 5: create 'exam5' function that prints an input character for n times.
exam5 <- function(num, char='#') {
  paste(rep(char, num), collapse = "")
}

exam5(5)


# Exercise 6: create 'exam6' function that converts score to grade.
exam6 <- function(...) {
  score <- c(...)

  for (i in score) {
    if (is.na(i)) {grade <- 'NA'}
    else {
      if (i>=85) {grade <- 'HIGH'}
      else if (i>=70) {grade <- 'MIDDLE'}
      else {grade <- 'LOW'}
    }
    print(paste(i,' is equivalent to ', grade, sep=''))
  }
}

exam6(10,75,90,NA)