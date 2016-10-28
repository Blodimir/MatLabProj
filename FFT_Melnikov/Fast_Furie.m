function f = Fast_Furie(f_array)
 n = length(f_array);
 new_f_array = zeros(n);
 for i=1:n
    for j=1:n
        new_f_array(i)= new_f_array(i)+f_array(j)*exp(-1j*((2*pi())/n)*(i-1)*(j-1));
    end
 end
f=new_f_array;
end