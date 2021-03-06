# Classical MDS of ACBC Disaster Relief Organization Survey 2018
respondents <- c('F1','F2','F3','F4','F5','F6','F7','F8','F9','F10','F11','F12','F13','         N1','         N2','          N3','         N4','         N5','         N6')
F1 <- c(20.2,18.6,22.7,20.8,18.2,22.5,  21.2,17.9,22.4,21.5,18.4,21.6)
F2 <- c(21.2,21.5,18.8,21.3,21.4,18.8,  17.8,21.5,22.2,22.1,17.1,22.3)
F3 <-c(21.1,18.1,22.5,20.3,18.5,22.8,   20.8,18.7,22.1,21.8,21.9,17.9)
F4 <- c(20.6,17.7,20.3,20.6,18.1,20.1,  21.2,17.8,20.7,21.6,15.6,21.6)
F5 <- c(20.3,20.4,17.8,20.1,17.6,20.7,  17.3,20.8,20.4,20.3,13.0,20.2)
F6 <- c(18.0,17.9,15.8,17.6,15.9,18.2,   15.3,18.2,18.2,18.8,14,18.8)
F7 <- c(19.3,17.4,20.0,19.5,17.4,19.7,  18.9,17.8,19.9,20.8,15.4,20.4)
F8 <- c(19.2,17.3,20.1,19.6,17.4,19.6,  16.6,19.8,20.3,20.2,15.8,20.6)
F9 <- c(20.8,21.0,19.6,21.3,21.6,18.7,  20.6,18.8,22.2,22.8,16.3,22.4)
F10 <- c(20.6,18.5,22.4,20.9,18.8,21.9,  18,21.4,22.1,22.6,16.8,22.1)
F11 <- c(19.9,19.7,17,19,17.5,20.1,      18.9,17.2,20.6,20.5,15.4,20.8)
F12 <- c(18.8,19.2,16.2,18.7,16.4,19.1,  17.9,16.7,19.5,19.4,15.4,19.4)
F13 <- c(20.9,21.8,18.8,21.7,18.1,21.6,  18,21.9,21.6,22.4,17.3,21.8)
N1 <-c(20.8,21.5,19.2,21.7, 18.7,21.0,   17.3,21.6,22.6,22.4,18.2,21.0)
N2 <-c(20.3,22,20.0,18.4,   21.1,22.8,   18.8,20.9,22.6,21.3,19.4,21.7)
N3 <-c(18.1,21.6,21.8,19.5, 20.3,21.7,   17.2,22.5,21.8,20.3,19.2,21.9)
N4 <-c(19.6,20.3,21.4,18.0, 21.3,22.2,   21.2,19.2,21.1,22.1,17.9,21.6)
N5 <- c(16.5,15.1,17.8,16.9,15.3,17.3,   14.2,17.5,17.8,17.4,16.7,15.4)
N6 <- c(20.6,21.5,19.4,21.2,21.4,18.8,   16.6,22.3,22.7,18.4,21.6,21.4)

Respondent.data <- data.frame(F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,F13,N1,N2,N3,N4,N5,N6)
mds1 <- cmdscale(dist(Respondent.data))
par(mai=c(.5,.5,.5,.5))
plot(mds1, type = 'n', axes = FALSE, xlab = '', ylab = '')
text(mds1[, 1], mds1[, 2], respondents)
