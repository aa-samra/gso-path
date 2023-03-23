function plotbest(SS,j)
global A xs ys xt yt xobs yobs robs J A_init best
% SS=A(best,:);
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

figure(1)
    theta=linspace(0,2*pi,100);
    for k=1:numel(xobs)
        fill(xobs(k)+robs(k)*cos(theta),yobs(k)+robs(k)*sin(theta),[0.5 0.7 0.8]);
        hold on;
    end
    plot(xx,yy,'k','LineWidth',2);
    plot(XS,YS,'ro');
    plot(xs,ys,'bs','MarkerSize',12,'MarkerFaceColor','y');
    plot(xt,yt,'kp','MarkerSize',16,'MarkerFaceColor','g');
    text(5,5,num2str(j),'FontSize',25)
    hold off;
%     grid on;
    axis equal;
end