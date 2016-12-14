

function F = f2( P,M )
F = zeros(M,1);
for i = 1:M
F(i) = 0.2*(P(i,1)-10)^2+0.8*(P(i,2)-70)^2;
end
end