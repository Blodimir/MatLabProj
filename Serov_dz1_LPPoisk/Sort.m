function T = Sort( T )
while T(1,1)~= max(T(:,1))
    s = size(T);
    T = REC(T,s(1));
end
s = size(T);
T = REC(T,s(1));
end