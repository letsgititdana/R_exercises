# 1
grade <- sample(1:6, 1)
ifelse(grade %in% c(1,2,3), paste(grade, "학년은 저학년입니다."), paste(grade, "학년은 고학년입니다."))


# 2
choice <- sample(1:5, 1); choice
a <- ifelse(choice == 1, 300+50,
            ifelse(choice == 2, 300-50,
                   ifelse(choice == 3, 300*50,
                          ifelse(choice == 4, 300/50,
                                 ifelse(choice == 5, 300%%50)))))
paste("결과값 :", a)


# 3
count <- sample(3:10, 1); count
deco <- sample(1:3, 1); deco

ifelse(deco==1, strrep('*', count),
       ifelse(deco==2, strrep('$', count),
              ifelse(deco==3, strrep('#', count))))


# 4
score <- sample(0:100, 1); score

if(score>=90) { 
  grade = 1
} else if (score>=80) {
  grade = 2
} else if (score>=70) {
  grade = 3
} else if (score>=60) {
  grade = 4
} else{
  grade = 5
}

level <- switch(grade,"A 등급", "B 등급", "C 등급", "D 등급", "F등급")
cat(score, " 점은 ", level,"입니다.", sep='')


# 5
alpha <- ''
for(i in 1:length(LETTERS)) {
  alpha[i] <- paste(LETTERS[i], letters[i], sep='')
}
alpha
