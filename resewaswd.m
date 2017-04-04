bbox=reshape([n_blob.BoundingBox],4,[]).';
finalBB=floor(bbox(ind,:));
n_binaryImage=qwww(finalBB(2):finalBB(2)+finalBB(4), finalBB(1):finalBB(1)+finalBB(3));
figure;
subplot(1,2,1);
imshow(qwww);
subplot(1,2,2);
imshow(n_binaryImage);