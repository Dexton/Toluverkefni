clear;
clc;
clf;

t = cputime;

% disp('x^2 tol=0.01');
% syms x;
% f = x^2;
% a = 0;
% b = 5;
% tol = 0.01;
% ezplot(f,[a-1,b+1]);
% Heildi(f,a,b,tol)
% 
% disp('Sin(x2^) tol=0.01');
% syms x;
% f = sin(x^2);
% a = 0;
% b = 5;
% tol = 0.01;
% figure;
% ezplot(f,[a-1,b+1]);
% Heildi(f,a,b,tol)
% 
% disp('x^2 tol=0.001');
% syms x;
% f = x^2;
% a = 0;
% b = 5;
% tol = 0.001;
% figure;
% ezplot(f,[a-1,b+1]);
% Heildi(f,a,b,tol)
% % 
% % disp('Sin(x2^) tol=0.00001');
% % syms x;
% % f = sin(x^2);
% % a = 0;
% % b = 5;
% % tol = 0.000001;
% % figure;
% % ezplot(f,[a-1,b+1]);
% % Heildi(f,a,b,tol)
% % 
% % disp('x^2 tol=0.000001');
% % syms x;
% % f = x^2;
%    % a = 0;
% % b = 5;
% % tol = 0.000001;
% % figure;
% % ezplot(f,[a-1,b+1]);
% % Heildi(f,a,b,tol)
% % 
% % disp('Sin(x2^) tol=0.01');
% % syms x;
% % f = sin(x^2);
% % a = 0;
% % b = 5;
% % tol = 0.000001;
% % figure;
% % ezplot(f,[a-1,b+1]);
% % Heildi(f,a,b,tol)

%t = [0:0.001:1];
syms x;
fx = 0.5 + 0.3*x + 3.9*x^2 - 4.7*x^3;
fy = 1.5 + 0.3*x + 0.9*x^2 - 2.7*x^3;
%fx = x^2;
%fy = x^2;
%m = subs(fx,x,t);
%n = subs(fy,x,t);
%a = arch(fx, fy, 0, 1, 0.001);

%EPart(fx,fy,a,4,0.001);
animate(fx,fy)
e = cputime-t
