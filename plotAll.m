global A xs ys xt yt xobs yobs robs  n
figure;
theta=linspace(0,2*pi,100);
    for k=1:numel(xobs)
        fill(xobs(k)+robs(k)*cos(theta),yobs(k)+robs(k)*sin(theta),[0.5 0.7 0.8]);
        hold on;
    end
    
    plot(xs,ys,'bs','MarkerSize',12,'MarkerFaceColor','y');
    hold on;
    plot(xt,yt,'kp','MarkerSize',16,'MarkerFaceColor','g');
    hold on;
for i=1:n
SS=A(i,:);
x1=SS(1);
y1=SS(2);
x2=SS(3);
y2=SS(4);
x3=SS(5);
y3=SS(6);
XS=[xs x1 x2 x3 xt];
YS=[ys y1 y2 y3 yt];
k=numel(XS);
TS=linspace(0,1,k);

tt=linspace(0,1,100);
xx=spline(TS,XS,tt);
yy=spline(TS,YS,tt);
    
    plot(xx,yy,'k','LineWidth',1);

    hold on;
%     grid on;
    xlim ([-1 6]);
    ylim ([0 7]);
end