function Epart( fx, fy, a, n ,tol)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    syms x;
    p = [0:1/n:1];
    low = tstar(fx,fy,a,p(1),tol);
    for i = 1:n
        high = tstar(fx,fy,a,p(i+1),tol);
        t = [p(i):0.00001:p(i+1)];
        xinterval = subs(fx,x,t);
        yinterval = subs(fy,x,t);
        hold on;
        plot(xinterval,yinterval,'color',[rand,rand,rand]);
        hold on;
        plot(xinterval(1),yinterval(1),'o');
        low = high;
    end
end

