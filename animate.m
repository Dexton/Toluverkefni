function  animate(fx ,fy)
%ANIMATE Summary of this function goes here
%   Detailed explanation goes here
n = 10
syms x;
t = [0:1/n:1]
xinterval = subs(fx,x,t);
yinterval = subs(fy,x,t);
plot(xinterval,yinterval);
clear x;
clear y;
set(gca,'XLim',[0 2],'YLim',[0 2],'Drawmode','fast',...
     'Visible','on');

axis square
ball = line('color','r','Marker','o','MarkerSize',10,...
     'LineWidth',2,'erase','xor','xdata',[],'ydata',[]);
hx0=.005;hy0=.0039;hx=hx0;hy=hy0;
xl=.02;xr=.98;yb=xl;yt=xr;x=.1;y=.1;
a = arch(fx,fy,0,1,0.001);
for j = 1:n
    t(j) = tstar(fx,fy,a,t(j),0.001);
end
syms x;
xinterval = subs(fx,x,t);
yinterval = subs(fy,x,t);
clear x;
for i = 1:n
    x = xinterval(i);
    y = yinterval(i);
    disp(x);
    disp(y);
    set(ball,'xdata',x,'ydata',y);drawnow;pause(0.1);

end
