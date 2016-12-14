function F = f1( P,M )
F = zeros(M,1);
for i = 1:M
F(i) = 0.2*(P(i,1)-70)^2+0.8*(P(i,2)-20)^2;
end
end