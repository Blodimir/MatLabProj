clear all;
x=imshow('warp.jpg');
w = getimage;
q=0; %z=zeros(250,1250,3);
for i=1:1:250
    for j=1:1:1000 
        w=j;
         for k=1:1:3 
             if (w+q)>1000
               w=-q;
             end
             z(i,j,k) = w(i,w+q,k);
         end
    end
    if mod(i,5)==0
     q=q+5;
    end
end
z=rot90(z);
subimage(z);