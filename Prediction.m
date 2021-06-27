% Predicting the type of the cell

% Selecting and importing image from file;
[filename,pathname]=uigetfile('*.*','Select an image');
filewithpath=strcat(pathname,filename);
I=imread(filewithpath);

% Binarizing;
level = 0.75;
BW = imbinarize(I,level);

% Visualization and prediction;
figure
imshow(I)
label=classify(net,I);
title(['This cell is a ' char(label)])