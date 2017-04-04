clear;close all;
im1=imread('aa.jpg');
im2=imread('ee.jpg');
bwim1=adaptivethreshold(im1,11,0.03,0);
bwim2=adaptivethreshold(im2,15,0.02,0);
subplot(2,2,1);
imshow(im1);
subplot(2,2,2);
imshow(bwim1);
subplot(2,2,3);
imshow(im2);
subplot(2,2,4);
imshow(bwim2);