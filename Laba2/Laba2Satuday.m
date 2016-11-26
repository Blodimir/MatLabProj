clear all; clc;
t=0.7; %шаг
W=1000; %колво точек по Х
for h=1:3 %для отрисовки нескольких плот
z(1)=0;%По Эйлеру - первые будут =0
y(1)=0;
%b=cos(0.1:t:10)+2;
%plot(b);
for i=1:W %вход
   x(i)=cos(0.1*i*t)+2;
end
%plot(x);
for k=2:W %вычисляем
   z(k)=z(k-1)+(x(k-1)-sqrt(2)*z(k-1)-y(k-1))*t;
   y(k)=y(k-1)+z(k-1)*t;
end
%subplot(3,1,h);
plot((1:W)*t,y);
hold on;
W=W*10;
t=t/10;
end
