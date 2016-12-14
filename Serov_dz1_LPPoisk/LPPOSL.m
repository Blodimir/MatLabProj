
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