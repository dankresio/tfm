function MountainCarPlot( x, a, steps )

set(gco,'BackingStore','off')  % for realtime inverse kinematics
set(gco,'Units','data')
xplot =-1.6:0.05:0.6;
yplot =sin(3*xplot);

% Mountain
h = area(xplot,yplot,-1.1);   
set(h,'FaceColor',[.1 .7 .1])
hold on

% Car  [1 .7 .1]
plot([x(1)-0.075 x(1)+0.075] ,[sin(3*(x(1)-0.075))+0.2  sin(3*(x(1)+0.075))+0.2 ],'-','LineWidth',10,'Color',[1 .7 .1]);

% Wheels
plot(x(1)-0.05,sin(3*(x(1)-0.05))+0.06,'ok','markersize',12,'MarkerFaceColor',[.5 .5 .5]);
plot(x(1)+0.05,sin(3*(x(1)+0.05))+0.06,'ok','markersize',12,'MarkerFaceColor',[.5 .5 .5]);

% Goal
plot(0.45,sin(3*0.5)+0.1,'-pk','markersize',15,'MarkerFaceColor',[1 .7 .1]);
% direction of the force
if (a<0)
      plot(x(1)-0.08-0.05,sin(3*(x(1)-0.05))+0.2,'<k','MarkerFaceColor','g','markersize',10);
elseif (a>0)
      plot(x(1)+0.08+0.05,sin(3*(x(1)+0.05))+0.2,'>k','MarkerFaceColor','g','markersize',10);
end

title(strcat ('Step: ',int2str(steps)));
%-----------------------
axis([-1.6 0.6 -1.1 1.5]);
drawnow
hold off