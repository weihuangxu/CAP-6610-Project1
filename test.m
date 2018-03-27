close all;
clear all;
clc;
tic;
addpath('.\ImsAndSegs');
% FileName = 'ImsAndTruths100075.mat';
% ImsAndSegs = load(FileName);
% DispImAndSegs(ImsAndSegs);

FileName = 'PaviaHyperIm.mat';
ImsAndSegs = load(FileName);

%[ClusterIm, CCIm] = MyKmeans(ImsAndSegs.Im, 'RGB', 10);
%[ClusterIm] = MyKmeans(ImsAndSegs.PaviaHyperIm, 'Hyper', 10);
%[ClusterIm, CCIm] = MyFCM(ImsAndSegs.Im, 'RGB', 5);
%[ClusterIm] = MyFCM(ImsAndSegs.PaviaHyperIm, 'Hyper', 21);
%[ClusterIm, CCIm] = MyGMM(ImsAndSegs.Im, 'RGB', 5);
[ClusterIm] = MyGMM(ImsAndSegs.PaviaHyperIm, 'Hyper', 21);
figure;
imagesc(ClusterIm), title('Labeled Image');
% figure;
% imshow(CCIm(:,:,1),[]);
toc;