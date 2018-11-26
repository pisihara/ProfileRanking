# Classical MDS

levels <- c('11','10','21','20')
respondents <- c('R1','R2','R3','R4')
R1 <- c(1.5,2,1.5,2.5)
R2 <- c(3.5,3,3.5,2.5)
R3 <-c(2, 1.5, 3,1.)
R4 <- c(3,3.5,2,3)

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
par(mai=c(.5,.5,.5,.5))
plot(mds1a, type = 'n', axes = FALSE, xlab = '', ylab = '')
text(mds1a[, 1], mds1a[, 2], respondents)

par(new=T)

L11 <-c(1.5,3.5,2,3)
L10 <-c(2,3,1.5,3.5)
L21 <-c(1.5,3.5,3,2)
L20 <-c(2.5,2.5,2,3)
Level.data <- data.frame(L11,L10,L21,L20)
mds2 <- cmdscale(dist(Level.data))
rot2<-matrix(1:4,nrow=2, ncol=2)
theta2=0
rot2[1,1]<-  cos(theta2)
rot2[1,2]<- - sin(theta2)
rot2[2,1]<- sin(theta2)
rot2[2,2]<- cos(theta2)
ref2<-matrix(1:4,nrow=2, ncol=2)
ref2[1,1]<-  1
ref2[1,2]<-  0
ref2[2,1]<- 0
ref2[2,2]<- 1
mds2a <- t(rot2 %*% t(mds2))
par(mai=c(.5,.5,.5,.5))
plot(mds2a, type = 'n', axes = FALSE, xlab = '', ylab = '')
text(mds2a[, 1], mds2[, 2], levels)
