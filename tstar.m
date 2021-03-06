function [ bs ] = tstar( fx, fy, alength,s , tol)
%TSTAR Summary of this function goes here
%  Detailed explanation goes here

if s<tol
    bs = 0;
    return;
end
syms x t a;
%idfx = char(dfx);
%idfy = char(dfy);
% h2 = inline('Heildi( sqrt((idfx)^2 + (idfy)^2) , 0 , x, 0.001)','x');
% tmpstr = ['Heildi( sqrt((' idfx ')^2 + (' idfy ' )^2) , 0 , x, ' num2str(tol) ' ) ' '/' num2str(alength) '-' num2str(s)];
f = @(t)(arch(fx,fy,0,t,tol)/alength-s);
dfx = diff(fx);
dfy = diff(fy);
df = ((sqrt(dfx^2+dfy^2))/(a));
sdf = subs(df,a,alength);
bs = sym_newton(f, sdf, 1 , tol);
%bs = sym_bisect(f,0,1,0.001);

end

