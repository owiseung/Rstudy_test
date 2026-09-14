#hello world
# 변수 지정
a<- 1+1
a;
# 배열
b <- c(1,2,3);
b
# Scalar : 구성인자 1개
scalar <- 1
scalar
typeof(scalar);
scalar2 <- "bts"
scalar2
typeof(scalar2);

# Matrix : 단순 DF 
# nrow -> 행 개수 / nrow -> 열 개수 / byrow(행열 전환, False가 디폴트)
mat <- matrix(c(1,2,3,4,5,6), nrow=3);
mat
# rbind -> 행에 붙이기, cbind -> 열에 붙이기

mat1 <- c(1:3);
mat2 <- c(4:6);

mat3 <- rbind(mat1,mat2);
mat4 <- cbind(mat1,mat2);

mat3
mat4

# [] = 행렬, indexing

mat[1,2]
mat[1,]
mat[c(1,2),]

# array 3차원 만들기 (matrix 쌓기) -> pdf 확인

# 데이터프레임

btsname <-c("RM", "Jin", "Suga","Jhope", "Jimin", "V", "JK");
btsyear <-c(1994, 1992, 1993, 1994, 1995, 1995, 1997)
btsposition <-c("rap", "vocal", "rap", "rap", "vocal", "vocal","vocal")
bts <-data.frame(btsname, btsyear, btsposition, stringsAsFactors = FALSE)
bts

str(bts) # str은 기억해두기(데이터프레임 형태 확인)

# factor 변수 -> 문자열인데 범주가 있는 경우

bts$btsposition <-factor(btsposition)
str(bts$btsposition)
levels(bts$btsposition)

summary(bts$btsposition)

# factor 변수는 “값(일반 벡터)”에 “level”(문자열과 숫자를 대응)이라는 정보를 추가한 것이다. default로
# level의 값이 부여되지만 이를 수정할 수도 있다.

#안녕
  

