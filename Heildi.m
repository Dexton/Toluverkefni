function [ heild ] = Heildi( f, a, b, tol)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    syms x;
    c = (a+b)/2;
    %disp(['f: ' f 'a: ' a 'b: ' b 'tol: ' tol]);
    if((abs(trap(f,a,b)-trap(f,a,c)-trap(f,c,b)) < 3*tol) || (tol < 0.00001))
        heild = trap(f,a,b);
        %hold on;
        % plot([a,a,b,b],[0,subs(f,x,a),subs(f,x,b),0],'red');
    else
        x = Heildi(f,a,c,tol-1);
        y = Heildi(f,c,b,tol-1);
        heild = x + y;
    end
end

