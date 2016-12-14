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
