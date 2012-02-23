function [ tr ] = trap( f, a, b )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    hold on;
    plot([a,a,b,b],[0,f(a),f(b),0]);
    tr = (f(a)+f(b))*(b-a)/2;
end

