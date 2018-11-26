clear all; close all;
Data=xlsread('Sample1.xlsx','A1:D4');
%% Compute standardized scores
for i=1:size(Data)
   mu(1,i)=mean(Data(:,i));
   sd(i,1)=std(Data(:,i))
 end
