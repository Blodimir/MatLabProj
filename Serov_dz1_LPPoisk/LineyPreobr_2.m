Q = LPPOSL(Q,M,N,10,80,20,60);
hold on;
grid on;
plot([ 0 0 ],[ 0 70 ]);
plot([ 0 90 ],[ 0 0 ]);
title('Линейное преобразование:');
plot(Q(:,1),Q(:,2),'.r');
%xlabel('X1');
%ylabel('X2');

