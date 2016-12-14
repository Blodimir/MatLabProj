figure;
hold on;
x=0:1:80; y=x;

[X, Y] = meshgrid(x,y); %Массивкоординатузлов
for i=1:81
for j=1:81
J1(i,j)= 0.2*(X(i,j)-70)^2+0.8*(Y(i,j)-20)^2;
J2(i,j)=0.2*(X(i,j)-10)^2+0.8*(Y(i,j)-70)^2;
end
end
n=30;
title('Линииуровня');
contour(X, Y, J1,n,'*b')
contour(X, Y, J2,n,'*r')
ParetoTbxy=CoreTbl(:,2:3);
grid on;
plot(ParetoTbxy(:,1),ParetoTbxy(:,2),'.k');
xlabel('X1');
ylabel('X2');
