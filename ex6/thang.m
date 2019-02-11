clear; close all; clc

fprintf('Testing ...')
load('ex6data1.mat');
plotData(X, y);

C = 1;
sigma = 0.1;
model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
visualizeBoundary(X, y, model);
