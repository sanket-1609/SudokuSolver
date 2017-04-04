function [ n conf ] = detect_digit(bin_image,fin_bb,qwwww,temp1,temp2 )
bin_image=qwwww(fin_bb(2):fin_bb(2)+fin_bb(4), fin_bb(1):fin_bb(1)+fin_bb(3));
bin_image=imresize(bin_image,[25 25]);
    oppp=[];
    opppp=[];
%     yup
    for i=1:9
        oppp=[corr2(temp1{i},bin_image) oppp];
        opppp=[corr2(temp2{i},bin_image) opppp];
    end
%     oppp
%     opppp
[a i_a]=max(oppp);
[b i_b]=max(opppp);
if(max(a,b)<0.6)
    n=0;
    conf=0.5;
    imtool(bin_image);
    return
end
if(i_a==i_b)
    n=i_a;
    conf=1;
else
%     disp('Doubt');
%     oppp
%     opppp
    conf=0;
    if (a>b)
        n=i_a;
    else
        n=i_b;
    end
end
end

