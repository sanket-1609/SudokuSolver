function S = sodoku(M,S)
if ~exist('S')
    S = zeros([size(M),0]);
end
firstId = min(find(M(:)==0));
if isempty(firstId)  
    S(:,:,size(S,3)+1) = M;
else 
    [i,j] = ind2sub([9,9],firstId);
    for k=1:9 
        ii = (ceil(i/3)-1)*3+1;
        jj = (ceil(j/3)-1)*3+1;
        mm = M(ii:ii+2,jj:jj+2);
        if sum(M(i,:)==k)==0 & sum(M(:,j)==k)==0 & sum(mm(:)==k)==0 
            M(i,j) = k; 
            S = sodoku(M,S);
        end
    end
end

