# Classical MDS

levels <- c('1111','1112','1113','1121','1122','1123','1211','1212')

levels<-c('1111','1112','1113','1121','1122','1123','1131','1132','1133','1211','1212','1213','1221','1222','1223','1231','1232','1233','1311','1312',
          1313
          1321
          1322
          1323
          1331
          1332
          1333
          2111
          2112
          2113
          2121
          2122
          2123
          2131
          2132
          213
          2211
          2212
          2213
          2221
          2222
          2223
          2231
          2232
          2233
          2311
          2312
          2313
          2321
          2322
          2323
          2331
          2332
          2333
          3111
          3112
          3113
          3121
          3122
          3123
          3131
          3132
          3133
          3211
          3212
          3213
          3221
          3222
          3223
          3231
          3232
          3233
          3311
          3312
          3313
          3321
          3322
          3323
          3331
          3332
          3333
)
respondents <- c('FBO1','FBO2','FBO3','FBO4','FBO5','NGO1','NGO2','NGO3','NGO4','NGO5')
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
