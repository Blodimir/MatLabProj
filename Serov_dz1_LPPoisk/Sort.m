CoreTbl = LPSORT(Tabl);
ParetoTbl = CoreTbl(:,4:5);%Координаты точек Парето (J1, J2)
holdon;
gridon;
title('МножествоПарето:');
plot([ 0 0 ],[ 0 3000 ]);
plot([ 0 2000 ],[ 0 0 ]);
plot(ParetoTbl(:,1),ParetoTbl(:,2),'*r');
xlabel('J1');
ylabel('J2');

function T = Sort( T )
while T(1,1)~= max(T(:,1))
    s = size(T);
    T = REC(T,s(1));
end
s = size(T);
T = REC(T,s(1));
end
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
