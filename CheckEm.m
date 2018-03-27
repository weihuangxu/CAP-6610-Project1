%%% CheckEm %%%

FileList = dir('*.mat');
NFiles   = length(FileList);

for n = 1:NFiles
    ImAndSegs = load(FileList(n).name);
    figure(1010);
    subplot(2,2,1); imagesc(ImAndSegs.Im);
    subplot(2,2,2); imagesc(ImAndSegs.Seg1);
    subplot(2,2,3); imagesc(ImAndSegs.Seg2);
    subplot(2,2,4); imagesc(ImAndSegs.Seg3);
    pause;
end
    