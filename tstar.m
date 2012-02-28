function [ bs ] = tstar( fx, fy, alength,s , tol )
%TSTAR Summary of this function goes here
%  Detailed explanation goes here
dfx = diff(fx);
dfy = diff(fy);
idfx = char(dfx);
idfy = char(dfy);
% h2 = inline('Heildi( sqrt((idfx)^2 + (idfy)^2) , 0 , x, 0.001)','x');
tmpstr = ['Heildi( sqrt((' idfx ')^2 + (' idfy ' )^2) , 0 , x, ' num2str(tol) ' ) ' '/' num2str(alength) '-' num2str(s)];
bs = bisect(inline(tmpstr,'x'), 0, 1, 0.000001);

end

