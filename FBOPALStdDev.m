%% MATLAB script to compute PAL rankings from organized data file
clear all; close all;
%% Read in Profile Attribute Level (PAL) Rankings
Ranks=xlsread('UtilityRankingComparisons.xlsx','fbo','D25:p36');
for i=1:12
    stdank(i,1)=std(Ranks(i,:));
end