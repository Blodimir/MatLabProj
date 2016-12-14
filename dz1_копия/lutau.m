clear all
NR = [
1, 1, 1, 1, 1, 1, 1, 1, 1, 1;
1, 3, 5, 15, 17, 51, 85, 255, 257, 771;
1, 1, 7, 11, 13, 61, 67, 79, 465, 721;
1, 3, 7, 5, 7, 43, 49, 147, 439, 1013;
1, 1, 5, 3, 15, 51, 125, 141, 177, 759;
1, 3, 1, 1, 9, 59, 25, 89, 321, 835;
1, 1, 3, 7, 31, 47, 109, 173, 181, 949; 
1, 3, 3, 9, 9, 57, 43, 43, 225, 113;
];
n=2;
q = [];
count=100;
table=zeros(2,count);
qq=zeros(2,count);

%subplot(211);
for i=1:count
   q(i) = lptau(NR,i,n);
   q(1) = q(1);
   q(2) = q(2);
   qq(1,i) = q(1);
   qq(2,i) = q(2);
   
   table(1,i) = f1(q(1),q(2));
   table(2,i) = f2(q(1),q(2));
end

table = sortrows(table');
pareto = markBad(table);

for i=1:count
    plot(qq(1,i),qq(2,i),'.','MarkerSize',5);
    hold on
end

figure
for i=1:count
    
   plot(table(i,1),table(i,2),'.','MarkerSize',5);
   hold on
end
k = length(pareto);
hold on
plot(pareto(1:k,1),pareto(1:k,2),'LineWidth',1);

