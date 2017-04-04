%-- 15-02-2016 22:03 --%
%-- 15-02-2016 22:58 --%
%-- 17-02-2016 21:09 --%
%-- 17-02-2016 21:12 --%
array1 = [1 2 3 ; 4 5 6]
array2 = 1:2:10
% array indexing
var3 = array1(2,3)
var4 = array1(:,end)
var4 = array1(:,1:2:3)
b = [1 2 3 ; 4 5 6 ; 6 7 8; 7 8 9]
a = rand(3,4)
c = b*a
d = a*b
a1 = ones(4,3)
a2 = rand(4,3)
a3 = a1 .* a2
a4 = a2 ./ a1
im1 = imread('test.jpg');
imshow(im1) ;
imtool(im1) ;
[sa sb] = size(im1)
size(im1)
%-- 19-02-2016 10:32 --%
rgb1 = imread('gilly1.jpg') ;
size(rgb1)
figure , imshow(rgb1)
figure
figure , imshow(rgb1)
red1 = rgb1(:,:,1) ;
green1 = rgb1(:,:,2);
blue1 = rgb1(:,:,3) ;
imtool(red1)
imtool(green1)
imtool(blue1)
rgb1 = imread('gilly1.jpg') ;
size(rgb1)
imtool(rgb1)
figure , imshow(rgb1)
red1 = rgb1(:,:,1) ;
green1 = rgb1(:,:,2);
blue1 = rgb1(:,:,3) ;
rgb1 = imread('gilly1.jpg') ;
size(rgb1)
imtool(rgb1)
figure , imshow(rgb1)
red1 = rgb1(:,:,1) ;
green1 = rgb1(:,:,2);
blue1 = rgb1(:,:,3) ;
imtool(red1)
imtool(green1)
imtool(blue1)
im = imresize(rgb1 , 1/2) ;
[sx sy sz] = size(im)
for i = 1:sx
for j = 1:sy
if  ( im(i,j,1) >= 235 & im(i,j,2) >= 235  & im(i,j,3) >= 235)
im3(i,j)  = 0 ;
else
im3(i,j) = 1 ;
end
end
end
imtool(im3)
im = imread('test2.jpg'); % make sure that your current folder has this image
% now to detect any object in the image lets say the eyes of the bird, select
%the eye area when interactive crop window pops up.(use zoom for proper selection)
imc = imcrop(im); % this
im = imread('test2.jpg'); % make sure that your current folder has this image
% now to detect any object in the image lets say the eyes of the bird, select
%the eye area when interactive crop window pops up.(use zoom for proper selection)
imc = imcrop(im); % this
imc
imshow(imc);
mean_rmin = mean(min(imc(:,:,1)))
imc = imcrop(im);
imshow(imc);
mean_rmin = mean(min(imc(:,:,1))); % mean of minimums of red component
mean_rmax = mean(max(imc(:,:,1)));
mean_gmin = mean(min(imc(:,:,2)));
mean_gmax = mean(max(imc(:,:,2)));
mean_bmin = mean(min(imc(:,:,3)));
mean_bmax = mean(max(imc(:,:,3)));
var_r = 5;
var_g = 5;
var_b = 5;
im = ( im(:,:,1) > mean_rmin-var_r & im(:,:,1) < mean_rmax+var_r & im(:,:,2) > mean_gmin-var_g & im(:,:,2) < mean_gmax+var_g & im(:,:,3) > mean_bmin-var_b & im(:,:,3) < mean_bmax+var_b );
imshow(im);
%-- 19-02-2016 11:12 --%
matlabroot
%-- 19-02-2016 11:15 --%
se = strel('disk',3); % define srtucturing element for use in imerode, imdilate etc.
im2 = imerode(im, se);
imtool(im2);
se = strel('disk',4);
im3 = imdilate(im2, se);
imtool(im3);
im = imread('test2.jpg'); % make sure that your current folder has this image
% now to detect any object in the image lets say the eyes of the bird, select
%the eye area when interactive crop window pops up.(use zoom for proper selection)
imc = imcrop(im); % this will open an interactive crop window
mean_rmin = mean(min(imc(:,:,1))); % mean of minimums of red component
mean_rmax = mean(max(imc(:,:,1)));
mean_gmin = mean(min(imc(:,:,2)));
mean_gmax = mean(max(imc(:,:,2)));
mean_bmin = mean(min(imc(:,:,3)));
mean_bmax = mean(max(imc(:,:,3)));
var_r = 5;
var_g = 5;
var_b = 5;
% now applying the threshold( note this method is much faster than for loop
% method
im = ( im(:,:,1) > mean_rmin-var_r & im(:,:,1) < mean_rmax+var_r & im(:,:,2) > mean_gmin-var_g & im(:,:,2) < mean_gmax+var_g & im(:,:,3) > mean_bmin-var_b & im(:,:,3) < mean_bmax+var_b );
imshow(im);
%% Section2 Removing noise 1
se = strel('disk',3); % define srtucturing element for use in imerode, imdilate etc.
im2 = imerode(im, se);
imtool(im2);
se = strel('disk',4);
im3 = imdilate(im2, se);
imtool(im3);
se = strel('disk',3); % define srtucturing element for use in imerode, imdilate etc.
im2 = imerode(im, se);
imtool(im2);
se = strel('disk',4);
im3 = imdilate(im2, se);
imtool(im3);
se = strel('disk',3); % define srtucturing element for use in imerode, imdilate etc.
im2 = imerode(im, se);
imtool(im2);
se = strel('disk',4);
im3 = imdilate(im2, se);
imtool(im3);
se = strel('disk',3); % define srtucturing element for use in imerode, imdilate etc.
im2 = imerode(im, se);
imtool(im2);
se = strel('disk',4);
im3 = imdilate(im2, se);
imtool(im3);
imtool(im);
% this is to give an example of extracting only a concerned part in an
% image
% use matlab help window to get more help on functions
% '%%' this creates a section and then you can run code section by section
% choose the section to run and then click on 'Run Section' on top(or press ctrl+enter);
%% section1 : reading an image
% here we are working with rgb colorspace ( explore other color spaces also
% like ycbcr )
% first we read an image and then convert in to black and white by applying
% proper threshold
im = imread('test2.jpg'); % make sure that your current folder has this image
% now to detect any object in the image lets say the eyes of the bird, select
%the eye area when interactive crop window pops up.(use zoom for proper selection)
imc = imcrop(im); % this will open an interactive crop window
mean_rmin = mean(min(imc(:,:,1))); % mean of minimums of red component
mean_rmax = mean(max(imc(:,:,1)));
mean_gmin = mean(min(imc(:,:,2)));
mean_gmax = mean(max(imc(:,:,2)));
mean_bmin = mean(min(imc(:,:,3)));
mean_bmax = mean(max(imc(:,:,3)));
var_r = 5;
var_g = 5;
var_b = 5;
% now applying the threshold( note this method is much faster than for loop
% method
im = ( im(:,:,1) > mean_rmin-var_r & im(:,:,1) < mean_rmax+var_r & im(:,:,2) > mean_gmin-var_g & im(:,:,2) < mean_gmax+var_g & im(:,:,3) > mean_bmin-var_b & im(:,:,3) < mean_bmax+var_b );
imshow(im);
%% Section2 Removing noise 1
se = strel('disk',3); % define srtucturing element for use in imerode, imdilate etc.
im2 = imerode(imc, se);
imtool(im2);
se = strel('disk',4);
im3 = imdilate(im2, se);
imtool(im3);
% also explore imopen and imclose
% this is to give an example of extracting only a concerned part in an
% image
% use matlab help window to get more help on functions
% '%%' this creates a section and then you can run code section by section
% choose the section to run and then click on 'Run Section' on top(or press ctrl+enter);
%% section1 : reading an image
% here we are working with rgb colorspace ( explore other color spaces also
% like ycbcr )
% first we read an image and then convert in to black and white by applying
% proper threshold
i = imread('test2.jpg'); % make sure that your current folder has this image
% now to detect any object in the image lets say the eyes of the bird, select
%the eye area when interactive crop window pops up.(use zoom for proper selection)
im = imcrop(i); % this will open an interactive crop window
mean_rmin = mean(min(imc(:,:,1))); % mean of minimums of red component
mean_rmax = mean(max(imc(:,:,1)));
mean_gmin = mean(min(imc(:,:,2)));
mean_gmax = mean(max(imc(:,:,2)));
mean_bmin = mean(min(imc(:,:,3)));
mean_bmax = mean(max(imc(:,:,3)));
var_r = 5;
var_g = 5;
var_b = 5;
% now applying the threshold( note this method is much faster than for loop
% method
im = ( im(:,:,1) > mean_rmin-var_r & im(:,:,1) < mean_rmax+var_r & im(:,:,2) > mean_gmin-var_g & im(:,:,2) < mean_gmax+var_g & im(:,:,3) > mean_bmin-var_b & im(:,:,3) < mean_bmax+var_b );
imshow(im);
%% Section2 Removing noise 1
se = strel('disk',3); % define srtucturing element for use in imerode, imdilate etc.
im2 = imerode(im, se);
imtool(im2);
se = strel('disk',4);
im3 = imdilate(im2, se);
imtool(im3);
% also explore imopen and imclose
i = imread('test2.jpg'); % make sure that your current folder has this image
% now to detect any object in the image lets say the eyes of the bird, select
%the eye area when interactive crop window pops up.(use zoom for proper selection)
im = imcrop(i); % this will open an interactive crop window
mean_rmin = mean(min(imc(:,:,1))); % mean of minimums of red component
mean_rmax = mean(max(imc(:,:,1)));
mean_gmin = mean(min(imc(:,:,2)));
mean_gmax = mean(max(imc(:,:,2)));
mean_bmin = mean(min(imc(:,:,3)));
mean_bmax = mean(max(imc(:,:,3)));
var_r = 5;
var_g = 5;
var_b = 5;
% now applying the threshold( note this method is much faster than for loop
% method
im = ( im(:,:,1) > mean_rmin-var_r & im(:,:,1) < mean_rmax+var_r & im(:,:,2) > mean_gmin-var_g & im(:,:,2) < mean_gmax+var_g & im(:,:,3) > mean_bmin-var_b & im(:,:,3) < mean_bmax+var_b );
imshow(im);
%% Section2 Removing noise 1
se = strel('square',3); % define srtucturing element for use in imerode, imdilate etc.
im2 = imerode(im, se);
imtool(im2);
se = strel('disk',4);
im3 = imdilate(im2, se);
imtool(im3);
% also explore imopen and imclose
im = imcrop(i); % this will open an interactive crop window
mean_rmin = mean(min(imc(:,:,1))); % mean of minimums of red component
mean_rmax = mean(max(imc(:,:,1)));
mean_gmin = mean(min(imc(:,:,2)));
mean_gmax = mean(max(imc(:,:,2)));
mean_bmin = mean(min(imc(:,:,3)));
mean_bmax = mean(max(imc(:,:,3)));
var_r = 5;
var_g = 5;
var_b = 5;
% now applying the threshold( note this method is much faster than for loop
% method
im = ( im(:,:,1) > mean_rmin-var_r & im(:,:,1) < mean_rmax+var_r & im(:,:,2) > mean_gmin-var_g & im(:,:,2) < mean_gmax+var_g & im(:,:,3) > mean_bmin-var_b & im(:,:,3) < mean_bmax+var_b );
imshow(im);
%% Section2 Removing noise 1
se = strel('square',3); % define srtucturing element for use in imerode, imdilate etc.
im2 = imerode(im, se);
imtool(im2);
se = strel('square',4);
im3 = imdilate(im2, se);
imtool(im3);
impoen('test2.jpg');
imopen('test2.jpg');
imopen('test2.jpg',strel('square',3));
imopen(im,strel('square',3));
imshow(imopen(im,strel('square',3)));
imshow(imopen(im,strel('disk',3)));
line
imshow(imopen(im,strel('line',3)));
imshow(imopen(im,strel('line',1,4)));
imshow(imopen(im,strel('line',5,4)));
imshow(imclose(im,strel('square',3)));
imshow(im);
imshow(imclose(im,strel('square',3)));
imshow(imclose(im,strel('disk',3)));
im = imread('test2.jpg'); % make sure that your current folder has this image
% now to detect any object in the image lets say the eyes of the bird, select
%the eye area when interactive crop window pops up.(use zoom for proper selection)
imc = imcrop(im); % this will open an interactive crop window
mean_rmin = mean(min(imc(:,:,1))); % mean of minimums of red component
mean_rmax = mean(max(imc(:,:,1)));
mean_gmin = mean(min(imc(:,:,2)));
mean_gmax = mean(max(imc(:,:,2)));
mean_bmin = mean(min(imc(:,:,3)));
mean_bmax = mean(max(imc(:,:,3)));
var_r = 5;
var_g = 5;
var_b = 5;
% now applying the threshold( note this method is much faster than for loop
% method
im = ( im(:,:,1) > mean_rmin-var_r & im(:,:,1) < mean_rmax+var_r & im(:,:,2) > mean_gmin-var_g & im(:,:,2) < mean_gmax+var_g & im(:,:,3) > mean_bmin-var_b & im(:,:,3) < mean_bmax+var_b );
imshow(im);
%% Section2 Removing noise 1
se = strel('disk',3); % define srtucturing element for use in imerode, imdilate etc.
im2 = imerode(im, se);
imtool(im2);
se = strel('disk',4);
im3 = imdilate(im2, se);
imtool(im3);
p = 1600;
im5 = bwareaopen(im, p); % removes part with pixels less than p
imtool(im5);
im6 = imfill(im5, 'holes');% fills holes
imtool(im6);
p = 160;
im5 = bwareaopen(im, p); % removes part with pixels less than p
imtool(im5);
im6 = imfill(im5, 'holes');% fills holes
imtool(im6);
p = 16;
im5 = bwareaopen(im, p); % removes part with pixels less than p
imtool(im5);
im6 = imfill(im5, 'holes');% fills holes
imtool(im6);
p = 160000;
im5 = bwareaopen(im, p); % removes part with pixels less than p
imtool(im5);
im6 = imfill(im5, 'holes');% fills holes
imtool(im6);
lb = bwlabel(im6); % label matrix
imtool(lb);
s = regionprops(lb, 'Centroid', 'Area'); % see help for more properties
area1 = s(1).Area;
area2 = s(2).Area;
centroid1 = s(1).Centroid;
centroid2 = s(2).Centroid;
% how will you find the shape of the region ?
p = 1600;
im5 = bwareaopen(im, p); % removes part with pixels less than p
imtool(im5);
im6 = imfill(im5, 'holes');% fills holes
imtool(im6);
lb = bwlabel(im6); % label matrix
imtool(lb);
s = regionprops(lb, 'Centroid', 'Area'); % see help for more properties
area1 = s(1).Area;
area2 = s(2).Area;
centroid1 = s(1).Centroid;
centroid2 = s(2).Centroid;
imshow(im);
% this is to give an example of extracting only a concerned part in an
% image
% use matlab help window to get more help on functions
% '%%' this creates a section and then you can run code section by section
% choose the section to run and then click on 'Run Section' on top(or press ctrl+enter);
%% section1 : reading an image
% here we are working with rgb colorspace ( explore other color spaces also
% like ycbcr )
% first we read an image and then convert in to black and white by applying
% proper threshold
im = imread('test2.jpg'); % make sure that your current folder has this image
% now to detect any object in the image lets say the eyes of the bird, select
%the eye area when interactive crop window pops up.(use zoom for proper selection)
imc = imcrop(im); % this will open an interactive crop window
mean_rmin = mean(min(imc(:,:,1))); % mean of minimums of red component
mean_rmax = mean(max(imc(:,:,1)));
mean_gmin = mean(min(imc(:,:,2)));
mean_gmax = mean(max(imc(:,:,2)));
mean_bmin = mean(min(imc(:,:,3)));
mean_bmax = mean(max(imc(:,:,3)));
var_r = 5;
var_g = 5;
var_b = 5;
% now applying the threshold( note this method is much faster than for loop
% method
im = ( im(:,:,1) > mean_rmin-var_r & im(:,:,1) < mean_rmax+var_r & im(:,:,2) > mean_gmin-var_g & im(:,:,2) < mean_gmax+var_g & im(:,:,3) > mean_bmin-var_b & im(:,:,3) < mean_bmax+var_b );
imshow(im);
%% Section2 Removing noise 1
se = strel('disk',3); % define srtucturing element for use in imerode, imdilate etc.
im2 = imerode(im, se);
imtool(im2);
se = strel('disk',4);
im3 = imdilate(im2, se);
imtool(im3);
% also explore imopen and imclose
%% Section3 Removing noise 2
p = 1600;
im5 = bwareaopen(im, p); % removes part with pixels less than p
imtool(im5);
im6 = imfill(im5, 'holes');% fills holes
imtool(im6);
%% Section4 Using Region Properties
lb = bwlabel(im6); % label matrix
imtool(lb);
s = regionprops(lb, 'Centroid', 'Area'); % see help for more properties
area1 = s(1).Area;
area2 = s(2).Area;
centroid1 = s(1).Centroid;
centroid2 = s(2).Centroid;
% how will you find the shape of the region ?
% this is to give an example of extracting only a concerned part in an
% image
% use matlab help window to get more help on functions
% '%%' this creates a section and then you can run code section by section
% choose the section to run and then click on 'Run Section' on top(or press ctrl+enter);
%% section1 : reading an image
% here we are working with rgb colorspace ( explore other color spaces also
% like ycbcr )
% first we read an image and then convert in to black and white by applying
% proper threshold
im = imread('test2.jpg'); % make sure that your current folder has this image
% now to detect any object in the image lets say the eyes of the bird, select
%the eye area when interactive crop window pops up.(use zoom for proper selection)
imc = imcrop(im); % this will open an interactive crop window
mean_rmin = mean(min(imc(:,:,1))); % mean of minimums of red component
mean_rmax = mean(max(imc(:,:,1)));
mean_gmin = mean(min(imc(:,:,2)));
mean_gmax = mean(max(imc(:,:,2)));
mean_bmin = mean(min(imc(:,:,3)));
mean_bmax = mean(max(imc(:,:,3)));
var_r = 5;
var_g = 5;
var_b = 5;
% now applying the threshold( note this method is much faster than for loop
% method
im = ( im(:,:,1) > mean_rmin-var_r & im(:,:,1) < mean_rmax+var_r & im(:,:,2) > mean_gmin-var_g & im(:,:,2) < mean_gmax+var_g & im(:,:,3) > mean_bmin-var_b & im(:,:,3) < mean_bmax+var_b );
imshow(im);
%% Section2 Removing noise 1
se = strel('disk',3); % define srtucturing element for use in imerode, imdilate etc.
im2 = imerode(im, se);
imtool(im2);
se = strel('disk',4);
im3 = imdilate(im2, se);
imtool(im3);
% also explore imopen and imclose
%% Section3 Removing noise 2
p = 1600;
im5 = bwareaopen(im, p); % removes part with pixels less than p
imtool(im5);
im6 = imfill(im5, 'holes');% fills holes
imtool(im6);
%% Section4 Using Region Properties
lb = bwlabel(im5); % label matrix
imtool(lb);
s = regionprops(lb, 'Centroid', 'Area'); % see help for more properties
area1 = s(1).Area;
area2 = s(2).Area;
centroid1 = s(1).Centroid;
centroid2 = s(2).Centroid;
im=imread('1.jpg');
imtool(im);
i=fft(im);
imtool(i);
o=rgb2gray(im);
imshow(o);
imtool(o);
i=fft(o);
imtool(i);
im=imread('2.jpg');
imtool(im);
i=fft(im);
imtool(i);
o=rgb2gray(im);
imshow(o);
imtool(o);
i=fft(o);
imtool(i);
d=edge(o,'sobel');
imtool(d);
d=edge(o,'canny');
imtool(d);
d=edge(o,'prewitt');
imtool(d);
d=edge(o,'roberts');
imtool(d);
d=edge(o,'log');
imtool(d);
d=edge(o,'canny');
imtool(d);
d=edge(o,'sobel');
imtool(d);
imtool();
imtool(o);
I=o;
[~, threshold] = edge(I, 'sobel');
threshold
fudgeFactor = .5;
BWs = edge(I,'sobel', threshold * fudgeFactor);
figure, imshow(BWs), title('binary gradient mask');
fudgeFactor = .9;
BWs = edge(I,'sobel', threshold * fudgeFactor);
figure, imshow(BWs), title('binary gradient mask');
fudgeFactor = 1.5;
BWs = edge(I,'sobel', threshold * fudgeFactor);
figure, imshow(BWs), title('binary gradient mask');
fudgeFactor = .5;
BWs = edge(I,'sobel', threshold * fudgeFactor);
figure, imshow(BWs), title('binary gradient mask');
fudgeFactor = 1.1;
BWs = edge(I,'sobel', threshold * fudgeFactor);
figure, imshow(BWs), title('binary gradient mask');
fudgeFactor = .5;
BWs = edge(I,'sobel', threshold * fudgeFactor);
figure, imshow(BWs), title('binary gradient mask');
fudgeFactor = 1.5;
BWs = edge(I,'sobel', threshold * fudgeFactor);
figure, imshow(BWs), title('binary gradient mask');
k=imcrop(I);
I=k
I=k;
[~, threshold] = edge(I, 'sobel');
fudgeFactor = .5;
BWs = edge(I,'sobel', threshold * fudgeFactor);
figure, imshow(BWs), title('binary gradient mask');
[~, threshold] = edge(I, 'sobel');
fudgeFactor = .9;
BWs = edge(I,'sobel', threshold * fudgeFactor);
figure, imshow(BWs), title('binary gradient mask');
fft(I);
imshow(fft(I));
plot(fft(I));
[~, threshold] = edge(I, 'sobel');
fudgeFactor = .5;
BWs = edge(I,'sobel', threshold * fudgeFactor);
figure, imshow(BWs), title('binary gradient mask');
se90 = strel('line', 3, 90);
se0 = strel('line', 3, 0);
BWsdil = imdilate(BWs, [se90 se0]);
figure, imshow(BWsdil), title('dilated gradient mask');
BWsdil = imdilate(BWsdil, [se90 se0]);
figure, imshow(BWsdil), title('dilated gradient mask');
BWsdil = imdilate(BWs, [se90 se0]);
figure, imshow(BWsdil), title('dilated gradient mask');
BWdfill = imfill(BWsdil, 'holes');
figure, imshow(BWdfill);
title('binary image with filled holes');
k=imopen('3.jpg',strel('disk',3));
k=imread('3.jpg');
k=rgb2gray(k);
imshow(k);
p=rgb2gray(imread('4.jpg'));
imshow(p)
l=imsubtract(k,p);
imshow(l);
imshow(k);
imshow(p);
imshow(p,k);
imtool(p);imtool(k);
o=p;
o = ( o(:,:,1) > 120)
imshow(o);
imdilate(o,strel('disk',5));
imshow(o);
o=imdilate(o,strel('disk',5));
imshow(o);
o=imerode(o,strel('disk',5));
imshow(o);
o=imdilate(o,strel('disk',2));
imshow(o);
o=imerode(o,strel('disk',2));
imshow(o);
imfill(o,'holes');
imshow(imfill(o,'holes'));
%-- 20-02-2016 17:59 --%
imread('1.jpg')
imshow(edge(imread('1.jpg')))
imshow(edge(imread('1.jpg')));
imshow(edge(rgb2gray(imread('1.jpg'))));
k=(edge(rgb2gray(imread('1.jpg'))));
imshow(imopen(k));
imshow(imopen(k),strel('disk',3));
imshow(imopen(k,strel('disk',3,1)));
imshow(imopen(k,strel('disk',3)));
imshow(imopen(k,strel('disk',3,0)));
imshow(imopen(k,strel('disk',3,02)));
imshow(imopen(k,strel('disk',3,2)));
imshow(imopen(k,strel('disk',3,4)));
imshow(imopen(k,strel('disk',1,0)));
imhow(k);
imshow(k);
l=rgb2gray(imread('1.jpg'));
imshow(l);
plot(hough(l));
hough(l);
imshow(rgb2gray(imread(1)));
imshow(rgb2gray(imread('1')));
imshow(rgb2gray(imread('1.jpg')));
i=imread('1.jpg');
imshow(cvHistnorm(i,[0,255]));
imshow(uint8(cvHistnorm(i,[0,255])));
imshow(cvHistnorm(i,[0,255]));
imshow(uint8(cvHistnorm(i,[0,255])));
i=rgb2gray(imread('1.jpg'));
imshow(uint8(cvHistnorm(i,[0,255])));
x=(uint8(cvHistnorm(i,[0,255])));
imshow(x);imshow(i);
imshow(x);imtool(i);
cvSobel(i,5);
imshow(cvSobel(i,5));
imshow(cvSobel(i,15));
imshow(cvSobel(i,65));
imshow(cvSobel(i,95));
imshow(cvSobel(i,65));
k=(cvSobel(i,65));
imopen(k,strel('disk',3));
l=imopen(k,strel('disk',3));
imshow(l);
l=imopen(k,strel('disk',2));
imshow(l);
l=imopen(k,strel('disk',1));
imshow(l);
o=cvHighboostFilter2(i);
imshow(o);
k=(cvSobel(0,65));
k=(cvSobel(o,65));
l=imopen(k,strel('disk',1));
imshow(l);
l=imopen(k,strel('disk',2));
imshow(l);
l=imopen(k,strel('disk',3));
imshow(l);
l=imopen(k,strel('square',1));
imshow(l);
l=imopen(k,strel('square',2));
imshow(l);
l=imopen(k,strel('square',3));
imshow(l);
l=imopen(k,strel('square',4));
imshow(l);
l=imopen(k,strel('square',5));
imshow(l);
SimpleColorDetectionByHue
demo_script
%-- 21-02-2016 22:17 --%
SimpleColorDetectionByHue
%-- 21-02-2016 22:17 --%
SimpleColorDetectionByHue
%-- 21-02-2016 22:58 --%
SimpleColorDetectionByHue
%-- 22-02-2016 12:06 --%
SimpleColorDetectionByHue
hshist
AAM_2D_example
%-- 22-02-2016 14:27 --%
hshist
imhist('1.jpg');
imhist(imread('1.jpg'));
imhist(rgb2hsv(imread('1.jpg')));
imhist(rgb2hsv(imread('1.jpg')),9);
imhist(rgb2gray(imread('1.jpg')),9);
imhist(rgb2gray(imread('1.jpg')),9)
plot(imhist(rgb2gray(imread('1.jpg')),9))
imshow(imhist(rgb2gray(imread('1.jpg')),9))
imshow(imhist(rgb2gray(imread('1.jpg')),9));
imhist(rgb2gray(imread('1.jpg')),9)
max(imhist(rgb2gray(imread('1.jpg')),9))
max(imhist(rgb2gray(imread('1.jpg')),9)(1,:)
max(imhist(rgb2gray(imread('1.jpg')),9)(1,:))
max(imhist(rgb2gray(imread('1.jpg')),9)[1,:])
max(imhist(rgb2gray(imread('1.jpg')),9)(1))
max(imhist(rgb2gray(imread('1.jpg')),9)[1])
[a b]=imhist(rgb2gray(imread('1.jpg')),9));
[a b]=imhist(rgb2gray(imread('1.jpg')),9);
a
b
%-- 22-02-2016 21:14 --%
hshist
%-- 22-02-2016 22:48 --%
imtool(imread('qq.jpg));
imtool(imread('qq.jpg'));
%-- 23-02-2016 11:04 --%
imread('1.jpg')
size(imread('1.jpg'))
SimpleColorDetectionByHue
RGBWheelTrack(imread('Capture.jpg'));
size(imread('1.jpg'))
RGBWheelTrack(imread('Capture.jpg'));
imtool(imread('Capture.jpg'));
size(imread('Capture.jpg'))
imtool(imread('Capture.jpg'));
RGBWheelTrack(imread('Capture.jpg'));
imtool(imread('Capture.jpg'));
RGBWheelTrack(imread('Capture.jpg'));
imtool(imread('Capture.jpg'));
RGBWheelTrack(imread('Capture.jpg'));
imtool(imread('Capture.jpg'));
size(imread('Capture.jpg'))
imtool(imread('Capture.jpg'));
RGBWheelTrack(imread('Capture.jpg'));
a=zeros(100,100);
a(58,2)=1
imshow(a);
a=zeros(100,3000);
imshow(a);
size(a)
a(2,500)=1
imshow(a);
clrscr
test=imread('test.jpg');
imtool(test)
for i=1:size(test,1)
for j=1:10
test(i,j)=[0,0,0]
end
end
for i=1:size(test,1)
for j=1:10
test(i,j,1)=0;test(i,j,2)=0;test(i,j,3)=0;
end
end
imtool(test)
RGBWheelTrack(test);
imshow(test)
RGBWheelTrack(test);
imshow(test)
RGBWheelTrack(test);
RGBWheelTrack(imread('rr.jpg'));
k=zeros(100)
k(:)
k(:-1)
k(-1:)
RGBWheelTrack(imread('rr.jpg'));
profile viewer
RGBWheelTrack(imread('rr.jpg'));
profile viewer
RGBWheelTrack(imread('rr.jpg'));
RGBWheelTrack(imread('test.jpg'));
RGBWheelTrack(imread('rr.jpg'));
RGBWheelTrack(imread('test.jpg'));
RGBWheelTrack(imread('rr.jpg'));
RGBWheelTrack(imread('test.jpg'));
clc
RGBWheelTrack(imread('test.jpg'));
clc
RGBWheelTrack(imread('test.jpg'));
RGBWheelTrack(imread('test.jpg'),2);
RGBWheelTrack(imread('test.jpg'),5);
RGBWheelTrack(imread('11(1).jpg'),5);
RGBWheelTrack(imread('11 (1).jpg'),5);
RGBWheelTrack(imread('11 (2).jpg'),5);
RGBWheelTrack(imread('11 (1).jpg'),5);
RGBWheelTrack(imread('t.jpg'),5);
RGBWheelTrack(imread('11 (1).jpg'),5);
imaqtool
round1
imaqmem
round1
a = imaqhwinfo('winvideo',1)
a.SupportedFormats
round1
imaqtool
%-- 23-02-2016 21:34 --%
round1
stop(vid);
RGBWheelTrack
round1
RGBWheelTrack
stop(vid);
round1
stop(vid);
round1
stop(vid);
round1
stop(vid);
round1
stop(vid);
RGBWheelTrack
round1
flushdata(vid)
clc
close all force
clear
round1
%-- 23-02-2016 21:57 --%
round1
stop(vid)
round1
imaqtool
round1
%-- 23-02-2016 22:12 --%
round1
test
RGBWheelTrack(imread('test.jpg'),3)
RGBWheelTrack(imread('rj.jpg'),3)
RGBWheelTrack(imread('nj.jpg'),3)
size(RGBWheelTrack(imread('nj.jpg'),3))
size(RGBWheelTrack(imread('test.jpg'),3))
in=imread('r.jpg');
[w h,~]=size(in)
i=0:w
for i=0:w
for j=0:h
if(mod(mod(i,10),2))
in(i,j,1)=0;in(i,j,2)=0;in(i,j,3)=0;
end
end
end
for i=1:w
for j=1:h
if(mod(mod(i,10),2))
in(i,j,1)=0;in(i,j,2)=0;in(i,j,3)=0;
end
end
end
imshow(in)
in=imread('r.jpg');
for i=0:w
for j=0:h
if(mod(mod(i,100),2))
in(i,j,1)=0;in(i,j,2)=0;in(i,j,3)=0;
end
end
end
for i=1:w
for j=1:h
if(mod(mod(i,100),2))
in(i,j,1)=0;in(i,j,2)=0;in(i,j,3)=0;
end
end
end
for i=1:w
for j=1:h
if(mod(mod(i,100),2))
in(i,j,1)=0;in(i,j,2)=0;in(i,j,3)=0;
end
end
end
imshow(in)
for i=1:w
for j=1:h
if(mod(mod(i,100),2))
in(i,j,1)=0;in(i,j,2)=0;in(i,j,3)=0;
end
end
end
imshow(in)
in=imread('r.jpg');
for i=1:w
for j=1:h
if(mod((i/100),2))
in(i,j,1)=0;in(i,j,2)=0;in(i,j,3)=0;
end
end
end
imshow(in)
in=imread('r.jpg');
for i=1:w
for j=1:h
if(mod((i/10),2))
in(i,j,1)=0;in(i,j,2)=0;in(i,j,3)=0;
end
end
end
imshow(in)
in=imread('r.jpg');
for i=1:w
for j=1:h
if(mod(i/3),2))
in(i,j,1)=0;in(i,j,2)=0;in(i,j,3)=0;
end
end
end
for i=1:w
for j=1:h
if((mod(i/3),2))
in(i,j,1)=0;in(i,j,2)=0;in(i,j,3)=0;
end
end
end
for i=1:w
for j=1:h
if(mod((i/3),2))
in(i,j,1)=0;in(i,j,2)=0;in(i,j,3)=0;
end
end
end
imshow(in)
in=imread('r.jpg');
imshow(in)
for i=1:w
for j=1:h
if(mod(i/3),2))
in(i,j,1)=0;in(i,j,2)=0;in(i,j,3)=0;
end
end
end
for i=1:w
for j=1:h
if(mod((i/3),2))
in(i,j,1)=0;in(i,j,2)=0;in(i,j,3)=0;
end
end
end
imshow(in)
fft(in)
plot(fft(in))
I=in
F=fft(I);
F = fftshift(F); % Center FFT
F = abs(F); % Get the magnitude
F = log(F+1); % Use log, for perceptual scaling, and +1 since log(0) is undefined
F = mat2gray(F); % Use mat2gray to scale the image between 0 and 1
imshow(F,[]); % Display the result
plot(fft(rgb2gray(in)))
in=imread('test.jpg');
tic
fft(in)
toc
tic
fft(in);
toc
imtool(in);
in=(in(:,:,1)>150&in(:,:,1)<150&in(:,:,1)<150);
imtool(in);
in=imread('test.jpg');
ik=(in(:,:,1)>150&in(:,:,2)<150&in(:,:,3)<150);
imtool(ik);
imfill(imerode(ik,strel('disk',2)),'holes');
imtool(imfill(imerode(ik,strel('disk',2)),'holes'));
tic
toc
tic
ik=(in(:,:,1)>150&in(:,:,2)<150&in(:,:,3)<150);
toc
hFig = figure('Toolbar','none',...
'Menubar','none');
hIm = imshow('test.jpg');
hSP = imscrollpanel(hFig,hIm);
set(hSP,'Units','normalized',...
'Position',[0 .1 1 .9])
hMagBox = immagbox(hFig,hIm);
pos = get(hMagBox,'Position');
set(hMagBox,'Position',[0 0 pos(3) pos(4)])
imoverview(hIm)
api = iptgetapi(hSP);
mag = api.getMagnification();
r = api.getVisibleImageRect();
api.setVisibleLocation(0.5,0.5)
api.setMagnification(api.findFitMag())
api.setMagnificationAndCenter(16,306,800)
api.setMagnificationAndCenter(13,306,800)
api.setMagnificationAndCenter(1.50,306,800)
pointDist([120 40],[40 30])
RGBWheelTrack(imread('test.jpg'),4);
imtool (imread('test.jpg'));
imtool(imread('22.jpg'));
imtool(imread('22.png'));
k=imread('22.png');
size(k);
size(k)
for i=1:2000
for j=1:2000
if(k(i,j,1)>50&&k(i,j,2)<50)
k(i,j,1)=0;
k(i,j,2)=0;
k(i,j,3)=255;
end
end
end
imtool(k);
%-- 24-02-2016 12:22 --%
k=imread('22.png');
size(k);
size(k)
for i=1:2000
for j=1:2000
if(k(i,j,1)>50&&k(i,j,2)<50)
k(i,j,1)=255;
k(i,j,2)=0;
k(i,j,3)=255;
end
end
end
imtool(k);
k=imread('22.png');
size(k);
size(k)
for i=1:2000
for j=1:2000
if(k(i,j,1)>50&&k(i,j,2)<50)
k(i,j,1)=255;
k(i,j,2)=0;
k(i,j,3)=255;
end
end
end
imtool(k);
%-- 24-02-2016 12:26 --%
tic
result=zeros(900,1280);
toc
test=imread('testt.jpg');
imtool(test);
MarkTrack(test,1,[130,130,130],5);
MarkTrack(test,2,[130,130,130],5);
MarkTrack(test,3,[130,130,130],5);
RGBWheelTrack(imread('test.jpg'),4);
MarkTrack(test,3,[130,130,130],5);
imtool(test);
MarkTrack(test,3,[120,120,120],5);
MarkTrack(test,3,[100,100,100],5);
MarkTrack(test,3,[120,120,120],5);
test
test.m
testrun
stop(vid)
testrun
stop(vid)
toc
testrun
imtool(test);
test=imread('test.jpg');
imtool(test);
test=imread('testt.jpg');
imtool(test);
MarkTrack(test,1,[120,120,120],5);
MarkTrack
MarkTrack(test,1,[120,120,120],5);
imtool(test);
MarkTrack(test,1,[120,120,120],5);
MarkTrack
MarkTrack(test,1,[120,120,120],5);
imtool(test);
MarkTrack(test,1,[120,120,120],5);
regb2gray(test);
rgb2gray(test);
imtool(rgb2gray(test));
testbw=(rgb2gray(test));
imtool(bwboundaries(testbw));
(bwboundaries(testbw));
plot(bwboundaries(testbw));
im=test;
result=(im(:,:,1)>t_r & im(:,:,2)<t_g & im(:,:,3)<t_b);
imtool(bwboundaries(result));
imtool(rgb2gray(test));
imtool(test)
imfindcircles(test,[30,100])
imfindcircles(test,[30,80])
imfindcircles(test,[25,45],'Sensitivity',1.0)
imfindcircles(test,[25,45],'Sensitivity',0.9)
imfindcircles(test,[25,45],'Sensitivity',0.95)
[centers, radii] = imfindcircles(test,[20 25],'ObjectPolarity','dark', ...
'Sensitivity',0.9)
[centers, radii] = imfindcircles(im,[20 50],'ObjectPolarity','dark', ...
'Sensitivity',0.9)
imshow(im);
h = viscircles(centers,radii);
[centers, radii] = imfindcircles(im,[20 50],'ObjectPolarity','dark', ...
]
tic
[centers, radii] = imfindcircles(im,[20 50],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imshow(im);
h = viscircles(centers,radii);
tic
[centers, radii] = imfindcircles(im,[20 50],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imshow(im);
h = viscircles(centers,radii);
tic
[centers, radii] = imfindcircles(im,[20 50],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imshow(im);
h = viscircles(centers,radii);
ic
[centers, radii] = imfindcircles(im,[20 50],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imshow(im);
h = viscircles(centers,radii);
tic
[centers, radii] = imfindcircles(im,[20 50],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imshow(im);
h = viscircles(centers,radii);
tic
[centers, radii] = imfindcircles(im,[20 50],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imshow(im);
h = viscircles(centers,radii);
tic
[centers, radii] = imfindcircles(im,[20 50],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imtool(im);
h = viscircles(centers,radii
tic
[centers, radii] = imfindcircles(im,[20 50],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imtool(im);
h = viscircles(centers,radii);
tic
[centers, radii] = imfindcircles(im,[20 50],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imtool(im);
h = viscircles(centers,radii);
tic
[centers, radii] = imfindcircles(im,[20 50],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imshow(im);
h = viscircles(centers,radii);
imtool(tst)
imtool(test)
radii
tic
[centers, radii] = imfindcircles(im,[20 26],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imtool(im);
h = viscircles(centers,radii
tic
[centers, radii] = imfindcircles(im,[20 50],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imtool(im);
h = viscircles(centers,radii);
tic
[centers, radii] = imfindcircles(im,[20 26],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imshow(im);
h = viscircles(centers,radii);
tic
[centers, radii] = imfindcircles(imresize(im,0.5),[20 26],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imshow(im);
h = viscircles(centers,radii);
im=imresize(im,0.5);
tic
[centers, radii] = imfindcircles(im,[20 26],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imshow(im);
h = viscircles(centers,radii);
im=test;
im=imresize(im,0.8);
tic
[centers, radii] = imfindcircles(im,[20 26],'ObjectPolarity','dark', ...
'Sensitivity',0.9);
toc
imshow(im);
h = viscircles(centers,radii);
im=test;
ipl_find_circle(im)
ipl_find_circle(im);
RGBWheelTrack(imread('test.jpg'),4);
RGBWheelTrack(imread('t.jpg'),4);
RGBWheelTrack(imread('rr.jpg'),4);
RGBWheelTrack(imread('ht.jpg'),4);
RGBWheelTrack(imread('ht1.jpg'),4);
RGBWheelTrack(imread('rr.jpg'),4);
RGBWheelTrack(imread('ht1.jpg'),4);
RGBWheelTrack(imread('ht1.jpg'),10,4);
RGBWheelTrack(imread('ht.jpg'),10,4);
RGBWheelTrack(imread('ht.jpg'),20,4);
RGBWheelTrack(imread('ht1.jpg'),10,4);
RGBWheelTrack(imread('aaa.jpg'),10,4);
gpuDevice
RGBWheelTrack(imread('aaa.jpg'),10,4);
RGBWheelTrack(imread('ht1.jpg'),10,4);
RGBWheelTrack(imread('ht.jpg'),10,4);
RGBWheelTrack(imread('st.jpg'),10,4);
RGBWheelTrack(imread('ht.jpg'),10,4);
RGBWheelTrack(imread('ht1.jpg'),10,4);
RGBWheelTrack(imread('aaa.jpg'),10,4);
clc
RGBWheelTrack(imread('aaa.jpg'),10,4);
clc
RGBWheelTrack(imread('aaa.jpg'),10,4);
s
im=imread('aaa.jpg');
[width, height, ~]= size(im);
result=zeros(width,height);
i=margin+1:width-margin-1;
j=margin+1:height-margin-1;
tic
result(i,j)=((im(i,j-margin,1)>im(i+margin/2,j-margin/2,1)) & (im(i,j-margin,1)>im(i+margin/2,j+margin/2,1))    &     (im(i+margin/2,j-margin/2,3)>im(i,j-margin,3)) & (im(i+margin/2,j-margin/2,3)>im(i+margin/2,j+margin/2,3))    &    (im(i+margin/2,j+margin/2,2)>im(i,j-margin,2)) & (im(i+margin/2,j+margin/2,2)>im(i+margin/2,j-margin/2,2)));
toc
%result(i,j)=1;
tic
%result=imdilate(imfill(imopen(result,strel('disk',1)),'holes'),strel('disk',5));
%erode then dilate big then imfill
result=imfill(imdilate(imerode(result,strel('disk',1)),strel('disk',13)),'holes');
%result=imdilate(result,strel('disk',8));
toc
imshow(imfuse(result,im));
s=regionprops(bwlabel(result),'Centroid','Area');
[~, ind]=sort([s.Area],'descend');
s=s(ind);
[aaaa,lo]=min([s.Area])
s.Centroid;
s.Area;
%s.Area
cen=0;
if (isempty(s)==0)
cen=s(1);
for i=2:size(s)
cen=[cen s(i)];
end
end
end
%sort according to i coordinate
[width, height, ~]= size(im);
result=zeros(width,height);
i=mgin+1:width-mgin-1;
j=mgin+1:height-mgin-1;
tic
result(i,j)=((im(i,j-mgin,1)>im(i+mgin/2,j-mgin/2,1)) & (im(i,j-mgin,1)>im(i+mgin/2,j+mgin/2,1))    &     (im(i+mgin/2,j-mgin/2,3)>im(i,j-mgin,3)) & (im(i+mgin/2,j-mgin/2,3)>im(i+mgin/2,j+mgin/2,3))    &    (im(i+mgin/2,j+mgin/2,2)>im(i,j-mgin,2)) & (im(i+mgin/2,j+mgin/2,2)>im(i+mgin/2,j-mgin/2,2)));
toc
%result(i,j)=1;
tic
%result=imdilate(imfill(imopen(result,strel('disk',1)),'holes'),strel('disk',5));
%erode then dilate big then imfill
result=imfill(imdilate(imerode(result,strel('disk',1)),strel('disk',13)),'holes');
%result=imdilate(result,strel('disk',8));
toc
imshow(imfuse(result,im));
s=regionprops(bwlabel(result),'Centroid','Area');
[~, ind]=sort([s.Area],'descend');
s=s(ind);
[aaaa,lo]=min([s.Area])
s.Centroid;
s.Area;
%s.Area
cen=0;
if (isempty(s)==0)
cen=s(1);
for i=2:size(s)
cen=[cen s(i)];
end
end
end
i=min+1:width-min-1;
mgin=10;
[width, height, ~]= size(im);
result=zeros(width,height);
i=mgin+1:width-mgin-1;
j=mgin+1:height-mgin-1;
tic
result(i,j)=((im(i,j-mgin,1)>im(i+mgin/2,j-mgin/2,1)) & (im(i,j-mgin,1)>im(i+mgin/2,j+mgin/2,1))    &     (im(i+mgin/2,j-mgin/2,3)>im(i,j-mgin,3)) & (im(i+mgin/2,j-mgin/2,3)>im(i+mgin/2,j+mgin/2,3))    &    (im(i+mgin/2,j+mgin/2,2)>im(i,j-mgin,2)) & (im(i+mgin/2,j+mgin/2,2)>im(i+mgin/2,j-mgin/2,2)));
toc
%result(i,j)=1;
tic
%result=imdilate(imfill(imopen(result,strel('disk',1)),'holes'),strel('disk',5));
%erode then dilate big then imfill
result=imfill(imdilate(imerode(result,strel('disk',1)),strel('disk',13)),'holes');
%result=imdilate(result,strel('disk',8));
toc
imshow(imfuse(result,im));
s=regionprops(bwlabel(result),'Centroid','Area');
[~, ind]=sort([s.Area],'descend');
s=s(ind);
[aaaa,lo]=min([s.Area])
s.Centroid;
s.Area;
%s.Area
cen=0;
if (isempty(s)==0)
cen=s(1);
for i=2:size(s)
cen=[cen s(i)];
end
end
end
size(s)
size(s)(1)
size(s)[1]
[k,~]=size(s)
i=0;
isempty(i)
[width, height, ~]= size(im);
result=zeros(width,height);
i=mgin+1:width-mgin-1;
j=mgin+1:height-mgin-1;
tic
result(i,j)=((im(i,j-mgin,1)>im(i+mgin/2,j-mgin/2,1)) & (im(i,j-mgin,1)>im(i+mgin/2,j+mgin/2,1))    &     (im(i+mgin/2,j-mgin/2,3)>im(i,j-mgin,3)) & (im(i+mgin/2,j-mgin/2,3)>im(i+mgin/2,j+mgin/2,3))    &    (im(i+mgin/2,j+mgin/2,2)>im(i,j-mgin,2)) & (im(i+mgin/2,j+mgin/2,2)>im(i+mgin/2,j-mgin/2,2)));
toc
%result(i,j)=1;
tic
%result=imdilate(imfill(imopen(result,strel('disk',1)),'holes'),strel('disk',5));
%erode then dilate big then imfill
result=imfill(imdilate(imerode(result,strel('disk',1)),strel('disk',13)),'holes');
%result=imdilate(result,strel('disk',8));
toc
imshow(imfuse(result,im));
s=regionprops(bwlabel(result),'Centroid','Area');
[~, ind]=sort([s.Area],'descend');
s=s(ind);
[aaaa,lo]=min([s.Area])
s.Centroid;
s.Area;
%s.Area
cen=0;
[n,~]=size(s);
cen=zeros(n);
if (isempty(s)==0)
i=1:n;
%     cen(i)=s(i);
%     cen=s(1);
%     for i=2:size(s)
%         cen=[cen s(i)];
%     end
end
cen
[width, height, ~]= size(im);
result=zeros(width,height);
i=mgin+1:width-mgin-1;
j=mgin+1:height-mgin-1;
tic
result(i,j)=((im(i,j-mgin,1)>im(i+mgin/2,j-mgin/2,1)) & (im(i,j-mgin,1)>im(i+mgin/2,j+mgin/2,1))    &     (im(i+mgin/2,j-mgin/2,3)>im(i,j-mgin,3)) & (im(i+mgin/2,j-mgin/2,3)>im(i+mgin/2,j+mgin/2,3))    &    (im(i+mgin/2,j+mgin/2,2)>im(i,j-mgin,2)) & (im(i+mgin/2,j+mgin/2,2)>im(i+mgin/2,j-mgin/2,2)));
toc
%result(i,j)=1;
tic
%result=imdilate(imfill(imopen(result,strel('disk',1)),'holes'),strel('disk',5));
%erode then dilate big then imfill
result=imfill(imdilate(imerode(result,strel('disk',1)),strel('disk',13)),'holes');
%result=imdilate(result,strel('disk',8));
toc
imshow(imfuse(result,im));
s=regionprops(bwlabel(result),'Centroid','Area');
[~, ind]=sort([s.Area],'descend');
s=s(ind);
[aaaa,lo]=min([s.Area])
s.Centroid;
s.Area;
%s.Area
cen=0;
[n,~]=size(s);
cen=zeros(n);
if (isempty(s)==0)
i=1:n;
cen(i)=s(i);
%     cen=s(1);
%     for i=2:size(s)
%         cen=[cen s(i)];
%     end
end
s
s(1)
[q,~]=s(1)
s(1).Centrooid
s(1).Centroid
s(1).Centroid(1)
s.Centroid(1)
s.Centroid[1]
s.Centroid
[~,]=s.Centroid
[~,a]=s.Centroid
whos(s)
whos('s')
whos('s.Centroid')
k=s.Centroid
s
s.Centroid
size(s.Centroid)
im=imread('test.jpg');
hIm=imshow(im);
hSP = imscrollpanel(hFig,hIm);
set(hSP,'Units','normalized',...
'Position',[0 .1 1 .9]);
api = iptgetapi(hSP);
api_assigned=1;
im=imread('test.jpg');
hIm=imshow(im);
hSP = imscrollpanel(hFig,hIm);
set(hSP,'Units','normalized',...
'Position',[0 .1 1 .9]);
api = iptgetapi(hSP);
api_assigned=1;
hFig = figure('Toolbar','none',...
'Menubar','none');
im=imread('test.jpg');
hIm=imshow(im);
hSP = imscrollpanel(hFig,hIm);
set(hSP,'Units','normalized',...
'Position',[0 .1 1 .9]);
api = iptgetapi(hSP);
api_assigned=1;
api.setMagnificationAndCenter(10^.6,[400 400]);
api.setMagnificationAndCenter(10^.6,[400,400]);
RGBWheelTrack(imread('111.jpg'),10,4);
imtool(imread('111.jpg'))
RGBWheelTrack(imread('111.jpg'),6,4);
imtool(imread('111.jpg'))
RGBWheelTrack(imread('111.jpg'),6,4);
obj=vision.KalmanFilter
%-- 25-02-2016 19:49 --%
im=imread('test.jpg');
tic
imshow(im)
toc
tic
imshow(im)
toc
tic
imshow(im)
toc
tic
imshow(im)
toc
hIm=imshow(im);
hFig = figure('Toolbar','none',...
'Menubar','none');
im=imread('test.jpg');
hIm=imshow(im);
hSP = imscrollpanel(hFig,hIm);
set(hSP,'Units','normalized',...
'Position',[0 .1 1 .9]);
api = iptgetapi(hSP);
api_assigned=1;
mag=1;
tic
api.setMagnificationAndCenter(1.75,[400 400]);
toc
tic
api.setMagnificationAndCenter(1.75,400,400);
toc
api.setMagnificationAndCenter(mag,m1.Centroid);
tic
api.setMagnificationAndCenter(1.75,400,400);
toc
tic
api.setMagnificationAndCenter(1.75,400,400);
toc
tic
api.setMagnificationAndCenter(1.75,400,400);
toc
tic
api.setMagnificationAndCenter(1.75,400,400);
toc
tic
api.setMagnificationAndCenter(1.75,400,400);
toc
tic
api.setMagnificationAndCenter(1.75,400,400);
toc
tic
api.setMagnificationAndCenter(1.75,400,400);
toc
tic
api.setMagnificationAndCenter(1.75,400,400);
toc
tic
api.setMagnificationAndCenter(1.75,400,400);
toc
tic
api.setMagnificationAndCenter(1.75,400,400);
toc
tic
api.setMagnificationAndCenter(1.75,400,400);
toc
%-- 25-02-2016 19:55 --%
testrun
%-- 25-02-2016 19:57 --%
test
%-- 25-02-2016 19:59 --%
testrun
delete(vid)
%-- 25-02-2016 20:00 --%
testrun
delete(vid)
imaqtool
imtool(imread('we.jpg'))
testrun
delete(vid)
testrun
delete(vid)
imtool(imread('we.jpg'))
testrun
delete(vid)
testrun
delete(vid)
testrun
delete(vid)
testrun
delete(vid)
testrun
delete(vid)
testrun
delete(vid)
testrun
delete(vid)
testrun
delete(vid)
testrun
delete(vid)
testrun
delete(vid)
testrun
result=(im(:,:,1)>t_r & im(:,:,2)<t_g & im(:,:,3)<t_b);
delete(vid)
testrun
delete(vid)
testrun
delete(vid)
testrun
delete(vid)
testrun
delete(vid)
testrun
delete(vid)
rgbround1
delete(vid)
rgbround1
delete(vid)
rgbround1
delete(vid)
rgbround1
delete(vid)
rgbround1
delete(vid)
rgbround1
delete(vid)
data=imread('e.jpg');
hFig = figure('Toolbar','none',...
'Menubar','none');
im=imread('test.jpg');
hIm=imshow(im);
hSP = imscrollpanel(hFig,hIm);
set(hSP,'Units','normalized',...
'Position',[0 .1 1 .9]);
api = iptgetapi(hSP);
api_assigned=1;
mag=1;
rgbround1
delete(vid)
x = [1 2 3]
y = [1 3 9]
scatter(x,y)
x = [1 2 36 3 6 8 6 4 33 6 8 0 5]
y = [1 3 9 3 6 5 6 9 6 4 3 3 5]
scatter(x,y)
line(x,y)
clc
clear all
data=imread('q.jpg');
r1a
data=imread('e.jpg');
r1a
data=imread('w.jpg');
r1a
data=imread('r.jpg');
r1a
data=imread('t.jpg');
r1a
t=imread('t.jpg');
q=imread('q.jpg');
imshow(t)
w=imread('w.jpg');
imshow(w)
imshow(q)
data=q
data=q;
r1a
p=imread('try me.png');
p
o=zeroes(size(p))
o=zeros(size(p))
o=p(:,:,:)<255
imshow(p)
o=p(:,:,1)<255
imshow(p)
p
o=zeros(size(p));
o=p(:,:,:)==254
min(o)
min(min(o))
max(max(o))
o=p(:,:,1)==254
imshow(p)
imshow(imfuse(p,i))
imshow(imfuse(p,o))
d=imread('cf(1).jpg')
o=p(:,:,1)>200
imshow(imfuse(p,o))
o=d(:,:,1)>200
imshow(imfuse(d,o))
imshow(d(:,:,1)
imshow(d(:,:,1))
imshow(d(:,:,2))
imshow(d(:,:,3))
d
plot(d,'DisplayName','d')
plot(d)
plot(d(:,:,1),'DisplayName','d')
d
o=d(:,:,1)>150
imshow(imfuse(d,o))
d
o=d(:,:,1)~=255
imshow(imfuse(d,o))
d=imread('cf(2).jpg')
o=d(:,:,1)~=255
imshow(imfuse(d,o))
o=d(:,:,1)~=0
imshow(imfuse(d,o))
clc
clear all
data=imread('q.jpg');
imshow(data);
r1a
profile viewer
r1a
data=imread('w.jpg');
r1a
imshow(data);
imtool(data);
r1a
imtool(data);
r1a
data=imread('q.jpg');
r1a
profile viewer
r1a
aa
delete(vid);
data=imread('q.jpg');
aa
data=imread('q.jpg');
aa
clear all
data=imread('q.jpg');
aa
imtool(imread('ssa.jpg'));
testrun
clear all
%-- 26-02-2016 11:19 --%
imtool(imread('ssa.jpg'));
testrun
stop(vid)
imtool(imread('ssa.jpg'));
testrun
imtool(imread('ssa.jpg'));
stop(vid)
testrun
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
zoom(imtool(imread('ssa.jpg')),0.5);
zoom(imtool(imread('ssa.jpg')),1);
l=(imtool(imread('ssa.jpg'));
l=(imtool(imread('ssa.jpg');
l=(imtool(imread('ssa.jpg')));
zoom on
l=(imshow(imread('ssa.jpg')));
zoom on
zoom(l,1.4);
zoom(l,14);
size(imread('1.jpg'))
size(imread('q.jpg'))
r1a
pzoom
r1a
MarkTrack
r1a
pzoom
r1a
rgbround1
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
profile viewer
rgbround1
stop(vid)
rgbround1
stop(vid)
r1a
profile viewer
r1a
c=imread('c(1).jpg');
imtool(c)
c=imread('c(4).jpg');
imtool(c)
testrun
stop(vid)
testrun
%-- 26-02-2016 13:02 --%
c=imread('c(4).jpg');
r1a
c=imread('c(4).jpg');
imtool(c)
r1a
testrun
stop(vid)
testrun
stop(vid)
testrun
stop(vid)
testrun
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
%-- 27-02-2016 11:44 --%
profile viewer
r1a
profile viewer
r1a
%-- 27-02-2016 12:02 --%
r1a
m(1)=2
m(2)=3
m
profile viewer
commnet
visionSupportPackages
commnet
cast(R,'unt')
cast(r,'unt')
cast(r,'unt16')
cast(r,'unt16')0xff0000
1&2
1&5
255&25
255&2
255&0
bitand(255,2)
bitand(2r,2)
bitand(2cast('R','uint16'),2)
cast('R','uint16')
cast('R','uint8')
cast('Z','uint8')
whos(0)
whos('0')
0
cast('8','uint8')
cast(8,'uint8')
1>>3
RGBWheelTrack(imread('2.jpg'),1);
imtool(imread('2.jpg');
imtool(imread('2.jpg'));
profile viewer
RGBWheelTrack(imread('2.jpg'),1);
profile viewer
RGBWheelTrack(imread('2.jpg'),1);
RGBWheelTrack
RGBWheelTrack(imread('2.jpg'),1);
1/2
im=imread('2.jpg');
g=(22,66,:)
g=im(22,66,:)
g(1)
g=im(22,66,1)
b=im(52,20,:)
g(1)/b(1)
RGBWheelTrack(imread('2.jpg'),1);
profile viewer
RGBWheelTrack(imread('2.jpg'),1);
imtool(imread('2.jpg'));
RGBWheelTrack(imread('2.jpg'),1);
b=double(b)
g=double(g)
g=im(22,66,:)
g=double(g)
g(1)/b(1)
RGBWheelTrack(imread('2.jpg'),1);
result(:,:)~=0
RGBWheelTrack(imread('2.jpg'),1);
clc
RGBWheelTrack(imread('2.jpg'),1);
clc
RGBWheelTrack(imread('2.jpg'),1);
RGBWheelTrack(imread('3.jpg'),1);
p=imread('3.jpg');
i=30:80;
p(:,i,:)=0;
imtool(p);
i=20:25;
i
i=30:80;
i
p=imread('3.jpg');
i=300:800;
p(:,i,:)=0;
imtool(p);
RGBWheelTrack(imread('3.jpg'),1);
int(2)
RGBWheelTrack(imread('3.jpg'),1);
int(2)
RGBWheelTrack(imread('3.jpg'),1);
profile viewer
RGBWheelTrack(imread('3.jpg'),1);
profile viewer
RGBWheelTrack(imread('3.jpg'),1);
p=imread('3.jpg');
RGBWheelTrack(p,1);
p=imread('2.jpg');
RGBWheelTrack(p,1);
imshow(p)
RGBWheelTrack(p,1);
p=imread('2.jpg');
p=imread('3.jpg');
RGBWheelTrack(p,1);
p=imread('2.jpg');
RGBWheelTrack(p,1);
tic
for i=1:80000
1/2;
end
toc
tic
for i=1:80000
t=1/2;
end
toc
tic
for i=1:80000
t=i*1/2;
end
toc
RGBWheelTrack(p,1);
imshow(p)
tic
for i=1:80000
t=p*p;
end
toc
tic
for i=1:80000
t=p.*p;
end
toc
tic
o=p;
t=o.*p;
toc
RGBWheelTrack(p,1);
profile viewer
RGBWheelTrack(p,1);
b
b(1)
class(b)
class(b(1))
b=im(52,20,:)
class(b(1))
b(1)-b(2)
bg=0
bg=b(1)/b(2)
RGBWheelTrack(p,1);
feature accel on
RGBWheelTrack(p,1);
i=1:10
f(i)=0
f(2)
f(i,i)=0
RGBWheelTrack(p,1);
RGBWheelTrackbackup(p,1);
f(i,i)=0
f(6,6)
RGBWheelTrackbackup(p,1);
RGBWheelTrack(p,1);
RGBWheelTrackbackup(p,1);
RGBWheelTrack(p,1);
RGBWheelTrackbackup(p,1);
y=3:10
y+3
RGBWheelTrackbackup(p,1);
RGBWheelTrack(imread('111.jpg',1));
RGBWheelTrack(imread('111.jpg'),1);
p=imread('111.jpg');
RGBWheelTrack(p,1);
tic
RGBWheelTrack(p,1);
toc
p=imread('2.jpg');
tic
RGBWheelTrack(p,1);
toc
tic
RGBWheelTrack(p,1);
toc
profile viewer
RGBWheelTrack(p,1);
profile viewer
RGBWheelTrack(p,1);
profile viewer
RGBWheelTrack(p,1);
imshow(p)
tic
RGBWheelTrack(p,1);
toc
tic
RGBWheelTrack(p,1);
toc
tic
RGBWheelTrack(p,1);
toc
tic
RGBWheelTrack(p,1);
toc
tic
RGBWheelTrack(p,1);
toc
tic
RGBWheelTrack(p,1);
toc
tic
RGBWheelTrack(p,1);
toc
tic
RGBWheelTrack(p,1);
toc
tic  RGBWheelTrack(p,1); toc
RGBWheelTrack(p,1)
RGBWheelTrack(p,1)  tic
RGBWheelTrack(p,1);
toc
tic
RGBWheelTrack(p,1);
toc
tic
RGBWheelTrack(p,1);
toc
tic
RGBWheelTrack(p,1);
toc
RGBWheelTrack(p,1)
p=imread('111.jpg');
RGBWheelTrack(p,1)
RGBWheelTrack
RGBWheelTrack(p,1)
p=imread('2.jpg');
imshow(p)
sizE(p)
size(p)
tic
RGBWheelTrack(p,1)
toc
RGBWheelTrack(p,1)
j=[1 2 3 4 5 6 7 ]
j[2:6]
j(2:6)
i=j(2:6)
i(1)=j(2:6)
t=1:5
i(t)=j(2:6)
size(t)
size(t,1)
t=2:6
i(t)=j(2:6)
i(t)=0
iclear
clear all
j=[1 2 3 4 5 6 7 ]
RGBWheelTrack(p,1)
p=imread('2.jpg');
RGBWheelTrack(p,1)
p=imread('111.jpg');
RGBWheelTrack(p,1)
tic
for i=1:1000000
if(2>1)
end
end
toc
RGBWheelTrack(p,1)
p=imread('2.jpg');
RGBWheelTrack(p,1)
tic
RGBWheelTrack(p,1)
toc
p=imread('2.jpg');
tic
RGBWheelTrack(p,1)
toc
RGBWheelTrack(p,1)
tic
RGBWheelTrack(p,1)
toc
p=imread('111.jpg');
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
p=imread('2.jpg');
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
p=imread('111.jpg');
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
imaqtool
l=imresize(p,0.5);
tic
RGBWheelTrack(l,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(l,1)
toc
tic
RGBWheelTrack(l,1)
toc
tic
RGBWheelTrack(l,1)
toc
tic
RGBWheelTrack(l,1)
toc
tic
RGBWheelTrack(l,1)
toc
tic
RGBWheelTrack(l,1)
toc
p=imread('2.jpg');
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(l,1)
toc
tic
RGBWheelTrack(p,1)
toctic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,2)
toc
tic
RGBWheelTrack(p,1)
toc
p=imread('green.jpg');
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,1)
toc
tic
RGBWheelTrack(p,2)
toc
tic
RGBWheelTrack(p,2)
toc
tic
RGBWheelTrack(p,2)
toc
tic
RGBWheelTrack(p,2)
toc
tic
RGBWheelTrack(p,2)
toc
tic
RGBWheelTrack(p,2)
toc
p=imread('blue.jpg');
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
p=imread('bb.jpg');
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
p=imresize(p,0.5);
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
p=imresize(p,0.5);
tic
RGBWheelTrack(p,3)
toc
p=imread('bb.jpg');
p=imresize(p,0.25);
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
tic
RGBWheelTrack(p,3)
toc
RGBWheelTrack(p,1)
RGBWheelTrack(p,3)
RGBWheelTrack(p,1)
RGBWheelTrack(p,2)
RGBWheelTrack(p,3)
RGBWheelTrack(p,2)
c=0
isempty(c)
RGBWheelTrack(p,2)
RGBWheelTrack(p,1)
RGBWheelTrack(p,3)
profile viewer
RGBWheelTrack(p,3)
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic tic
RGBWheelTrack(p,3);
toc
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
tic
RGBWheelTrack(p,3);
toc
rgbround1
top(vid)
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
testrun
stop(vid)
testrun
stop(vid)
testrun
stop(vid)
testrun
stop(vid)
imaqtool
im=imread('bb.jpg');
RGBWheelTrack(im,3);
RGBWheelTrack(im,2);
RGBWheelTrack(im,1);
testrun
stop(vid)
imaqtool
im=imread('bb.jpg');
imshow(im)
RGBWheelTrack(im,3);
testrun
stop(vid)
RGBWheelTrack(im,3);
im=imread('bb.jpg');
RGBWheelTrack(im,3);
im=imread('rr.jpg');
RGBWheelTrack(im,1);
testrun
stop(vid)
testrun
stop(vid)
testrun
stop(vid)
testrun
stop(vid)
testrun
stop(vid)
testrun
stop(vid)
testrun
stop(vid)
testrun
stop(vid)
testrun
stop(vid)
testrun
stop(vid)
rgbround1
stop(vid)
rgbround1
st
stop(vid)
rgbround1
stop(vid)
rgbround1
stop(vid)
rgbround1
%-- 28-02-2016 17:58 --%
HandGesture
%-- 29-02-2016 13:03 --%
%-- 29-02-2016 13:04 --%
profile viewer
commnew
%-- 29-02-2016 13:10 --%
commnew
%-- 29-02-2016 13:13 --%
profile viewer
commnew
round1
%-- 01-03-2016 16:27 --%
%-- 04-03-2016 11:17 --%
%-- 07-03-2016 00:56 --%
%-- 16-03-2016 20:00 --%
%-- 04-04-2016 20:28 --%
%-- 15-04-2016 01:27 --%
%-- 17-04-2016 01:40 --%
%-- 17-04-2016 02:09 --%
im=imread('a.jpg');
imtool(im)
a=im(:,:,1)>im(:,:,2) & im(:,:,1)>im(:,:,3);
imtool(a)
a=im(:,:,1)<im(:,:,2) & im(:,:,1)<im(:,:,3);
imtool(a)
a=im(:,:,1)>im(:,:,2) & im(:,:,1)>im(:,:,3);
imtool(a)
imtool(im)
imtool(a)
imtool(im(:,:,1))
imtool(im)
imtool(im(:,:,1))
imtool(im(:,:,2))
imtool(im(:,:,3))
hough(im(:,:,2))
[h,t,r]=hough(im(:,:,2))
[h,t,r]=hough(im(:,:,2));
profile viewer
im(:,:,1)>im(:,:,2)
[h,t,r]=hough(im(:,:,2));
i=rgb2gray(im);
bw=edge(i,'canny');
imtool(bw);
bw=edge(i,'sobel');
imtool(bw);
[h,t,r]=hough(bw);
rgb=im
rgb=im;
imtool(i);
subplot(2,1,1);
imshow(RGB);
title('Gantrycrane Image');
RGB=rgb;
subplot(2,1,1);
imshow(RGB);
title('Gantrycrane Image');
subplot(2,1,2);
imshow(imadjust(mat2gray(H)),'XData',T,'YData',R,...
'InitialMagnification','fit');
title('Hough Transform of Gantrycrane Image');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
colormap(hot);
imshow(imadjust(mat2gray(h)),'XData',t,'YData',r,...
'InitialMagnification','fit');
title('Hough Transform of Gantrycrane Image');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
colormap(hot);
%-- 18-04-2016 19:21 --%
i=imread('n.jpg');
imtool(i)
gr=rgb2gray(i);
imtool(gr)
y=gr(:,:)<70;
imtool(y)
y,z=MinimaxAT(gr);
MinimaxAT(gr);
testadaptivethreshold
imtool(y)
imtool(gr)
imtool(gjr)
gr=rgb2gray(i);
i=imread('n.jpg');
gr=rgb2gray(i);
imtool(r)
imtool(gr)
i=imread('a.jpg');
gr=rgb2gray(i);
imtool(gr)
testadaptivethreshold
bw=adaptivethreshold(gr,10,0.02,0);
gr=rgb2gray(i);
i=imread('a.jpg');
gr=rgb2gray(i);
bw=adaptivethreshold(gr,10,0.02,0);
imtool(bw);
i=imread('ee.jpg');
gr=rgb2gray(i);
i=imread('n.jpg');
gr=rgb2gray(i);
bw=adaptivethreshold(gr,10,0.02,0);
imtool(bw);
BW=bw;
[H,T,R] = hough(BW,'RhoResolution',0.5,'Theta',-90:0.5:89.5);
RGB=i;
subplot(2,1,1);
imshow(RGB);
title('Gantrycrane Image');
subplot(2,1,2);
imshow(imadjust(mat2gray(H)),'XData',T,'YData',R,...
'InitialMagnification','fit');
title('Hough Transform of Gantrycrane Image');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
colormap(hot);
P = houghpeaks(H,5,'threshold',ceil(0.3*max(H(:))));
x = T(P(:,2));
y = R(P(:,1));
plot(x,y,'s','color','black');
P\
P
theta=T
x = theta(P(:,2));
y = rho(P(:,1));
plot(x,y,'s','color','black');
rho=R;
x = theta(P(:,2));
y = rho(P(:,1));
plot(x,y,'s','color','black');
rotI=RGB;
lines = houghlines(BW,theta,rho,P,'FillGap',5,'MinLength',7);
figure, imshow(rotI), hold on
max_len = 0;
for k = 1:length(lines)
xy = [lines(k).point1; lines(k).point2];
plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');
% Plot beginnings and ends of lines
plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');
% Determine the endpoints of the longest line segment
len = norm(lines(k).point1 - lines(k).point2);
if ( len > max_len)
max_len = len;
xy_long = xy;
end
end
% highlight the longest line segment
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','red');
figure, imshow(gr), hold on
max_len = 0;
for k = 1:length(lines)
xy = [lines(k).point1; lines(k).point2];
plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');
% Plot beginnings and ends of lines
plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');
% Determine the endpoints of the longest line segment
len = norm(lines(k).point1 - lines(k).point2);
if ( len > max_len)
max_len = len;
xy_long = xy;
end
end
% highlight the longest line segment
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','red');
bw=adaptivethreshold(gr,10,0.02,0);
imtool(bw);
bw=imcomplement(bw);
imtool(bw);
bw=adaptivethreshold(gr,10,0.01,0);
imtool(bw);
bw=adaptivethreshold(gr,10,0.07,0);
imtool(bw);
bw=adaptivethreshold(gr,10,0.05,0);
imtool(bw);
bw=adaptivethreshold(gr,10,0.01,0);
imtool(bw);
bw=adaptivethreshold(gr,10,0.05,0);
imtool(bw);
bw=adaptivethreshold(gr,5,0.04,0);
imtool(bw);
bw=adaptivethreshold(gr,5,0.02,0);
imtool(bw);
bw=adaptivethreshold(gr,5,0.03,0);
imtool(bw);
bw=adaptivethreshold(gr,5,0.04,0);
imtool(bw);
bw=adaptivethreshold(gr,2,0.04,0);
imtool(bw);
bw=adaptivethreshold(gr,20,0.04,0);
imtool(bw);
bw=adaptivethreshold(gr,8,0.04,0);
imtool(bw);
bw=adaptivethreshold(gr,10,0.01,0);
imtool(bw);
bw=adaptivethreshold(gr,10,0.07,0);
imtool(bw);
bw=imcomplement(bw);
imtool(bw);
k=regionprops(bw);
k
max(k.Area);
max(k.Area)
k.Area
k.Area()
[k.Area]
max([k.Area])
c,i=max([k.Area])
binaryImage=bw;
[labeledImage, numberOfBlobs] = bwlabel(binaryImage);
blobMeasurements = regionprops(labeledImage, 'area', 'Centroid');
allAreas = [blobMeasurements.Area] % No semicolon so it will print to the command window.
[labeledImage, numberOfBlobs] = bwlabel(binaryImage);
blobMeasurements = regionprops(labeledImage, 'area');
allAreas = [blobMeasurements.Area];
[sortedAreas, sortIndexes] = sort(allAreas, 'descend');
numberToExtract=100;
biggestBlob = ismember(labeledImage, sortIndexes(1:numberToExtract));
binaryImage = biggestBlob > 0;
imtool(binaryImage);
biggestBlob = ismember(labeledImage, sortIndexes(1:4));
binaryImage = biggestBlob > 0;
imtool(binaryImage);
biggestBlob = ismember(labeledImage, sortIndexes(1));
imtool(binaryImage);
binaryImage = biggestBlob > 0;
imtool(binaryImage);
