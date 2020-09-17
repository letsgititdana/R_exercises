# 1
v1 <- seq(10,38,2)
m1 <- matrix(v1, 3, 5, byrow=TRUE)
m2 <- m1+100

m_max_v <- max(m1)
m_min_v <- min(m1)
row_max <- apply(m1, 1, max)  # 행 단위 최대값
col_max <- apply(m1, 2, max)  # 열 단위 최대값
m1; m2; m_max_v; m_min_v; row_max; col_max


# 2
n1 <- 1:3
n2 <- 4:6
n3 <- 7:9

m2 <- cbind(n1, n2, n3)
is.matrix(m2)   # TRUE


# 3
m3 <- matrix(1:9, nrow=3, byrow=TRUE); m3


# 4
m4 <- m3
rownames(m4) <- c("row1", "row2", "row3")
colnames(m4) <- c("col1", "col2", "col3")
m4


# 5
alpha <- matrix(letters, nrow=2, ncol=3)
alpha2 <- rbind(alpha, c('x', 'y', 'z')); alpha2
alpha3 <- cbind(alpha, c('s','p')); alpha3


# 6
a <- array(1:24, c(2,3,4)); a

## (1) 2행3열4층의 데이터를 출력한다.
a[2,3,4]

## (2) 각 층마다 2행의 데이터를 출력한다.
a[2,,]

## (3) 각 층마다 1열의 데이터를 출력한다.
a[,1,]

##(4) 3층의 모든 데이터를 출력한다.
a[,,3]

##(5) a라는 배열을 구성하는 모든 데이터에 100을 + 연산하여 출력한다.
a+100

##(6) 4층의 모든 데이터들에 100을 곱한 결과를 출력한다.
a[,,4]*100

##(7) 각층의 1행, 2열과3열만 출력한다.
a[1,2:3,]

##(8) 2층의 2행 데이터들의 값을 100을 더한 값으로 변경한다.
a[2,,2] <- a[2,,2] + 100

##(9) 1층의 모든 데이터들의 값에 2를 뺀 값으로 변경한다.
a[,,1] <- a[,,1] -2

##(10) a 배열의 모든 데이터 값들을 10을 곱한 값으로 변경한다.
a <- a*10

##(11) a 변수를 삭제한다.
rm(a)