clear all;
x=imshow('warp.jpg');
w = getimage;
q=0; 
e=0; 
%z=zeros(250,1000,3);
for i=1:1:250
    for j=1:1:1000 
        %e=j;
         for k=1:1:3 
            if (j+q)>1000
               e=-q;
            end
            if j<=1000-q 
             z(i,j,k) = w(i,j+q,k);
            end
            if j>1000-q 
             z(i,j,k) = w(i,j-1000+q,k);
            end 
         end
    end
    if mod(i,8)==0
     q=q+8;
    end
end
%z=rot90(z);
subimage(z);