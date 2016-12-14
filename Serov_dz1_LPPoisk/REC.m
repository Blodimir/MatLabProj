function out = REC(T,M)
out = zeros(1,5);
a = 0;
for i = 2:M
if T(i,4)<=T(1,4) || T(i,5)<=T(1,5)
out(a+1,:) = T(i,:);
        a = a+1;
end
end
out(a+1,:) = T(1,:);
end