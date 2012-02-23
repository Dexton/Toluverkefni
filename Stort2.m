f = inline('x^2');
a = 5;
b = 10;
tol = 0.00001;
ezplot(f,[a-1,b+1]);
Heildi(f,a,b,tol);
