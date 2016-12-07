Q = LPPOSL(Q,M,N,10,80,20,60);
holdon;
gridon;
plot([ 0 0 ],[ 0 70 ]);
plot([ 0 90 ],[ 0 0 ]);
title('Линейное преобразование:');
plot(Q(:,1),Q(:,2),'*r');
xlabel('X1');
ylabel('X2');

function P = LPPOSL( Q,M,N,Xmin,Xmax,Ymin,Ymax )
min(1) = Xmin;
min(2) = Ymin;
max(1) = Xmax;
max(2) = Ymax;

P = zeros(M,N);
for I = 1:M
for J = 1:N
P(I,J) = min(J) + Q(I,J)*(max(J)-min(J));
end
end
end
