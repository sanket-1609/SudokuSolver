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
x = theta(P(:,2));
y = rho(P(:,1));
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
[h,t,r]=hough(binaryImage);
BW=binaryImage;
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
x = t(P(:,2));
y = r(P(:,1));
plot(x,y,'s','color','black');
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
imtool(bw);
imtool(BW);
