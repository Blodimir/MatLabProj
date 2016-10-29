N=52;
f = cos(2*pi/N*(0:N-1)*5);
l =(cos(2*pi/N*(0:N-1)*10)/3).^2;
n=(0:1:10).^2;
w=hamming(N);
%subplot(211);
%plot(f);%Отрисовка исходной функции
%subplot(212);
%hold off;
%plot(n);
%hold on 
%subplot(213);
%hold off;
plot(w);