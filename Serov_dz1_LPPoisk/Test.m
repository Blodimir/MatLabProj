figure;
Tabl = zeros(M,5); %Таблица испытаний
F1 = f1(Q,M);%Тестовая задача J1
F2 = f2(Q,M);%Тестовая задача J2
for i = 1:M
Tabl(i,1) = i;
Tabl(i,2) = Q(i,1);%x1
Tabl(i,3) = Q(i,2);%x2
Tabl(i,4) = F1(i);%J1
Tabl(i,5) = F2(i);%J2
end
title('Областьзначений:');
holdon;
gridon;
plot(Tabl(:,4),Tabl(:,5),'*r');
xlabel('J1');
ylabel('J2');
figure;

function F = f1( P,M )
F = zeros(M,1);
for i = 1:M
F(i) = 0.2*(P(i,1)-70)^2+0.8*(P(i,2)-20)^2;
end
end

function F = f2( P,M )
F = zeros(M,1);
for i = 1:M
F(i) = 0.2*(P(i,1)-10)^2+0.8*(P(i,2)-70)^2;
end
end
