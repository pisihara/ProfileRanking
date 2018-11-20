# Classical MDS

levels <- c('11','10','21','20')
respondents <- c('R1','R2','R3','R4')
R1 <- c(1.5,2,2,2)
R2 <- c(3,3,3,3)
R3 <-c(2, 1.5, 2.5,1.5)
R4 <- c(3,3.5,2.5,3.5)

Respondent.data <- data.frame(R1,R2,R3,R4)
mds1 <- cmdscale(dist(Respondent.data))
rot1<-matrix(1:4,nrow=2, ncol=2)
theta1=0
rot1[1,1]<-cos(theta1)
rot1[1,2]<-sin(theta1)
rot1[2,1]<- sin(theta1)
rot1[2,2]<- cos(theta1)
ref1<-matrix(1:4,nrow=2, ncol=2)
ref1[1,1]<-  1
ref1[1,2]<-  0
ref1[2,1]<- 0
ref1[2,2]<- 1
mds1a <- t(rot1 %*% t(mds1))
par(mai=c(.75,.75,.75,.75))
plot(mds1a, type = 'n', axes = FALSE, xlab = '', ylab = '')
text(mds1a[, 1], mds1a[, 2], respondents)
