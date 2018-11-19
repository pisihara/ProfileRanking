%% Compute Regression Coefficients Based on Respondent Rankings
clear all;   close all;   format long;  
%%Read in sample ranking data 
Y=xlsread('MLR.xlsx','Sheet1','A1:C16');
M = [ones(size(Y(:,1))) Y(:,1) Y(:,2)];
C = M\Y(:,3); %REGRESSION COEFFICIENTS
%Predicted Sample Rankings
YH(1,1)=C(1,1)+C(2,1)+C(3,1);
YH(2,1)=C(1,1)+C(2,1)+C(3,1);
YH(3,1)=C(1,1)+C(2,1)+C(3,1);
YH(4,1)=C(1,1)+C(2,1)+C(3,1);
YH(5,1)=C(1,1)+C(2,1);
YH(6,1)=C(1,1)+C(2,1);
YH(7,1)=C(1,1)+C(2,1);
YH(8,1)=C(1,1)+C(2,1);
YH(9,1)=C(1,1)+C(3,1);
YH(10,1)=C(1,1)+C(3,1);
YH(11,1)=C(1,1)+C(3,1);
YH(12,1)=C(1,1)+C(3,1);
YH(13,1)=C(1,1);
YH(14,1)=C(1,1);
YH(15,1)=C(1,1);
YH(16,1)=C(1,1);
% Actual Sample Rankings
SR(1,1)=(Y(1,3)+Y(2,3)+Y(3,3)+Y(4,3))/4;
SR(2,1)=(Y(5,3)+Y(6,3)+Y(7,3)+Y(8,3))/4;
SR(3,1)=(Y(9,3)+Y(10,3)+Y(11,3)+Y(12,3))/4;
SR(4,1)=(Y(13,3)+Y(14,3)+Y(15,3)+Y(16,3))/4;
SRH(1,1)=(YH(1,1)+YH(2,1)+YH(3,1)+YH(4,1))/4;
SRH(2,1)=(YH(5,1)+YH(6,1)+YH(7,1)+YH(8,1))/4;
SRH(3,1)=(YH(9,1)+YH(10,1)+YH(11,1)+YH(12,1))/4;
SRH(4,1)=(YH(13,1)+YH(14,1)+YH(15,1)+YH(16,1))/4;
R(1,1)=abs(SR(1,1)-SRH(1,1));
R(2,1)=abs(SR(2,1)-SRH(2,1));
R(3,1)=abs(SR(3,1)-SRH(3,1));
R(4,1)=abs(SR(4,1)-SRH(4,1));
