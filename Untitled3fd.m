t=~bwt;
c = normxcorr2(t,P2);
max(x(x<max(x)))
[ypeak, xpeak] = find(c==max(c(:)));
yoffSet = ypeak-size(t,1);
xoffSet = xpeak-size(t,2);
hFig = figure;
hAx  = axes;
imshow(P2,'Parent', hAx);
imrect(hAx, [xoffSet+1, yoffSet+1, size(t,2), size(t,1)]);