% clear vars;
clear all; 
load template1.mat;
load template2.mat;
temp1=out;
temp2=out2;
sudd=zeros(9,9);
RGB=imread('img/sudd(13).jpg');
[h, ~]=size(RGB);
RGB=imresize(RGB,480/h);
GR=rgb2gray(RGB);
BW=adaptivethreshold(GR,20,0.03,0);
% imtool(BW);
BW=~BW;
BW=bwareaopen(BW,40);
%Biggest Blob Extraction
[labeledImage, numberOfBlobs] = bwlabel(BW);
blobMeasurements = regionprops(labeledImage, 'area');
allAreas = [blobMeasurements.Area];
[sortedAreas, sortIndexes] = sort(allAreas, 'descend');
numberToExtract=1;
biggestBlob = ismember(labeledImage, sortIndexes(1:numberToExtract));
binaryImage = biggestBlob > 0;
% imtool(binaryImage);
outBW=imfill(binaryImage,'holes');
% outBW=bwconvhull(outBW);
% imshow(RGB);
% hold on;
% C=corner(outBW,10);
% plot(C(:,1),C(:,2),'r*');
% [qx, qy]=minboundquad(C(:,1),C(:,2));
% % plot(C(:,1),C(:,2),'r*');
% plot(qx,qy,'b*');
[y,x] = find(outBW);
[~,loc] = min(y+x);
C = [x(loc),y(loc)];
[~,loc] = min(y-x);
C(2,:) = [x(loc),y(loc)];
[~,loc] = max(y+x);
C(3,:) = [x(loc),y(loc)];
[~,loc] = max(y-x);
C(4,:) = [x(loc),y(loc)];
%  imshow(RGB); hold on
%   plot(C([1:4 1],1),C([1:4 1],2),'r','linewidth',3);
x=[1;210;210;1];
y=[1;1;297;297];
qx=C(:,1);
qy=C(:,2);
for i=1:4
    for j=1:4
        if(i~=j)
            if(qx(i)==qx(j))
                qx(j)=qx(j)+1;
            end
            if(qy(i)==qy(j))
                qy(j)=qy(j)+1;
            end
        end
    end
end
[X, Y] = sortPolyFromClockwiseStartingFromTopLeft(qx,qy);
A=zeros(8,8);
A(1,:)=[X(1),Y(1),1,0,0,0,-1*X(1)*x(1),-1*Y(1)*x(1)];
A(2,:)=[0,0,0,X(1),Y(1),1,-1*X(1)*y(1),-1*Y(1)*y(1)];

A(3,:)=[X(2),Y(2),1,0,0,0,-1*X(2)*x(2),-1*Y(2)*x(2)];
A(4,:)=[0,0,0,X(2),Y(2),1,-1*X(2)*y(2),-1*Y(2)*y(2)];

A(5,:)=[X(3),Y(3),1,0,0,0,-1*X(3)*x(3),-1*Y(3)*x(3)];
A(6,:)=[0,0,0,X(3),Y(3),1,-1*X(3)*y(3),-1*Y(3)*y(3)];

A(7,:)=[X(4),Y(4),1,0,0,0,-1*X(4)*x(4),-1*Y(4)*x(4)];
A(8,:)=[0,0,0,X(4),Y(4),1,-1*X(4)*y(4),-1*Y(4)*y(4)];

v=[x(1);y(1);x(2);y(2);x(3);y(3);x(4);y(4)];

u=A\v;
%which reshape

U=reshape([u;1],3,3)';

w=U*[X';Y';ones(1,4)];
w=w./(ones(3,1)*w(3,:));

% d)
%which maketform
T=maketform('projective',U');

%which imtransform
P2=imtransform(GR,T,'XData',[1 210],'YData',[1 297]);
P2=imresize(P2,[250 250]);
figure
imshow(P2);
hold on;
[w_P2 h_P2]=size(P2);
x_P2=1:int16(h_P2/9):h_P2;
if(size(x_P2,2)==9)
    x_P2=[x_P2 h_P2];
end
y_P2=1:int16(w_P2/9):w_P2;

if(size(y_P2,2)==9)
    y_P2=[y_P2 w_P2];
end
% for k=1:1:10;
%  plot([x_P2(k) x_P2(k)],[y_P2(1) y_P2(10)],'r','linewidth',3);
% plot(x_P2(k), y_P2(1),'*');
%  plot([x_P2(1) x_P2(10)],[y_P2(k) y_P2(k)],'r','linewidth',3);
% end
temp=y_P2;
y_P2=x_P2;
x_P2=temp;
% imtool(P2);
p_x=[2 1 1 1 8 8 9 4 2];
p_y=[1 5 2 8 6 1 2 1 3];
for k=9:-1:1
    for eee=9:-1:1
    t=P2(x_P2(k):x_P2(k+1),y_P2(eee):y_P2(eee+1));
    bwt=~adaptivethreshold(t,12,0.05,0);
    % imtool(bwt);
    %     bwt=imresize(bwt,[25 25]);
    bwt=imclearborder(bwt);
    qwww=bwlabel(bwt);
    n_blob=regionprops(qwww,'Area','Centroid','BoundingBox');
    n_allAreas = [n_blob.Area];
    dist=[];
    temp=[n_blob.Centroid];
    for i=1:1:size(n_blob,1);
        dist(i)=(temp(2*i-1)-13)^2+(temp(2*i)-13)^2;
    end
    [~,ind]=min(dist);
    [n_sortedAreas, n_sortIndexes] = sort(n_allAreas, 'descend');
    if(isempty(n_sortedAreas))
        continue;
    end
    if(n_sortedAreas(1)<50)
        continue;
    end
    n_biggestBlob = ismember(qwww,ind);
    %     n_biggestBlob=imresize(n_biggestBlob,[25 25]);
    n_binaryImage = n_biggestBlob > 0;
    bbox=reshape([n_blob.BoundingBox],4,[]).';
    finalBB=floor(bbox(ind,:));
    n_binaryImage=qwww(finalBB(2):finalBB(2)+finalBB(4), finalBB(1):finalBB(1)+finalBB(3));
    n_binaryImage=imresize(n_binaryImage,[25 25]);
    
    [num confiden]=detect_digit(n_binaryImage,finalBB,qwww,temp1,temp2);
    sudd(k,eee)=num;
    
    %     imtool(n_binaryImage);
    % imtool(bwt);
    % imtool(bwt);
    end
end
solve_sudoku(sudd,P2);



