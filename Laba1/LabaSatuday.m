clear all; clc;
n=128;
a(1:25)=1;
a(34:96)=0;
a(105:n)=1;%�������� ������, ������� 1, ����� 0, ����� 1
%�����, ����� ������ ����� � 1 ���� � �����, � 2 ����� - �-1

%f=fopen('x.dat','r');
for i=2:2:n %� ����� �������� ������ ������ ������� �� -1
    b(i-1)=a(i-1); %��� �������� ��� ����������, ��� ��������� �����
    b(i)=a(i)*(-1);%������ ��������� � ������������������ ����� � ������
end 

hn=ifft(b);% ���������� �������������� ������� -hn
%plot(b);
Hk=fft(hn,n*2); %�������������� ����� � ����������� ���������(����� ������, ��� ������)
%plot(abs(Hk));
w=hamming(n);%������� ��������, "����", �� ���� �� ������� ���������� ���-��
%for i=1:n
%g(i)=hn(i)*w(i);%���������
%end
hn=hn(:);
hn = hn .* w;%���������� ������
%����� ������ ��������� ������

hnn = fft(hn,n*2);%����� ����������� ��� � ��������� ��������������
%hold off
%plot(abs(Hk));
%hold on;
%plot(abs(hn));
%������ ������
f = fopen('x.dat','r') ; %��������� ����
x = fread( f, 'double') ;
fclose(f) ;
k=length(x);
Y=zeros(length(x),1);

for i=length(hn)+1:length(x)
    
for j=0:length(hn)-1
  Y(i)=Y(i)+hn(j+1)*x(i-j);
end
end
plot(Y);
sound(Y,32000);
%�� ����� �������� ������, �������� ���� ����� � ������ ��������
%� ���� - � �������. �������� ��������� ������������� ����


