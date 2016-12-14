function f = lptau(NR,i,n)
 %a=i;
 m=1+floor(log(i)/0.693147);
 q=zeros(n,1);
 ns=0;
 for j=1:n
    s=0;
    for k=1:m
        ns=0;
        for l=k:m
           b = NR(j,l);
           ns = ns + floor(2*D(i/(2^l)))*floor(2*D(b/(2^(l+1-k))));
        end
        s = s + D(0.5*ns)/(2^(k-1));
    end
    q(j) = s;
    
 end
 f = q;
 
end