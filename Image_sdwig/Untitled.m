clear all;
x=imshow('warp.jpg');
w = getimage;
q=0; %z=zeros(250,1250,3);
for i=1:1:250
    for j=1:1:750 
        e=j;
         for k=1:1:3 
             %if (e+q)>1000
            %   e=-q;
            % end
            b=e+q;
             z(i,j,k) = w(i,b,k);
         end
    end
    if mod(i,8)==0
     q=q+8;
    end
end
%z=rot90(z);
subimage(z);