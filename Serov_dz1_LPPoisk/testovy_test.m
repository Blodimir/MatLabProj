clear;
%rng default  % For reproducibility
%p=haltonset(2,'Skip',1e3,'Leap',1e2)
p=haltonset(2,'skip',4);
%p=scramble(p,'RR2')
X0 = p(1:500,:);
hold on;
scatter(X0(:,1),X0(:,2),5,'r')
axis square
title('{\bf Quasi-Random Scatter}')