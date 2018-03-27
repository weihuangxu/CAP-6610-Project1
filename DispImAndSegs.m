 function [] = DispImAndSegs(ImAndSegs);
%function [] = DispImAndSegs(ImsAndSegs);
%
%%% INPUTS:
%%%         ImsAndSegs = struct with fields:
%%%
%%%            Im: [321×481×3 uint8]
%%%            Seg1: [321×481 uint16]
%%%            Seg2: [321×481 uint16]
%%%            Seg3: [321×481 uint16]

    figure(1010);
    subplot(2,2,1); imagesc(ImAndSegs.Im);
    subplot(2,2,2); imagesc(ImAndSegs.Seg1);
    subplot(2,2,3); imagesc(ImAndSegs.Seg2);
    subplot(2,2,4); imagesc(ImAndSegs.Seg3);