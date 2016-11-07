clear all;
x=imshow('warp.jpg');
w = getimage;
for i=0:8:249
    for j=1:1:1000
       for l=1:1:8
           for k=1:1:3
 z(i0+l + i/8*5,j,k) = w(i*8+l,j,k);
           end;
        end;
    end;
end;
subimage(z);