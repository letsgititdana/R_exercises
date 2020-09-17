# 1
v1 <- 1:10
v2 <- v1 * 2
v3 <- v2[-(5)]

max_v <- max(v2)
min_v <- min(v2)
avg_v <- mean(v2)
sum_v <- sum(v2)

v1; v2; v3; max_v; min_v; avg_v; sum_v


# 2
v4 <- seq(1,9,2); v4
v5 <- rep(1,5); v5
v6 <- rep(c(1,2,3),3); v6
v7 <- rep(1:4, each=2); v7


# 3
nums <- sample(1:100, 10, replace = FALSE); nums
sort(nums)
sort(nums, decreasing = TRUE)

nums[nums>50]
nums[nums<=50]
which.max(nums)
which.min(nums)


#4
v8 <- seq(1,10,3)
names(v8) <- c('A','B','C','D')


#5
score <- sample(1:20, 5, replace = FALSE); score
myFriend = c('둘리','또치','도우너','희동','듀크')
names(score) <- myFriend; score
paste(score,myFriend,sep="-")

myFriend[which.max(score)]
myFriend[which.min(score)]
myFriend[score>10]


#6
count <- sample(1:100, 7, replace = FALSE); count
week.korname <- c("일요일", "월요일", "화요일", "수요일",
                  "목요일", "금요일", "토요일")
paste(week.korname, count, sep=" : ")

week.korname[which.max(count)]
week.korname[which.min(count)]
week.korname[count>50]
