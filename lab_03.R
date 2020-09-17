# 1
library(datasets)
data(iris)
str(iris)


# 2
x <- 1:5
y <- seq(2,10,2)
df1 <- data.frame(x,y)


# 3
col1 <- 1:5
col2 <- letters[1:5]
col3 <- col1+5
df2 <- data.frame(col1, col2, col3)


# 4
제품명 <- c("사과", "딸기", "수박")
가격 <- c(1800, 1500, 3000)
판매량 <- c(24, 38, 13)
df3 <- data.frame(제품명, 가격, 판매량, stringsAsFactors=FALSE)
is.factor(df3$제품명)


# 5
mean(df3$가격)
mean(df3$판매량)


# 6
name <- c("Potter", "Elsa", "Gates", "Wendy", "Ben")
gender <- factor(c("M", "F", "M", "F", "M"))
math <- c(85, 76, 99, 88, 40)
df4 <- data.frame(name, gender, math)
str(df4)

## 6-1) stat 변수를 추가하시오.
df4$stat <- c(76, 73, 95, 82, 35)

## 6-2) math 변수와 stat 변수의 합을 구하여 score 변수에 저장하시오. 
df4$score <- df4$math + df4$stat

## 6-3) 논리 연산 인덱싱을 이용하여 score가 150 이상이면 A, 100 이상 150 미만이면 B, 70 이상 100 미만이면 C, 70 미만이면 D 등급을 부여하고 grade 변수에 저장하시오.
df4$grade <- ifelse(df4$score>=150, "A", ifelse(df4$score>=100, "B", ifelse(df4$score>=70, "C", "D")))


# 7
emp <- read.csv("data/emp.csv")
View(emp)
str(emp)

## 7-1) emp 에서 3행, 4행 , 5행만 출력한다.
emp[3:5,]

## 7-2) emp 에서 사번열을 제외하고 출력한다.
emp[, -4]

## 7-3) emp 에서 ename컬럼만 출력한다.
emp[, "ename", drop=F]

## 7-4) emp 에서 ename 과 sal컬럼만 출력한다.
emp[, c("ename", "sal"), drop=F]

## 7-5) 업무가 SALESMAN 인 사원의 이름, 월급, 직업을 출력한다.
subset(emp, job == "SALESMAN", select=c("ename", "sal", "job"))

## 7-6) 월급이 1000 이상이고 3000이하인 사원들의 이름, 월급, 부서번호를 출력한다.
subset(emp, sal>=1000 & sal<=3000, select=c("ename", "sal", "deptno"))

## 7-7) emp 에서 직업이 ANALYST 가 아닌 사원들의 이름, 직업, 월급을 출력한다.
subset(emp, job!="ANALYST", select=c("ename","job","sal"))

## 7-8) emp 에서 업무가 SALESMAN 이거나 ANALYST 인 사원들의 이름, 직업을 출력한다.
subset(emp, job=="SALESMAN" | job=="ANALYST", select=c("ename","job"))

## 7-9) emp 에서 커미션이 정해지지 않은 직원의 이름과 월급 정보를 출력한다.
subset(emp, is.na(comm), select=c("ename","sal"))

## 7-10) 월급이 적은 순으로 모든 직원 정보를 출력한다.
emp[order(emp$sal),]

## 7-11) emp의 행과 열의 갯수를 점검한다.
nrow(emp)
ncol(emp)
dim(emp)