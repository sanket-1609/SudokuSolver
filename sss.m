% Load image
close all;
clear all;
RGB=imread('image(56).jpg');
I=RGB;
[h, ~]=size(RGB);
RGB=imresize(RGB,480/h);
GR=rgb2gray(RGB);
BW=adaptivethreshold(GR,20,0.03,0);
% imtool(BW);
BW=~BW;
[labeledImage, numberOfBlobs] = bwlabel(BW);
blobMeasurements = regionprops(labeledImage, 'area');
allAreas = [blobMeasurements.Area];
[sortedAreas, sortIndexes] = sort(allAreas, 'descend');
numberToExtract=1;
biggestBlob = ismember(labeledImage, sortIndexes(1:numberToExtract));
binaryImage = biggestBlob > 0;
BW=binaryImage;
% BW=imclose(BW,strel('square',5));
imtool(BW);


% Compute edge image
% BW = edge(I,'canny');

% Compute Hough transform
[H theta rho] = hough(BW);

% Find local maxima of Hough transform
numpeaks =70;
thresh = ceil(0.1 * max(H(:)));
P = houghpeaks(H,numpeaks,'threshold',thresh);

% Extract image lines
lines = houghlines(BW,theta,rho,P,'FillGap',50);

%--------------------------------------------------------------------------
% Display results
%--------------------------------------------------------------------------
% Original image
figure; imshow(I);

% Edge image
figure; imshow(BW);

% Hough transform
figure; image(theta,rho,imadjust(mat2gray(H)),'CDataMapping','scaled');
hold on; colormap(gray(256));
plot(theta(P(:,2)),rho(P(:,1)),'o','color','r');

% Detected lines
figure; imshow(I); hold on; n = size(I,2);
for k = 1:length(lines)
    % Overlay kth line
    x = [lines(k).point1(1) lines(k).point2(1)];
    y = [lines(k).point1(2) lines(k).point2(2)];
    line = @(z) ((y(2) - y(1)) / (x(2) - x(1))) * (z - x(1)) + y(1);
    plot([1 n],line([1 n]),'Color','r');
end
