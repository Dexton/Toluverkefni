function [ lengd ] = arch( fx, fy, a , b, tol )
%ARCH Summary of this function goes here
%   Detailed explanation goes here
dfx = diff(fx);
dfy = diff(fy);
f = sqrt((dfx)^2 + (dfy)^2);
lengd = Heildi( f , a , b, tol);
end

