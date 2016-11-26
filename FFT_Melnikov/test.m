clear all;
N=52; m=3;

si=cos(2*pi/1:0.1:N);

f = cos(2*pi/N*(0:N-1)*5);
l =(cos(2*pi/N*(0:N-1)*10)/3).^2;
n=(0:1:10).^2;
w=hamming(N);
subplot(211);
plot(si);%Отрисовка исходной функции
%subplot(212);
%hold off;
%plot(n);
%hold on 
subplot(212);
%hold off;
plot(w);