function newMerge()
filemane1='135069'
filename = strcat('./',filemane1,'.jpg');
Im = imread(filename);
[row,col,~] = size(Im);
filename2 = strcat('./',filemane1,'_500_HQSGRD.txt');
label=load(filename2);
num= max(label(:));
BW = boundarymask(label);

figure(1);hold on;imshow(imoverlay(Im,BW,'r'));
%imshow(IM);
[BW_Ours,~] = OurRegionMerge1(Im,label,BW);% _DBSCAN,lc
figure(2);hold on; imshow(imoverlay(Im,BW_Ours,'r'));
title('Ours');

end
