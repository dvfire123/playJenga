%% Main Sim Script
close all;
clear;
clc;

%% Start of Monte-Carlo
simCount = 2e6;
heightBins = NaN(simCount, 1);

for k = 1:simCount
    fprintf('Simcount: %d\n', k);
    heightBins(k) = playJenga(); 
end

histogram(heightBins, 'Normalization', 'probability', 'BinMethod', 'Integers');
xlabel('Tower Height');
ylabel('Distribution');
title('Distribution of Jenga Tower Heights after 2M Monte-Carlo Simulations');
avg = mean(heightBins);

save simData1M;