CoreTbl = LPSORT(Tabl);
ParetoTbl = CoreTbl(:,4:5);%���������� ����� ������ (J1, J2)
hold on;
grid on;
title('���������������:');
plot([ 0 0 ],[ 0 3000 ]);
plot([ 0 2000 ],[ 0 0 ]);
plot(ParetoTbl(:,1),ParetoTbl(:,2),'.r');
xlabel('J1');
ylabel('J2');



