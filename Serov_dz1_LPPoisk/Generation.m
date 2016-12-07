clc;
clear;
%числители направляющих чисел
NR = [  1 1 1 1 1 1 1 1 1 1
        1 3 5 15 17 51 85 255 257 771
        1 1 7 11 13 61 67 79 465 721
        1 3 7 5 7 43 49 147 439 1013
        1 1 5 3 15 51 125 141 177 759
        1 3 1 1 9 59 25 89 321 835
        1 1 3 7 31 47 109 173 181 949
        1 3 3 9 9 57 43 43 255 113];   

N = 2; %размерность
M = 800; %кол-во точек
Q = zeros(M,N);
for I = 1:1:M
Q(I,:) = LPTAU(NR,I,N);
end
plot(Q(:,1),Q(:,2),'*r');
xlabel('X1');
ylabel('X2');
title('Сгенерированныеточки:');
figure;

function Q = LPTAU(NR,I,N)
A = I;%номерточки
M = 1 + fix(log(A)/0.693147);
for J = 1:1:N
    S = 0;
for K = 1:1:M
        NS = 0;
for L = K:1:M
            B = NR(J,L);
            NS = NS + fix(2*D(A/2^L))*fix(2*D(B/2^(L+1-K)));
end
        S = S+D(0.5*NS)/2^(K-1);
end
Q(J) = S;%напр. точек
end
end
function out = D(X)
out  = X - fix(X);
end
