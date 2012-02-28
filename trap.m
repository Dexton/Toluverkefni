function [ tr ] = trap( f, a, b )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    syms x;
    tr = (subs(f,x,a)+subs(f,x,b))*(b-a)/2;
end

