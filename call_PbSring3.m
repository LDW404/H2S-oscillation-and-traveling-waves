function [l, y] = call_PbSring3()
clear all; close all; clc
hold all
tspan=[0:0.04:20]; y1_0=3; y2_0=0.3; y3_0 = 0.1;y4_0=0.3; y5_0 = 0.1;
[l,y]= ode45(@PbSring3, tspan, [y1_0 y2_0 y3_0 y4_0 y5_0]);

figure (1)
hold on
plot(l,y(:,1), 'LineWidth',1.5);
plot(l,y(:,2), 'LineWidth',1.5);
plot(l,y(:,3), 'LineWidth',1.5);
plot(l,y(:,4), 'LineWidth',1.5);
plot(l,y(:,5), 'LineWidth',1.5);
xlabel('Radius distance (mm)')
ylabel('Cell, H_2S, Methionine, Pb^{2+}, PbS (AU)')
legend({'Cell','H_2S','Methionine','Pb^{2+}','PbS'},'NumColumns',2);
set(gca,'FontWeight','bold');
legend box off;

figure (2)
for theta=-pi:pi/72:pi

plot3(l'*cos(theta),l'*sin(theta), y(:,5)')
hold on;
end
xlabel('Radius (mm)')
ylabel('Radius (mm)')
zlabel('PbS level')
set(gca,'FontWeight','bold')
hold off

end
