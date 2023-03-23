
theta=linspace(0,2*pi,100);
    for k=1:numel(xobs)
        fill(xobs(k)+robs(k)*cos(theta),yobs(k)+robs(k)*sin(theta),[0.5 0.7 0.8]);
        hold on;
    end
plot(xs,ys,'bs','MarkerSize',12,'MarkerFaceColor','y');
plot(xt,yt,'kp','MarkerSize',16,'MarkerFaceColor','g');
xlim ([0 6]);
ylim ([0 7]);
axis equal;