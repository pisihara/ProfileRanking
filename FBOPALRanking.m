%% MATLAB script to compute PAL rankings from organized data file
clear all; close all;
n=5; %% number of respondents
%% Create respondents
for h=1:n
    org(h,1)=respondent;
end
%% Read in Organized Data
Profiles=xlsread('FBOOrganized.xlsx','Overall','A2:D82');
ProfileRankings=xlsread('FBOOrganized.xlsx','Overall','G2:K82')
%% Compute PAL Rankings by each organization
for h=1:n
for i=1:4
    for j=1:3
         org(h,1).PALRanking(i,j)=0;
        for k=1:81
        if Profiles(k,i)==j
        org(h,1).PALRanking(i,j)=  org(h,1).PALRanking(i,j) + ProfileRankings(k,h)
        end
        end
        org(h,1).PALRanking(i,j)= org(h,1).PALRanking(i,j)/27;
     end
    end
end

%% Compute sample PAL Rankings
samplePALranking=zeros(4,3);
for i=1:4
    for j=1:3
        for h=1:n
        samplePALranking(i,j)=samplePALranking(i,j)+org(h,1).PALRanking(i,j);
        end
        samplePALranking(i,j)=samplePALranking(i,j)/n;
    end
end
