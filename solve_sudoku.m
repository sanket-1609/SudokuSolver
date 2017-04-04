function [ o ] = solve_sudoku( d_sud, im )
S=sodoku(d_sud);
c=7;
for iqz=1:9
    for jqz=1:9
       pos=[28*(jqz-1)+1+c 28*(iqz-1)+1+c-5];
       number=S(iqz,jqz);
        im=insertText(im,pos,number);        
    end      
end
imshow(im);
o=1;


