function [ lengd ] = arch( fx, fy, a , b, tol )
%ARCH Summary of this function goes here
%   Detailed explanation goes here
dfx = diff(fx);
dfy = diff(fy);
lengd = Heildi( sqrt((dfx)^2 + (dfy)^2) , a , b, tol);
end

