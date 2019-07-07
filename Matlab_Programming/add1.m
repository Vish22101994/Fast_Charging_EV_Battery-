function y=add1(n)

persistent a

global X_t
dataType= 'double';


X_t=0;
if isempty(a)
    a=0;
end

y = n + X_t + a;
a=a+1;


end